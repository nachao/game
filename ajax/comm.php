<?php



	header("Content-type: application/json");
	$request = json_decode($GLOBALS['HTTP_RAW_POST_DATA'], true);




	//引用用户功能
	require_once("../event/game.php");

	// 初始化
	$game = new game();







	$key = $request['key'];

	if ( isset($request['_']) ) {
		$key = $request['_'];
	}
/*
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
	*/

	// 添加选择
	if ( $key == 'set_user_select' ) {
		$token = $request['token'];
		$tag = $request['tag'];
		$selected = $request['select'];

		if ( $tag && $token && $selected ) {
			$info = $game -> getFieldUser($tag, $token);

			// 修改选择
			if ( $info ) {
				$game -> setFieldUserSelected($tag, $token, $selected);
				echo json_encode('update');

			// 新增选择
			} else {
				$game -> selectAdd($token, $tag, $selected);
				$game -> setUserScore($token, -1);
				echo json_encode('add');
			}
		}
	}


	// 获取用户基本信息，根据名称，且快速登录
	if ( $key == 'get_user_byname' ) {

		$name = $request['name'];
		$token = $request['token'];

		// 新登录或的账号信息
		$userinfo = $game -> getUserByName($name);

		$time = 60;	// 登录钥匙有效时间（秒）

		if ( $token ) {
			$game -> setUserStatus($token, 0);
		}

		// 获取原有账户
		if ( $userinfo ) {

			// 未登录状态
			if ( $userinfo['status'] <= time() - $time ) {
				$value = array(
						'status' => 1,
						'msg' => '登录成功',
						'name' => $userinfo['info'],
						'score' => $userinfo['score'],
						'key' => $game -> setUserStatus($uid, time()),
						'token' => $userinfo['token'],
						'valid' => $time
					);

			// 如果是登录状态
			} else {
				$value = array(
						'status' => 0,
						'msg' => '账号正在使用中',
					);
			}

		// 新建账户
		} else {
			$userinfo = $game -> userAdd($name);
			$value = array(
					'status' => 2,
					'msg' => '创建用户且登录成功',
					'user' => array(
							'score' => $userinfo['score'],
							'name' => $userinfo['user'],
							'key' => $userinfo['key'],
							'token' => $userinfo['token'],
							'valid' => $time
						)
				);
		}
		echo json_encode($value);
	}


	// 获取用户基本信息，根据钥匙，且快速登录
	if ( $key == 'get_user_bykey' ) {

		$time = 60;	// 登录钥匙有效时间（秒）
		$code = $request['code'];
		$value = array(
				'status' => 0,
				'msg' => '无效的钥匙',
			);

		$userinfo = $game -> getUserByKey($code, time() - $time);

		if ( $userinfo ) {
			$key = $game -> setUserStatus($userinfo['token'], time());
			$value = array(
					'status' => 1,
					'msg' => '自动登录',
					'name' => $userinfo['user'],
					'score' => $userinfo['score'],
					'key' => $key,
					'token' => $userinfo['token'],
					'valid' => $time
				);
		}

		echo json_encode($value);
	}

	// 设置指定用户最近活动状态
	if ( $key == 'set_user_status' ) {
		$time = 60;	// 登录钥匙有效时间（秒）
		$value = array(
				'key' => $game -> setUserStatus($request['uid'], time()),
				'valid' => $time
			);
		echo json_encode($value);
	}

	// 设置指定用户的指定场次的选择
	if ( $key == 'get_user_select' ) {
		$value = $game -> getFieldUser($request['tag'], $request['token']);
		echo json_encode($value['select']);
	}



	// 获取用户基本信息
	if ( $key == 'get_game_answer' ) {
		echo json_encode($game -> getGameAnswer($request['token']));
	}





	// 添加赞助
	if ( $key == 'add_sponsor' ) {
		$value = $game -> addSponsor($request['token'], $request['title'], $request['price'], $request['number']);
		echo json_encode($value);
	}

	// 获取赞助
	if ( $key == 'get_sponsor' ) {
		$value = $game -> getSponsor();
		echo json_encode($value);
	}



	// 获取兑换方式
	if ( $key == 'get_user_changeMode' ) {
		$vaule = $game -> getChangeMode($request['token']);
		echo json_decode($value);
	}

	// 设置兑换方式
	if ( $key == 'set_user_changeMode' ) {
		$value = $game -> addChangeMode($request['token'], $request['type'], $request['account'], $request['name']);
		echo json_decode($value);
	}

?>