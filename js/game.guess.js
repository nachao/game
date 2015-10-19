


/*
*  瞎猜游戏
*  说明：方法类型分为：get,set,update,delete，注释：获取本地数据get是去掉的，
*
*  @public  
*/
function Guess () {

	this.field_ = null;	// 当前场信息

	this.title_ = '瞎猜';	// 名称


	// 获取用户信息
	this.user_ = new User();

}


/*
*  获取场信息
*
*  @public  
*/
Guess.prototype.info = function () {

}


/*
*  设置场信息
*
*  @public  
*/
Guess.prototype.setInfo = function ( value ) {
	this.field_ = value;
}


/*
*  启动
*
*  @public  
*/
Guess.prototype.go = function ( callback ) {

	var that = this,
		time = 1000;

	ajax({
		key: 'get_game_answer',
		token: this.user_.info('name')
	}, function(data){

		that.setInfo(data);

		var current = new Date().getTime() / 1000;


		// $('#aa').html(title + data.msg);

		// 选择
		if ( data.status == '1' ) {
			// if ( user ) {
			// 	$('#cc').show();
			// }

			var time = parseInt(data.end - current),
				min = 0,
				sec = time;
			if ( time / 60 > 0 ) {
				min = parseInt(time / 60);
				sec = time - (min*60);
				time = min + '分' + sec + '秒';
			} else {
				time = sec + '秒';
			}
			$('#bb span').html('剩余时间：' + time);

			// 输出选择情况
			var def = 30,
				size = 0;
			for ( var key in data.res ) {
				size = def + parseInt(data.res[key]);
				$('#select a[sid='+ key +']').animate({ height: size, width: size }).find('em').css({  }).html(data.res[key]);
			}

		// 公布答案
		} else if ( data.status == '2' ) {
			$('#aa').html(data.msg +'::'+ data.result);
			$('#cc').hide();
			$('#c').val('');
			$('#bb span').html('稍等，下一场准备中');

			if ( Number(data.get) ) {
				// setTip('获得'+ Number(data.get) + '分', 5000);
			} else {
				// setTip('很遗憾', 5000);
			}

			if ( user && Number(data.get) ) {
				user.score = Number(user.score) + Number(data.get);
				$('#score').html(user.score);
			}

		// 关闭中
		} else if ( data.status == '0' ) {
			$('#cc').hide();
			$('#bb span').html('每日早上10点开启');
		}

		callback ? callback(data) : null;
	});
	
	setTimeout(function(){ that.go(); }, time);
}


/*
*  获取用户信息的本场选择
*
*  @public  
*/
Guess.prototype.getCurrentSelect = function ( callback ) {
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
*  用户选择
*
*  @public  
*/
Guess.prototype.getSelect = function ( callback ) {
	if ( this.field_.status && this.user_.status ) {
		ajax({
			key: 'set_user_select',
			tag: field.id,
			token: user.token,
			select: $(this).attr('sid')
		}, function(data, param){
			callback ? callback(data) : null;
		});
	}
}
