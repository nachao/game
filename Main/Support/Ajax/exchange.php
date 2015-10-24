<?php
	header("Content-type: application/json");
	$request = json_decode($GLOBALS['HTTP_RAW_POST_DATA'], true);

	require_once("../Event/exchange.php");

	$game = new Exchange();

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
		echo json_encode($game -> getList());
	}

	// 设置为已发放
	if ( $key == 'set' ) {
		echo json_encode($game -> setProvide($request['key']));
	}

	// 设置为退回积分
	if ( $key == 'set' ) {
		echo json_encode($game -> setProvide($request['key']));
	}

?>