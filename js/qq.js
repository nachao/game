
// var loadImg = $('.game-head-load'),
// 	iconImg = $('.game-head-img'),
// 	entryBtn = $('.game-head-qq');

// QQ登录按钮
QC.Login({
	btnId: 'qqEntry'

// 登录成功
}, function(data, btn){
	$('#qqBtn').fadeOut();
	$('#qqLogout').fadeIn();
	$('#qqName').fadeIn().html(data.nickname);
	$('#qqAvatar').fadeIn().prop('src', data.figureurl_2);

	QC.Login.getMe(function(openId, accessToken){
		$(window).data('uid', openId);
		$.ajax({ 
			type: "POST", 
			url: './ajax/comm.php', 
			contentType:"application/json",
			dataType:"json",
			data: JSON.stringify({
				key: 'get_user_sroce',
				openId: openId
			}),
			success: function(msg){
				$('#userSroce').fadeIn().find('span').html(parseInt(msg));
			}
		});
	});

// 注销成功
}, function(opts){
	$('#qqLogout').fadeOut();
	$('#qqName').fadeOut();
	$('#qqAvatar').fadeOut();
	$('#userSroce').fadeOut();
	$('#qqBtn').fadeIn();
});

// 注销按钮
$('#qqLogout').click(function(){
	QC.Login.signOut();
});

// var paras = {};

// 判断是否有登录缓存
/*
// 获取用户信息
QC.api("get_user_info", {})
	.success(function(s){//成功回调
		// entryBtn.hide();
		$('#qqName').fadeIn().html(s.data.nickname);
		$('#qqLogout').fadeIn();
		$('#qqBtn').fadeOut();
		// alert("获取用户信息成功！当前用户昵称为："+s.data.nickname);
	})
	.error(function(f){//失败回调
		alert("获取用户信息失败！");
	})
	.complete(function(c){//完成请求回调
		// alert("获取用户信息完成！");
	});

*/