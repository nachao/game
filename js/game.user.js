
/*
*  用户
*  说明：方法类型分为：get,set,update,delete，注释：获取本地数据get是去掉的，
*
*  @public  
*/
function User () {

	this.param_ = {
		token: '',		// 用户唯一标示
		name: '',		// 用户名称
		score: 0,		// 用户积分

		mode: [],		// 兑换方式

		key: '',		// 缓存钥匙
		valid: 0		// 刷新缓存钥匙的时间间隔（秒）
	};

	this.refresh_ = null;	// 是否开启了刷新用户登录钥匙
}


/*
*  设置用户基本信息
*
*  @param {object| string|number|null} = value 需要替换的参数
*  @param {string} key = 需要替换的参数的键值，选填
*  @public  
*/
User.prototype.setInfo = function ( value, key ) {

	if ( key && $.type(key) == 'string' ) {
		this.param_[key] = value;

	} else {
		this.param_ = value;
	}
}


/*
*  获取用户基本信息
*
*  @public  
*/
User.prototype.info = function ( value ) {
	var info = this.param_;

	if ( info && value ) {
		value = info[value] || '';
	} else {
		value = info;
	}

	return value;
}


/*
*  获取缓存钥匙，如果有钥匙则获取用户信息
*
*  @public  
*/
User.prototype.init = function ( callback ) {
	// 初始化进入界面，获取缓存中的登录账户钥匙
	var key = getCookie('FFL_key');
	console.log(key);
	if ( key ) {
		this.getUserByKey(key, function(data){
			callback ? callback(data) : null;
		});
	}
}


/*
*  每分钟刷新一次用户登录缓存钥匙
*
*  @public  
*/
User.prototype.a = function ( param, callback ) {
	ajax('./ajax/ajax.user.php', param, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  每分钟刷新一次用户登录缓存钥匙
*
*  @public  
*/
User.prototype.setUserRefresh = function () {
	var that = this;
	clearTimeout(that.refresh_);
	that.refresh_ = setTimeout(function(){
		if ( that.info('token') ) {
			that.a({ 
				key: 'set_user_status',
				token: that.info('token')
			}, function(data){
				setCookie('FFL_key', data.key, data.valid);	// 保存用户的新登录钥匙
			});
		}
		that.setUserRefresh();
	}, 1000 * that.info('valid'));
}


/*
*  设置用户信息界面
*
*  @public  
*/
User.prototype.setUserUI = function () {
	var data = this.info();
	if ( data ) {

		// 账号正在被使用中
		if ( data.status == 0 ) {
			$('#info').hide();
			$('#cc').hide();
			$('#changeMode').hide();

		// 刷新界面用户信息
		} else {
			$('#info').show();
			$('#changeMode').show();
			$('#cc').show();
			$('#score').html(data.score);
			setCookie('FFL_key', data.key, data.valid);		// 保存用户登录钥匙
		}
	}
}


/*
*  设置用户界面积分显示
*
*  @param {number} value = 指定需要增或减的数值，可以是整数也可以是负数
*  @public  
*/
User.prototype.setUserScore = function ( value ) {
	value = value || 0;
	if ( !!this.info('token') )
	var number = this.info('score') + value;
	this.setInfo(number, 'score');
	$('#score').html(number);
}


/*
*  获取用户兑换方式
*
*  @public  
*/
User.prototype.getChangeMode = function () {
	var that = this;
	that.emptyChangeMode();
	that.a({
		key: 'get_user_changeMode',
		token: this.info('token')
	}, function(data){
		if ( data.status ) {
			var template = $('#changeModeTemplate');
			$(data.res).each(function(i, val){
				var temp = template.clone(false);
				temp.removeAttr('id').removeClass('act');
				temp = that.setChangeMode(temp, val);
				template.before(temp);
			});
			that.setInfo(data.res, 'mode');		// 保存用户的所有兑换方式
		}
	});
}


/*
*  显示用户兑换方式在编辑界面
*
*  @public  
*/
User.prototype.setChangeMode = function ( el, value ) {

	el.addClass('score-item-value').show().removeClass('act').find('span').html(value.name);
	el.data('val', value);
	if ( value.type == 1 ) {	// lol
		el.prop('title', '英雄联盟');
		el.find('i').addClass('icon-lol');
	}
	if ( value.type == 2 ) {	// 支付宝
		el.prop('title', '支付宝');
		el.find('i').addClass('icon-alipay');
	}

	// 是否有编辑界面
	if ( $('.score-edit').length ) {
		el.unbind('click').click(function(){
			if ( $(this).hasClass('act') ) {
				$(this).removeClass('act');
				$('.score-edit').hide();
			} else {
				$(this).addClass('act').siblings().removeClass('act');
				$('.score-edit').show();
				$('#score_del').show();
				$('#scoreEdit_account').val(value.account);
				$('#scoreEdit_name').val(value.name);
				$('#scoreEdit_type').val(value.type).attr('disabled', true);

				// lol
				if ( value.type == 1 ) {
					var option = $('#scoreLol_server option[value='+ value.remark +']').show().prop('selected', true).text();
					$('#scoreLol_server').show();
					$('#scoreLol_log').show().attr('href', 'http://lolbox.duowan.com/playerDetail.php?serverName='+ option +'&playerName='+ value.name);
				}

				// 支付宝
				if ( value.type == 2 ) {
					$('#scoreLol_log').hide();
					$('#scoreLol_server').hide();
				}
			}
		});
	}

	// 选择兑换方式
	if ( $('#scoreSelected').length ) {
		el.unbind('click').click(function(){
			if ( $(this).hasClass('act') ) {
				$(this).removeClass('act');
				$('#scoreSelected').val('');
			} else {
				$(this).addClass('act').siblings().removeClass('act');
				$('#scoreSelected').val(value.id);
			}
		});
	}

	return el;
}


/*
*  清空用户兑换方式列表
*
*  @public  
*/
User.prototype.emptyChangeMode = function () {
	$('.score-item-value:not(#changeModeTemplate)').remove();
}


/*
*  初始化用户兑换编辑界面
*
*  @public  
*/
User.prototype.initChangeMode = function () {
	$('#scoreEdit_account').val('');
	$('#scoreEdit_name').val('');
	$('#scoreEdit_type').val(1).prop('disabled', false);
	$('#scoreLol_server option[value=1]').prop('selected', true);
	$('#score_del').hide();
	$('#scoreLol_log').hide();
	// $('.score-edit').hide();
}


/*
*  添加兑换方式
*
*  @public  
*/
User.prototype.addChangeMode = function ( value, callback ) {
	value = value || {};
	this.a({
		key: 'set_user_changeMode',
		token: this.info('token'),
		type: value.type,
		account: value.account,
		name: value.name,
		remark: value.remark
	}, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  更新兑换方式
*
*  @public  
*/
User.prototype.updateChangeMode = function ( value, callback ) {
	value = value || {};
	this.a({
		key: 'set_user_changeMode',
		id: value.id,
		account: value.account,
		name: value.name,
		remark: value.remark
	}, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  删除兑换方式
*
*  @public  
*/
User.prototype.delChangeMode = function ( id, callback ) {
	this.a({
		key: 'delete_user_changeMode',
		id: id
	}, function(data){
		callback ? callback(data) : null;
	});
}


// 获取用户信息，根据名称
User.prototype.getUserByName = function ( name, callback ) {
	var that = this;
	this.a({
		_: 'get_user_byname',
		name: name,
		token: that.info('token')
	}, function(data, param){
		if ( data.status ) {
			that.setInfo(data.user);	// 刷新本地用户数据
			that.setUserUI();			// 刷新用户界面

			that.getChangeMode();		// 获取用户的全部兑换方式
			that.getWelfareDaily(function(data){		// 获取每日福利
				if ( data.status ) {
					that.setUserScore(data.number);
				}
			});
			that.getWelfareHangup();	// 开启挂机福利

			that.setUserRefresh();		// 开始刷新用户钥匙

			// that.getUserSelect();		// 获取用户之前的选择
		}
		callback ? callback(data) : null;
	});
}


// 获取用户信息，根据钥匙
User.prototype.getUserByKey = function ( key, callback ) {
	var that = this;
	this.a({
		key: 'get_user_bykey',
		code: key
	}, function(data, param){
		if ( data.status ) {
			that.setInfo(data.user);	// 刷新本地用户数据
			that.setUserUI();			// 刷新用户界面

			that.getChangeMode();		// 获取用户的全部兑换方式
			that.getWelfareDaily(function(data){		// 获取每日福利
				if ( data.status ) {
					that.setUserScore(data.number);
				}
			});
			that.getWelfareHangup();	// 开启挂机福利

			that.setUserRefresh();		// 开始刷新用户钥匙
			
			// that.getUserSelect();		// 获取用户之前的选择
		}
		callback ? callback(data) : null;
	});
}


/*
*  用户提示
*
*  @param {string} value = 需要提示的内容
*  @param {number} time = 提示显示时长，选填
*  @public  
*/
User.prototype.setTip = function ( value, time ) {
	time = time || 3000;
	var el = $('#msg'),	
		loop = el.data('loop');
	el.css({ display: 'inline-block' }).find('em').html(value);
	clearTimeout(loop);
	loop = setTimeout(function(){ el.hide(); }, time);
	el.data('loop', loop);
}


/*
*  用户领取每日福利
*
*  @public  
*/
User.prototype.getWelfareDaily = function ( callback ) {
	this.a({
		key: 'get_welfare_daily',
		token: this.info('token')
	}, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  用户领取挂机福利（三分钟+1）
*
*  @public  
*/
User.prototype.getWelfareHangup = function () {
	var that = this,
		interval = 60 * 3,
		key = 'FFL_Hangup_' + that.info('token'),
		time = getCookie(key) || interval;
	setTimeout(function(){
		if ( time > 0 ) {
			time -= 3;
			if ( time <= 0 ) {
				time = interval;
				that.a({
					key: 'get_welfare_hangup',
					token: that.info('token')
				}, function(data){
					that.setUserScore(data.number);
				});
			}
		}
		setCookie(key, time, 60);	// 离开页面超过一分钟则需要重新开始挂机
		that.getWelfareHangup();
	}, 3000);;
}