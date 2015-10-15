<?php

	// include("./event/game.php");

	$time = time();
	$num = 7;//rand(0, 9);

	date_default_timezone_set('PRC');
	$gap = date('h', time()) > 22;

	// // 开始
	// if ( isset($_GET['start']) ) {
	// 	$gap = 10;
	// 	$num = '-';

	// 	$game -> adminUpdata(1, $time, $time + $gap);

	// 	for ( $i =0; $i < 10; $i++ ) {
	// 		$uid = rand(100, 110);
	// 		$select = rand(0, 9);
	// 		$info = $game -> selectUser($uid);
	// 		if ( $info ) {
	// 			$game -> selectUpdate($uid , $select);	// 修改
	// 		} else {
	// 			$game -> selectAdd($uid , $select);	// 新增
	// 		}
	// 	}


	// }
	// if ( isset($_GET['roll']) ) {
	// 	$gap = 20;

	// 	$game -> adminUpdata(2, $time, $time + $gap, $num);
	// }
	// if ( isset($_GET['end']) ) {
	// 	$num = '-';

	// 	$game -> adminUpdata(0, $time);
	// }


?>
<!DOCTYPE html>
<html>
	<head>
		<title>七十三号馆 - 方方乐 - 猜数字 - 后台</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
		<style type="text/css">
			
			.btn{
				float: left;
				margin: 30px;
			}
			.btn a{
				display: inline-block;
				float: left;
				margin-right: 20px;
				border-radius: 3px;
				border: 1px solid #333;
			}
			.btn a span{ 
				display: inline-block;
				width: 100px;
				height: 100px;
				line-height: 100px;
				color: #000;
				font-weight: bold;
				font-family: 微软雅黑;
				text-align: center;
				text-align: center;
				float: left;

			}
			.btn a em{
				display: inline-block;
				font-style: normal;
				color: black;
				line-height: 100px;
				width: 70px;
				text-align: center;
				font-family: Arial;
				border-left: 1px dashed #333;
				font-size: 24px;
			}
			.btn a.act span{
				background: #000;
				color: white;
			}

			.time{
				border: 0px;
				padding: 20px;
				font-size: 50px;
				margin: 30px;
			}

			.sel{
				margin: 30px;
			}
			.sel label{
				display: inline-block;
				float: left;
				border: 1px solid #333;
				border-radius: 3px;
				margin-right: 10px;
				margin-bottom: 10px;
				height: 33px;
				line-height: 33px;
			}
			.sel span{
				display: inline-block;
				width: 30px;
				text-align: center;
			}
			.sel input{
				width: 50px;
				padding: 0px;
				margin: 0px;
				border: 0px;
				border-left: 1px dashed #333;
				text-align: center;
				outline: none;
			}


			.clear{
				clear: both;
			}
		</style>
	</head>
	<body>
		
		<div class="container" >

			<!-- <h5>时间</h5> -->
			<input class="time" type="text" value="<?php echo $gap; ?>" id="time" />
			<div class="clear"></div>

			<!-- <h5>状态</h5> -->
			<div class="btn">
				<a id="start" href="?start" ><span>开始</span></a>
				<a id="roll" href="?roll" ><span>滚动</span><em><?php echo $num; ?></em></a>
				<a id="end" href="?end" ><span>结束</span></a>
			</div>
			<div class="clear"></div>

			<!-- <h5>数量</h5> -->
			<div class="sel">
				<label><span>0</span><input type="text" value="-" /></label>
				<label><span>1</span><input type="text" value="-" /></label>
				<label><span>2</span><input type="text" value="-" /></label>
				<label><span>3</span><input type="text" value="-" /></label>
				<label><span>4</span><input type="text" value="-" /></label>
				<label><span>5</span><input type="text" value="-" /></label>
				<label><span>6</span><input type="text" value="-" /></label>
				<label><span>7</span><input type="text" value="-" /></label>
				<label><span>8</span><input type="text" value="-" /></label>
				<label><span>9</span><input type="text" value="-" /></label>
			</div>
		</div>
		
		<script type="text/javascript" src="./js/jquery-1.11.0.min.js" ></script>
		<script type="text/javascript">

			var url = window.location.href;

			var time = parseInt($('#time').val());



			if ( url.indexOf('end') > 0 ) {
				$('#end').addClass('act');

			} else if ( url.indexOf('start') > 0 ) {
				// go();
				$('#start').addClass('act');

			} else if ( url.indexOf('roll') > 0 ) {
				// go();
				$('#roll').addClass('act');

			} else {
				// 默认选择
				window.location.href = '?end';
			}

			function go () {

				console.log(time);

				time = time - 1;

				if ( time <= 0 && url.indexOf('start') >= 0 ) {
					window.location.href = '?roll';
					return;
				}
				if ( time <= 0 && url.indexOf('roll') >= 0 ) {
					window.location.href = '?start';
					return;
				}


				$('#time').val( time );

				setTimeout(function(){
					go();
				}, 1000);
			}

		</script>
	</body>
</html>
