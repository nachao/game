<!DOCTYPE html>
<html>
	<head>
		<title>七十三号馆 - 方方乐</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
	</head>
	<body>
		
		<h1 id="aa"></h1>
		<div id="xx"></div>
		<div id="bb"></div>

		<p id="cc">输入选择：<input id="c" /></p>
		<p>用户名：<input id="d" />&nbsp;&nbsp;当前拥有&nbsp;<span id="score">0</span>&nbsp;分</p>

		<script src="./js/jquery-1.11.0.min.js" ></script>
		<script type="text/javascript" src="./js/comm.js" ></script>
		<script type="text/javascript">

			// 当前场数据
			var session = null;

			// 当前用户信息
			var user = {
					score: 0
				};

			// 滚动状态
			function go () {

				var time = 1000;

				ajax({ key: 'get_game_answer', uid: $('#d').val() }, function(data){
					
					var current = new Date().getTime() / 1000;

					if ( data && data.id ) {
						session = data;
						$('#aa').html(data.id);

						// 选择
						if ( data.status == '1' ) {
							$('#cc').show();
							$('#xx').html('选择...');
							$('#bb').html('剩余时间：' + parseInt(data.end - current));

						// 公布答案
						} else if ( data.status == '2' ) {
							$('#cc').hide();
							$('#c').val('');
							$('#xx').html('中标：' + data.result);
							$('#bb').html('');

							user.score += parseInt(data.get);
							$('#score').html(user.score);

							// time = data.end - current;
						}

					} else {
						$('#aa').html('关闭中');
						$('#xx').html('');
						$('#bb').html('');
						$('#cc').hide();
					}
				console.log(data);

				});

				setTimeout(function(){ go(); }, time);
			}

			go();

			// 用户参与的场次
			var partake = 0;

			// 选择操作
			$('#c').change(function(){
				// if ( partake != session.id ) {
				// 	partake = session.id;

				// }
				ajax({
					key: 'set_user_select',
					tag: $('#aa').html(),
					select: $('#c').val(),
					uid: $('#d').val()
				}, function(data, param){
					if ( data ) {
						if ( data == 'add' ) {
							user.score -= 1;
							$('#score').html(user.score);
						}
					}
					// console.log(param);
					console.log(data);
				});
			});

			// 快速登录
			$('#d').change(function(){
				ajax({
					key: 'get_user',
					uid: $('#d').val()
				}, function(data, param){
					user = data;
					$('#score').html(data.score);
					// console.log(param);
					// console.log(data);
				});
			});

		</script>
	</body>
</html>
