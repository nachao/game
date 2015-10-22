<?php



	header("Content-type: application/json");
	$request = json_decode($GLOBALS['HTTP_RAW_POST_DATA'], true);




	//引用用户功能
	require_once("../event/event.count.php");

	$game = new Guess();



	if ( isset($request['key']) ) {
		$key = $request['key'];
	}

	if ( isset($request['_']) ) {
		$key = $request['_'];
	}

	if ( !isset($key) ) {
		echo json_encode(array(
				'status' => '404',
				'msg' => '无关键字：Key'
			));
		return;
	}

	// 获取答案
	if ( $key == 'get' ) {
		echo json_encode($game -> getGameAnswer($request['token']));
	}

	// 添加选择
	if ( $key == 'add' ) {
		$game -> addLog($request['token'], $request['value']);
	}

?>