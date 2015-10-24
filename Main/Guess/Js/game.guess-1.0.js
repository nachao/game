


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
*  指定获取数据的文件
*
*  @public  
*/
Guess.prototype.a = function ( param, callback ) {
	ajax('./ajax/ajax.guess.php', param, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  获取场信息
*
*  @public  
*/
Guess.prototype.info = function ( value ) {
	var info = this.field_;

	if ( info && value ) {
		value = info[value] || '';
	} else {
		value = info;
	}

	return value;
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
*  初始化界面及参数
*
*  @public  
*/
Guess.prototype.init = function ( callback ) {

	var that = this;

	that.a({
		key: 'get_game_answer',
		token: my.info('token')
	}, function(data){

		that.setInfo(data);

		var current = new Date().getTime() / 1000;

		// 选择
		if ( data.status == '1' ) {
			$('#aa').html(data.msg);
			that.downtime('剩余时间：', data.end, function(){
				that.init();
			});
			that.setOption(data.res);

		// 公布答案
		} else if ( data.status == '2' ) {
			$('#aa').html(data.msg +'::'+ data.result);
			$('#cc').hide();
			$('#c').val('');
			that.downtime('稍等，下一场准备中：', data.end, function(){
				that.init();
			});

			if ( Number(data.get) ) {
				my.setUserScore(Number(data.get));
			}

		// 关闭中
		} else if ( data.status == '0' ) {
			$('#cc').hide();
			$('#bb span').html('每日早上10点开启');
		}

		callback ? callback(data) : null;
	});
	
	// setTimeout(function(){ that.go(); }, time);
}


/*
*  刷新所有选项的值以及样式
*
*  @public  
*/
Guess.prototype.setOption = function ( value ) {

	// 输出选择情况
	var def = 30,
		size = 0,
		select = null;
	for ( var key in value ) {
		size = def + parseInt(value[key].total);
		select = $('#select a[sid='+ key +']').css({ height: size, width: size });
		select.find('span').html(value[key].my);
		select.find('em').html(value[key].total);

		if ( value[key].my > 0 ) {
			select.addClass('act');
		}
	}
}


/*
*  刷新制定选项的值以及样式
*
*  @public  
*/
Guess.prototype.setAppointOption = function ( sid, value ) {

	var el_a = $('#select a[sid='+ sid +']'),
		el_span = el_a.find('span'),
		el_em = el_a.find('em');

	var n_total = parseInt(el_em.html()) + value,
		n_my = parseInt(el_span.html()) + value;

	var def = 30,
		size = 0;

	size = def + n_total;
	el_a.css({ height: size, width: size });
	el_em.html(n_total);
	el_span.html(n_my);

	if ( n_my > 0 ) {
		el_a.addClass('act');
	}
}


/*
*  倒计时
*
*  @public  
*/
Guess.prototype.downtime = function ( msg, finish, callback ) {
	finish = finish ? parseInt(finish) : 0;
	var current = new Date().getTime() / 1000;
	function go ( finish ) {
		var time = parseInt(finish - current),
			min = 0,
			sec = time,
			val = '';
		if ( time / 60 > 0 ) {
			min = parseInt(time / 60);
			sec = time - (min*60);
			val = min + '分' + sec + '秒';
		} else {
			val = sec + '秒';
		}
		if ( time > 1 ) {
			finish -= 1;
			$('#bb span').html(msg + val);
			setTimeout(function(){
				go(finish);
			}, 1000);
		} else {
			setTimeout(function(){
				callback ? callback() : null;
			}, 1000);
		}
	}
	go(finish);
}


/*
*  启动
*
*  @public  
*/
Guess.prototype.go = function ( callback ) {

	var that = this,
		time = 1000;

	this.a({
		key: 'get_game_answer',
		token: my.info('name')
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
				// $('#select a[sid='+ key +']').animate({ height: size, width: size }).find('em').css({  }).html(data.res[key]);
				$('#select a[sid='+ key +']').css({ height: size, width: size }).find('em').html(data.res[key]);
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
	if ( this.info('status') && my.info('token') ) {
		this.a({
			key: 'get_user_select',
			tag: this.info('id'),
			token: my.info('token')
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
Guess.prototype.getSelect = function ( value, callback ) {
	if ( !my.info('token') ) {
		my.setTip('请登录');
	} else if ( !this.info('status') ) {
		my.setTip('每天开放时间为 10:00 - 22:00');
	} else {
		this.a({
			key: 'set_user_select',
			tag: this.info('id'),
			token: my.info('token'),
			select: value.selected,
			number: value.number
		}, function(data, param){
			callback ? callback(data) : null;
		});
	}
}
