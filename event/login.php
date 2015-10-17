<?php


	//定义根目录边变量
	// define("ROOT_PATH", dirname(__DIR__)."/");

	//配置文件
	require_once("game.php");
	require_once("../connect2.1/API/qqConnectAPI.php");

	// 初始化
	$game = new game();
	$qq = new QC();

	// 获取第三方信息（QQ）
	$key = $qq -> qq_callback();
	$uid =  $qq -> get_openid();

	$user_info = $game -> userBe($key);	//'20746446B01F671246B702364E5750C6'

	// 判断是否有此用户的记录，没有则新添加
	if ( !$user_info ) {
		$game -> userAdd( $key, $uid );
	}

	$CName = "ux73.com/game";
	// if ( isset($_cookie[$CName]) ) {
	// 	$uid = $_cookie[$CName];

	// } else {

	setcookie($CName, $uid, time()+24*30*3600, "/");	//存入本地缓存 - 有效时间 1 天	
	// }

	echo $_cookie[$CName];

	// print_r($user_info);

	// 关闭当前界面
	// echo '<script type="text/javascript"> window.close(); </script>';


	// echo $qq->qq_callback();
	// echo $qq->get_openid();

?>