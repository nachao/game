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
function getUserSelect ( callback ) {
	$('#select a').removeClass('act');
	if ( field && user ) {
		ajax({
			key: 'get_user_select',
			tag: field.id,
			uid: user.name
		}, function ( key ) {
			if ( key ) {
				$('#select a[sid='+ key +']').addClass('act');
			}
		});
	}
}

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
			// console.log(data);
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
		token: user.token
	}, function(data){
		// callback ? callback(data) : null;
		var template = $('#changeModeTemplate');

		console.log(data);

		// $('#changeMode').append();
	})
}

// 添加用户兑换方式
function setChangeMode ( type, account, name ) {

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

	if ( value ) {
		info = info[value];
	}

	return info;
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
			uid: this.info('token')
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

	setTimeout(function(){
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

		// 刷新界面用户信息
		} else {
			$('#info').show();
			$('#cc').show();
			$('#score').html(data.score);
			setCookie('FFL_key', data.key, data.valid);		// 保存用户登录钥匙
		}
	}
}


/*
*  设置兑换方式
*
*  @public  
*/
User.prototype.setChangeMode = function ( type, account, name ) {
	ajax({
		key: 'set_user_changeMode',
		token: this.info('token'),
		type: type,
		account: account,
		name: name
	}, function(data){
		var template = $('#changeModeTemplate');

		console.log(data);

		// $('#changeMode').append();
	});
}

// 获取用户信息，根据名称
User.prototype.getUserByName = function ( name, callback ) {
	var that = this;
	ajax({
		key: 'get_user_byname',
		name: name,
		token: that.info('token')
	}, function(data, param){
		console.log(data);
		if ( data.status ) {
			that.setInfo(data.user);	// 更新本地用户数据
			that.setUserUI();
			that.getUserSelect();
			// getChangeMode(data.user);
		}
		callback ? callback(data) : null;
	});
}

// 获取用户信息，根据钥匙
User.prototype.getUserByKey = function ( key, callback ) {
	ajax({
		key: 'get_user_bykey',
		code: key
	}, function(data, param){
		// console.log(data);
		if ( data.status ) {
			that.setInfo(data.user);	// 更新本地用户数据
			that.setUserUI();
			that.getUserSelect();
			// getChangeMode(data.user);

			that.setUserRefresh();
		}
		callback ? callback(data) : null;
	});
}