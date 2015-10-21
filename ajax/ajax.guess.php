<?php



	header("Content-type: application/json");
	$request = json_decode($GLOBALS['HTTP_RAW_POST_DATA'], true);




	//引用用户功能
	require_once("../event/event.guess.php");

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
	if ( $key == 'get_game_answer' ) {
		echo json_encode($game -> getGameAnswer($request['token']));
	}

	// 添加选择
	if ( $key == 'set_user_select' ) {
		$token = $request['token'];
		$tag = $request['tag'];
		$number = $request['number'];
		$selected = $request['select'];

		if ( $tag && $token && $selected ) {
			// $info = $game -> getFieldUser($tag, $token);
			$current = $game -> getFieldSelectTotal($tag, $token, $selected);

			if ( $current < 30 ) {	// 不可超过上限

				// 修改选择
				if ( $current > 0 ) {
					$game -> updateFieldSelectedNumber($tag, $token, $selected, $current + $number);
					// $game -> setFieldUserSelected($tag, $token, $selected);
					echo json_encode(array(
							'status' => 1,
							'msg' => '加注成功',
							'res' => $game -> getFieldAllTotal($tag, $token)
						));

				// 新增选择
				} else {
					$game -> selectAdd($token, $tag, $selected, $number);
					// $game -> setUserScore($token, -1);
					echo json_encode(array(
							'status' => 1,
							'msg' => '下注成功',
							'res' => $game -> getFieldAllTotal($tag, $token)
						));
				}
			}
		}
	}

	// 设置指定用户最近活动状态
	if ( $key == 'set_user_status' ) {
		$time = 60 * 60;	// 登录钥匙有效时间（一小时）
		$value = array(
				'key' => $game -> setUserStatus($request['token'], time()),
				'valid' => $time,
				'status' => 1,
				'msg' => '成功刷新钥匙'
			);
		echo json_encode($value);
	}

	// 获取指定用户的指定场次的每个选项的选择
	if ( $key == 'get_user_select' ) {
		echo json_encode($game -> getFieldAllTotal($request['tag'], $request['token']));
	}

?>