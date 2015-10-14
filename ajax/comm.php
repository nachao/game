<?php



	header("Content-type: application/json");
	$request = json_decode($GLOBALS['HTTP_RAW_POST_DATA'], true);




	//引用用户功能
	require_once("../event/game.php");

	// 初始化
	$game = new game();







	$key = $request['key'];

	if ( $key == 'get_select' ) {

		$info = $game -> selectStatus();
		$start = $info['start_time'];
		$end = $info['end_time'];
		$time = $end - $start;

		$value = array(
				'status' => $info['status'],
				'time' => $info['end_time'],
				'interval' => $end - time(),
				'go' => array(),
				'res' => array()
			);

		for ( $i = 0; $i <= 9; $i++ ) {
			$value['res'][$i] = $game -> selectTotal($i, $time);
		}

		$total = $game -> selectTotal($info['selected'], $time);
		$number = 0;

		if ( $total ) {
			$number = ceil($game -> getTotal($time) / $total);
		}

		$value['go'] = array(
				'selected' => $info['selected'],
				'right' => $game -> selectTotal($info['selected'], $time, $request['uid']),
				'income' => $number,
			);

		echo json_encode($value);
	}

	// 添加选择
	if ( $key == 'set_user_select' ) {
		$user = $request['uid'];
		$tag = $request['tag'];
		$selected = $request['select'];
		$info = $game -> getFieldUser($tag, $user);

		// 修改选择
		if ( $info ) {
			$game -> setFieldUserSelected($tag, $user, $selected);
			echo json_encode('update');

		// 新增选择
		} else {
			$game -> selectAdd($user, $tag, $selected);
			$game -> setUserScore($user, -1);
			echo json_encode('add');
		}
		// $game -> selectAdd($request['uid'], $request['select']);
		// echo json_encode($request['uid']);
		// echo json_encode($info);
	}


	// 获取用户基本信息
	if ( $key == 'get_user' ) {
		// $loginfo = $game -> userBe($request['openId']);

		$uid = $request['uid'];
		$info = $game -> getUser($uid);
		if ( $info ) {
			$value = array(
					'name' => $uid,
					'score' => $info['score'],
				);
		} else {
			$game -> userAdd('', $uid);
			$value = array(
					'name' => $uid,
					'score' => 10
				);
		}
		echo json_encode($value);
	}





	// 获取用户基本信息
	if ( $key == 'get_game_answer' ) {
		echo json_encode($game -> getGameAnswer($request['uid']));
	}



?>