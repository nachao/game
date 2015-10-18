// 获取用户信息，根据名称
function getUserByName ( name, callback ) {
	var token = user ? user.token : '';
	ajax({
		key: 'get_user_byname',
		name: name,
		token: token
	}, function(data, param){
		callback ? callback(data) : null;
		// console.log(data);
	});
}

// 获取用户信息，根据钥匙
function getUserByKey ( key, callback ) {
	ajax({
		key: 'get_user_bykey',
		code: key
	}, function(data, param){
		callback ? callback(data) : null;
		// console.log(data);
	});
}

// 获取用户信息的本场选择
// function getUserSelect ( callback ) {
// 	$('#select a').removeClass('act');
// 	if ( field && user ) {
// 		ajax({
// 			key: 'get_user_select',
// 			tag: field.id,
// 			token: 1
// 		}, function ( key ) {
// 			if ( key ) {
// 				$('#select a[sid='+ key +']').addClass('act');
// 			}
// 		});
// 	}
// }

// 设置用户信息
function setUserUI ( data ) {
	if ( data ) {

		// 账号正在被使用中
		if ( data.status == 0 ) {
			$('#info').hide();
			$('#cc').hide();

		// 刷新界面用户信息
		} else {
			$('#info').show();
			$('#cc').show();
			$('#score').html(data.score);
			setCookie('FFL_key', data.key, data.valid);		// 保存用户登录钥匙
		}
	}
}

// 每分钟刷新一次用户登录状态
function setUserRefresh ( data ) {

	if ( user ) {

		// 发送账号当前活动状态
		ajax({ 
			key: 'set_user_status',
			uid: user.name
		}, function(data){
			setCookie('FFL_key', data.key, data.valid);	// 保存用户的新登录钥匙
		});
	}

	setTimeout(function(){
		setUserRefresh();
	}, 1000 * 60);
}

// 获取用户兑换方式
function getChangeMode ( user ) {
	ajax({
		key: 'get_user_changeMode',
		token: this.info('token')
	}, function(data){
		// callback ? callback(data) : null;
		var template = $('#changeModeTemplate');

		console.log(data);

		// $('#changeMode').append();
	})
}



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

		key: '',		// 缓存钥匙
		valid: 0		// 刷新缓存钥匙的时间间隔（秒）
	};

	this.refresh_ = null;	// 是否开启了每分钟刷新用户登录钥匙
}


/*
*  设置用户基本信息
*
*  @public  
*/
User.prototype.setInfo = function ( value ) {
	this.param_ = value;
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
*  获取用户信息的本场选择
*
*  @public  
*/
User.prototype.getUserSelect = function ( callback ) {
	$('#select a').removeClass('act');
	if ( field && this.info('token') ) {
		ajax({
			key: 'get_user_select',
			tag: field.id,
			token: this.info('token')
		}, function ( key ) {
			if ( key ) {
				$('#select a[sid='+ key +']').addClass('act');
			}
		});
	}
}


/*
*  每分钟刷新一次用户登录状态
*
*  @public  
*/
User.prototype.setUserRefresh = function () {
	var that = this;

	if ( this.info('token') ) {
		ajax({ 
			key: 'set_user_status',
			token: this.info('token')
		}, function(data){
			setCookie('FFL_key', data.key, data.valid);	// 保存用户的新登录钥匙
		});
	}

	clearTimeout(this.refresh_);
	this.refresh_ = setTimeout(function(){
		that.setUserRefresh();
	}, 1000 * 60);
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
*  获取用户兑换方式
*
*  @public  
*/
User.prototype.getChangeMode = function () {
	var that = this;
	that.emptyChangeMode();
	ajax({
		key: 'get_user_changeMode',
		token: this.info('token')
	}, function(data){
		if ( data.status ) {
			var template = $('#changeModeTemplate');
			$(data.res).each(function(i, val){
				var temp = template.clone();
				temp.removeAttr('id').removeClass('act');
				temp = that.setChangeMode(temp, val);
				template.before(temp);
			});
		}
	});
}


/*
*  显示用户兑换方式在编辑界面
*
*  @public  
*/
User.prototype.setChangeMode = function ( el, value ) {
	el.removeClass('act').find('span').html(value.name);
	el.data('val', value);
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
				var option = $('#scoreLol_server option[value='+ value.remark +']').prop('selected', true);
			}
		}
	});

	console.log(value);
	// lol
	if ( value.type == 1 ) {
		el.prop('title', '英雄联盟 - ' + $('#scoreLol_server option[value='+ value.remark +']').text());
		el.find('i').addClass('icon-lol');
	}

	// 支付宝
	if ( value.type == 2 ) {
		el.prop('title', '支付宝');
		el.find('i').addClass('icon-alipay');
	}

	return el;
}


/*
*  清空用户兑换方式列表
*
*  @public  
*/
User.prototype.emptyChangeMode = function () {
	$('#changeModeTemplate').siblings().remove();
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
	// $('.score-edit').hide();
}


/*
*  添加兑换方式
*
*  @public  
*/
User.prototype.addChangeMode = function ( value, callback ) {
	value = value || {};
	ajax({
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
	ajax({
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
	ajax({
		key: 'delete_user_changeMode',
		id: id
	}, function(data){
		callback ? callback(data) : null;
	});
}


// 获取用户信息，根据名称
User.prototype.getUserByName = function ( name, callback ) {
	var that = this;
	ajax({
		_: 'get_user_byname',
		name: name,
		token: that.info('token')
	}, function(data, param){
		if ( data.status ) {
			that.setInfo(data.user);	// 更新本地用户数据
			that.setUserUI();			// 刷新用户界面
			that.getUserSelect();		// 获取用户之前的选择
			that.setUserRefresh();		// 开始刷新用户钥匙

			that.getChangeMode();		// 获取用户的全部兑换方式
		}
		callback ? callback(data) : null;
	});
}

// 获取用户信息，根据钥匙
User.prototype.getUserByKey = function ( key, callback ) {
	var that = this;
	ajax({
		key: 'get_user_bykey',
		code: key
	}, function(data, param){
		if ( data.status ) {
			that.setInfo(data.user);	// 更新本地用户数据
			that.setUserUI();			// 刷新用户界面
			that.getUserSelect();		// 获取用户之前的选择
			that.setUserRefresh();		// 开始刷新用户钥匙

			that.getChangeMode();		// 获取用户的全部兑换方式
		}
		callback ? callback(data) : null;
	});
}