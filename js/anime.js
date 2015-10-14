
// 当前状态
var currentStatus = 0;

// 当前标示
var currentField = '';

// 当前场次
var currentSession = 0;

// 当前选中
var currentSelect = 0;	// 0=未选


// 初始化
function linking () {
	

	getInfo(function(info){
		// console.log(info)
		var time = 1;

		if ( info.status == '2' ) {
			time = info.interval;
		}

		setTimeout(function(){
			linking();
		}, time * 1000);

		if ( info.status == '1' && currentSession == 0 ) {
			currentSession += 1;

		} else if ( info.status == '2' && currentSession == 0 ) {
			$('.game-text').html('稍等('+ time +'秒后开始)');
			// countdown($('.game-text'), time);
		} else {
			setHtml(info);
		}
	});
}

linking();


// 选择
function setInfo ( selected, callback ) {

	var time = new Date().getTime() + ( 3000 * 1000 );

	var reply = {
		status: 1,
		go: {
			time: time,
			selected: 7,		// 系统选中
			right: false,		// 用户是否选中
			income: 0,			// 获得积分
		},
		id: 'fw412d123g3498asd6793jhl',
		res: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
	}

	// 模拟数据
	reply.res[selected] += 1;

	callback ? callback(reply) : null;
}


// 获取当前状态信息
function getInfo ( callback ) {

	ajax({
		key: 'get_select',
		uid: '123'
	}, function(data){

		// var reply = {
		// 	status: data.status,
		// 	time: parseInt(parseInt(data.end_time) - (new Date().getTime() / 1000)),
		// 	go: {
		// 		selected: data.selected,		// 系统选中
		// 		right: false,					// 用户是否选中
		// 		income: 0,						// 获得积分
		// 	},
		// 	id: 'fw412d123g3498asd6793jhl',
		// 	res: [ 
		// 		data.select_0,
		// 		data.select_1,
		// 		data.select_2,
		// 		data.select_3,
		// 		data.select_4,
		// 		data.select_5,
		// 		data.select_6,
		// 		data.select_7,
		// 		data.select_8,
		// 		data.select_9
		// 	]
		// }

		callback ? callback(data) : null;
	});

	// var time = new Date().getTime() + ( 3000 * 1000 );



	// callback ? callback(reply) : null;
}


// 设置页面
function setHtml ( info ) {

	var boxs = $('.boxs'),
		game = $('.game');

	// console.log(info);

	var text = $('.game-text'),
		second = Math.ceil(parseInt(info.time) - (new Date().getTime() / 1000)),
		selected = info.selected;

	if ( info.status == '0' ) {
		text.html('关闭中。');
	}

	// console.log(info);

	// 准备中
	if ( info.status == '1' ) {
		console.log(info);
		$('.game').addClass('game-select');
		text.html('请选择('+ second +')。');
		boxs.each(function(i){
			$(this).find('i').html(info.res[i]);
		});
	}

	// 倒计时，滚动，出结果，禁止选择
	if ( info.status == '2' && info.status != currentStatus ) {
		text.html('滚动起来。');
		game.removeClass('game-select')
		// countdown(text, second, function(){

			// 滚动起来
			roll(info.go.selected, function(){
				currentSession += 1;
				$('.boxs').removeClass('boxs-act');
				// result(info.go.right, info.go.income);
			});
		// });
	}

	currentStatus = info.status;
	currentField = info.id;
}


$('.boxs').click(function(){
	var t = $(this),
		i = t.index();
	if ( $('.game').hasClass('game-select') && !$(this).hasClass('boxs-act') ) {
		$(this).addClass('boxs-act').siblings().removeClass('boxs-act');
		ajax({
			key: 'set_user_select',
			select: i,
			uid: '123',//$(window).data('uid')
		}, function(data){
			console.log(data);
		});
		// setInfo(i + 1, function(info){
		// 	console.log('选择成功刷新界面');
		// 	setHtml(info);
		// });
		// currentSelect = i;
	}
});



// 倒计时
var totalTime = 5,
	gameText = $('.game-text');

// 初始化参数
var boxs = $('.boxs'),
	game = $('.game'),
	selected = 0,
	selectedValue = 0,
	userSelected = 0,
	total = 0,
	capita = 0;

// 统计参数
var user = 10,
	session = 1;


// 初始化界面
function init () {

	boxs.each(function(){
		// var value = parseInt(Math.random() * 10);
		// total += value;
		// $(this).find('i').html(value);
	}).click(function(){
		if ( user > 0 && game.hasClass('game-select') ) {
			userSelected = $(this).index();
			$('.game-head-value span').html(user - session);
			$(this).addClass('boxs-act').siblings().removeClass('boxs-act');

			total = 0;
			boxs.each(function(){
				// var value = parseInt(Math.random() * 10);
				total += value;
				$(this).find('i').html(value);
			});

			$(this).find('i').html(parseInt($(this).find('i').html()) + 1);
		}
	});

	selectedValue = parseInt(boxs.eq(1).find('i').html())
	capita = parseInt(total/selectedValue) || 0;

	// 重置
	game.addClass('game-select');
	boxs.removeClass('boxs-act');
	gameText.html('Ready.');
	totalTime = 3;


	// var items = $('.boxs');
	// var t1 = new Date().getTime();
	// ns.set({
	// 	target: items.eq(0),
	// 	source: items.not(':eq(0)'),
	// 	totalTime: 1000
	// }).move(function(that){
	// 	var t2 = new Date().getTime();卤
	// 	console.log('用时:'+ (( t2 - t1 ) /1000) + '秒');

	// 	that.set({
	// 		totalTime: 2000
	// 	}).minus(100, function(){
	// 		var t3 = new Date().getTime();
	// 		console.log('用时:'+ (( t3 - t2 ) /1000) + '秒');
	// 	});
	// });

	setTimeout(function(){
		countdown();
	}, 3000);
}


// 倒计时
function countdown ( el, number, callback ) {
	function go () {
		if ( el ) {
			el.html(number + 's.');
		}
		if ( number-- ) {
			setTimeout(function(){
				go();
			}, 1000);
		} else {
			el.html('Go.');
			callback ? callback() : null;
		}
	}
	go();
}

// 积分分配动画
function result ( right, income ) {

	// 初始化插件
	var ns = new nShift({
			number: 'i',
			point: 'em',
		});

	// 重置插件
	ns.set({	
		target: boxs.eq(selected),
		source: boxs.not(':eq('+ selected +')'),
	})

	// 执行插件
	// gameText.html('Collect.');
	ns.move(function(that){

		// console.log(userSelected);

		// if ( right ) {
			// capita = 0;
			// gameText.html('End.');
		// } else if ( selected != userSelected ) {
			// capita = 0;
			// gameText.html('Sorry!');
		// } else {
			// user += capita;
			// gameText.html('Sharing.');
		// }

		// userSelected = null;

		that.minus(income, function(that){	
			// session += 1;

			// if ( capita > 0 ) {
			// 	gameText.html('Seoho.');
			// 	that.set({
			// 		target: $('.game-head-value span'),
			// 		source: boxs.eq(selected)
			// 	}).move(function(that){
			// 		// init();	// 重置
			// 	});
			// } else {
			// 	// init();	// 重置
			// }
		});
	});
}

/*
// 倒计时
function countdown () {

	if ( totalTime > 0 ) {
		gameText.html(totalTime + 's.');
		totalTime -= 1;
		setTimeout(function(){ countdown(); }, 1000);
	} else {
		$('.game-text').html('Go.');
		$('.game').removeClass('game-select');

		// 滚动起来
		roll(function(selected){
			$('.game-text').html('No.' + selected);

			// 重置插件
			ns.set({	
				target: boxs.eq(selected),
				source: boxs.not(':eq('+ selected +')'),
			})
		
			// 执行插件
			gameText.html('Play.'); 
			ns.move(function(that){

				if ( $.type(userSelected) == 'null' ) {
					capita = 0;
					gameText.html('End.');
				} else if ( selected != userSelected ) {
					capita = 0;
					gameText.html('Sorry!');
				} else {
					user += capita;
					gameText.html('Sharing.');
				}

				userSelected = null;

				that.minus(capita, function(that){	
					session += 1;

					if ( capita > 0 ) {
						gameText.html('Seoho.');
						that.set({
							target: $('.game-head-value span'),
							source: boxs.eq(selected)
						}).move(function(that){
							// setTimeout(function(){
								init();	// 重置
							// }, 3000);
						});
					} else {
						// setTimeout(function(){
							init();	// 重置
						// }, 5000);
					}
				});
			});
		});
	}
}
*/

// 滚动
function roll ( selected, callback ) {

	var itemTime = 0,
		lastTime = 5 * 1000,
		goNumber = 0,
		startTime = 1 * 1000;

	var leftValue = 0,
		RightValue = $('.game-main').width() - $('.boxs-icon-up').width() - 20;

	var targetValue = selected;//parseInt(Math.random() * 10);

	function go () {

		startTime = startTime * 2;

		goNumber += 1;

		var left = 0,
			time = 0,
			ease = 'linear',
			icon = $('.boxs-icon-up');

		if ( parseInt(icon.css('left')) == 0 ) {
			left = RightValue;
		} else {
			left = leftValue;
		}

		switch ( goNumber ) {
			case 1: 
				time = 1000;
				ease = 'easeInCubic';
				break;
			case 2: time = 400; break;
			case 3: time = 300; break;
			case 4: time = 200; break;

			case 5:
			case 6:
			case 7:
			case 8:
			case 9: 
				time = 10 * 20;
				break;
			case 10: 
				time = 10 * 30;
				break;
			case 11: 
				time = 10 * 40;
				break;
			case 12: 
				time = 10 * 50;
				break;
			case 13: 
				time = 10 * 70;
				break;
			case 14: 
				time = 10 * 100; 
				break;
			case 15: 
				time = targetValue * 1000; 
				left = targetValue * 98;
				ease = 'easeOutExpo';
				break;
		}

		if ( goNumber < 4 ) {
			// ease = 'easeOutQuad';
		}
		if ( goNumber > 9 ) {
			// ease = 'easeInQuad';
		}

		if ( goNumber > 15 ) {
			callback ? callback(targetValue) : null;
		} else {
			icon.animate({ left: left }, time, ease, function(){
				go();
			});
		}
	}

	go();

}



// init();

