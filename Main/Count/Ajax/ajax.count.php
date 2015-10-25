<?php



	header("Content-type: application/json");
	$request = json_decode($GLOBALS['HTTP_RAW_POST_DATA'], true);



	include("../../Comm/conn.php");

	//引用功能
	require_once("../Event/count.php");

	//引用用户功能
	require_once("../../User/Event/default.php");

	$game = new Count();

	$user = new Game();



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

	// 获取冠军
	if ( $key == 'get' ) {
		echo json_encode($game -> get());
	}

	// 获取当前用户的本日最高分
	if ( $key == 'get_own' ) {
		echo json_encode($game -> getByToken($request['token']));
	}

	// 获取列表
	if ( $key == 'get_list' ) {
		echo json_encode($game -> getList());
	}

	// 添加或更新
	if ( $key == 'add' ) {
		$userinfo = $user -> getUser($request['token']);

		if ( $userinfo['score'] > 0 && $request['duration'] ) {
			$user -> setUserScore($request['token'], -1);
			// $info = $game -> getByToken($request['token']);
			// if ( $info['status'] ) {
			// 	if ( $request['duration'] < $info['info']['duration'] ) {
			// 		echo json_encode($game -> update($request['token'], $request['duration']));
			// 	}
			// } else {
				echo json_encode($game -> add($request['token'], $request['duration']));
			// }
		}
	}

?>