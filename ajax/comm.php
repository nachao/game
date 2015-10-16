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

		if ( $tag && $user && $selected ) {
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
		}
	}


	// 获取用户基本信息，根据名称，且快速登录
	if ( $key == 'get_user_byname' ) {

		$uid = $request['uid'];
		$old = $request['old'];
		$info = $game -> getUser($uid);

		$time = 60;	// 登录钥匙有效时间（秒）

		if ( $old ) {
			$game -> setUserStatus($old, 0);
		}

		// 获取原有账户
		if ( $info ) {

			// 未登录状态
			if ( $info['status'] <= time() - $time ) {
				$value = array(
						'status' => 1,
						'msg' => '登录成功',
						'name' => $uid,
						'score' => $info['score'],
						'key' => $game -> setUserStatus($uid, time()),
						'token' => $info['token'],
						'valid' => $time
					);

			// 如果是登录状态
			} else {
				$value = array(
						'status' => 0,
						'msg' => '账号正在使用中。',
					);
			}

		// 新建账户
		} else {
			$info = $game -> userAdd('', $uid);
			$value = array(
					'status' => 2,
					'msg' => '创建用户且登录成功',
					'name' => $uid,
					'score' => 10,
					'key' => $info['key'],
					'token' => $info['token'],
					'valid' => $time
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

		$info = $game -> getUserByKey($code, time() - $time);

		if ( $info ) {
			$key = $game -> setUserStatus($info['user'], time());
			$value = array(
					'status' => 1,
					'msg' => '自动登录',
					'name' => $info['user'],
					'score' => $info['score'],
					'key' => $key,
					'token' => $info['token'],
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
		$value = $game -> getFieldUser($request['tag'], $request['uid']);
		echo json_encode($value['select']);
	}



	// 获取用户基本信息
	if ( $key == 'get_game_answer' ) {
		echo json_encode($game -> getGameAnswer($request['uid']));
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



?>