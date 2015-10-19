<?php



	header("Content-type: application/json");
	$request = json_decode($GLOBALS['HTTP_RAW_POST_DATA'], true);




	//引用用户功能
	require_once("../event/game.php");

	// 初始化
	$game = new game();






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

		$time = 60 * 60;	// 登录钥匙有效时间（秒）

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
						'user' => array(
								'name' => $userinfo['user'],
								'score' => ceil($userinfo['score']),
								'key' => $game -> setUserStatus($userinfo['token'], time()),
								'token' => $userinfo['token'],
								'valid' => $time
							)
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
							'score' => ceil($userinfo['score']),
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

		$time = 60 * 60;	// 登录钥匙有效时间（秒）
		$key = $request['code'];
		$value = array(
				'status' => 0,
				'msg' => '无效的钥匙',
			);

		$userinfo = $game -> getUserByKey($key, time() - $time);

		if ( $userinfo ) {
			$value = array(
					'status' => 1,
					'msg' => '自动登录成功',
					'user' => array(
							'name' => $userinfo['user'],
							'score' => ceil($userinfo['score']),
							'key' => $game -> setUserStatus($userinfo['token'], time()),
							'token' => $userinfo['token'],
							'valid' => $time
						)
				);
		}

		echo json_encode($value);
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

	// 设置指定用户的指定场次的选择
	if ( $key == 'get_user_select' ) {
		$value = $game -> getFieldUser($request['tag'], $request['token']);
		echo json_encode($value['select']);
	}

	// 获取用户基本信息
	if ( $key == 'get_game_answer' ) {
		echo json_encode($game -> getGameAnswer($request['token']));
	}

	// 判断是否可以领取每日福利
	if ( $key == 'get_welfare_daily' ) {

		$uid = $request['token'];
		$userinfo = $game -> getUser($uid);

		// 如果用户不存在
		if ( !$userinfo ) {
			$value = array(
					'status' => 0,
					'msg' => '每日福利领取失败，用户不存在'
				);

		// 是否可以领取每日福利
		} else if ( $game -> getWelfareDaily($uid) == 0 ) {
			$reap = $game -> addWelfareDaily($uid);
			$number = $game -> setUserScore($uid, $reap);
			$value = array(
					'status' => 1,
					'msg' => '每日福利领取成功，获得'.$reap.'分的日常福利',
					'number' => $reap
				);

		// 已领取
		} else {
			$value = array(
					'status' => 0,
					'msg' => '每日福利领取失败，已领取'
				);
		}

		echo json_encode($value);
	}

	// 判断是否可以领取挂机福利
	if ( $key == 'get_welfare_hangup' ) {

		$uid = $request['token'];
		$userinfo = $game -> getUser($uid);

		// 如果用户不存在
		if ( !$userinfo ) {
			$value = array(
					'status' => 0,
					'msg' => '挂机福利领取失败，用户不存在'
				);

		// 是否可以领取每日福利
		} else if ( $game -> getWelfareHangup($uid) == 0 ) {
			$reap = $game -> addWelfareHangup($uid);
			$number = $game -> setUserScore($uid, $reap);
			$value = array(
					'status' => 1,
					'msg' => '挂机福利领取成功，获得'.$reap.'分的日常福利',
					'number' => $reap
				);

		// 已领取
		} else {
			$value = array(
					'status' => 0,
					'msg' => '挂机福利领取失败，时间错误'
				);
		}

		echo json_encode($value);
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
		$value = $game -> getChangeMode($request['token']);
		echo json_encode(array(
				'status' => 1,
				'msg' => '成功获取用户兑换方式',
				'res' => $value
			));
	}

	// 添加或者设置兑换方式
	if ( $key == 'set_user_changeMode' ) {

		// 设置
		if ( isset($request['id']) ) {
			$value = $game -> updateChangeMode($request['id'], $request['account'], $request['name'], $request['remark']);

		// 新增
		} else {
			$value = $game -> addChangeMode($request['token'], $request['account'], $request['name'], $request['remark'], $request['type']);
		}
		echo json_encode($value);
	}

	// 删除兑换方式
	if ( $key == 'delete_user_changeMode' ) {
		$value = $game -> deleteChangeMode($request['id']);
		echo json_encode($value);
	}

?>