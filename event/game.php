<?php

	// 配置文件
	include("conn.php");

	// 对象方法
	class Game {

		// 查询用户基本信息
		public function userBe( $uid = '' ){
			$sql = "select * FROM  `game_user` WHERE  `user` LIKE  '".$uid."' LIMIT 0 , 30";
			$query = mysql_query($sql);
			$row = mysql_fetch_array($query);
			return $row;
		}

		// 添加用户基本信息
		public function userAdd( $name = '', $token = '', $num = 0 ){
			if ( !$token ) {
				$token = md5(time() + rand(0, time()));
			}
			if ( $name ) {
				$key = md5(time() / 123456789);
				$sql = "insert INTO `game`.`game_user` (`id`, `token`, `user`, `score`, `status`, `key`) VALUES (NULL, '".$token."', '".$name."', '".$num."', '".time()."', '".$key."');";
				$query = mysql_query($sql);
				return array(
						'key' => $key,
						'token' => $token,
						'score' => 0,
						'user' => $name
					);
			}
		}


		// 获取当前状态信息
		public function selectStatus () {
			$sql = "select * FROM  `game_status` WHERE  `id` =0 LIMIT 0 , 30;";
			$query = mysql_query($sql);
			$row = mysql_fetch_array($query);
			return $row;
		}

/*
		// 获取指定选项的选择数量
		public function selectTotal ( $select, $time, $uid=0 ) {
			if ( $uid ) {
				$user = "AND `uid` = ".$uid;
			} else {
				$user = "";
			}
			$sql = "select count(`id`) FROM  `game_select` WHERE  `select` = ".$select." AND  `time` >=".$time." ".$user." LIMIT 1";
			$query = mysql_query($sql);
			if ( $query ) {
				$row = mysql_fetch_array($query);
				// print_r($row);
				return $row[0];
			} else {
				return 0;;
			}
			// echo $query;
		}
*/
		// 获取总数量
		public function getTotal ( $time ) {
			$sql = "select count(`id`) FROM  `game_select` WHERE `time` >=".$time." LIMIT 1";
			$query = mysql_query($sql);
			$row = mysql_fetch_array($query);
			return $row[0];
		}
/*
		// 搜索用户选择
		public function selectUser ( $uid, $tag ) {
			$sql = "select * FROM  `game_select` WHERE  `user` =".$uid." AND `tag` = '".$tag."' LIMIT 0 , 30;";
			$query = mysql_query($sql);
			if ( $query ) {
				$row = mysql_fetch_array($query);
				return $row;
			}
			// echo $query;
		}
*/
		// 添加选择
		public function selectAdd ( $token, $tag, $select ) {
			$sql = "insert INTO `game`.`game_select` (`id`, `user`, `select`, `time`, `tag`) VALUES (null, '".$token."', '".$select."', '".time()."', '".$tag."');";
			$query = mysql_query($sql);
			// print_r($query);
		}

		// 修改选择
		public function selectUpdate ( $uid, $tag, $select ) {
			$sql = "update  `game`.`game_select` SET  `select` =  '".$select."',`time` =  '".time()."' WHERE  `game_select`.`user` =".$uid." AND `tag` = '".$tag."';";
			$query = mysql_query($sql);
		}

		// 后台控制
		public function adminUpdata ( $status=0, $start_time=0, $end_time=0, $selected=0 ) {
			$sql = "update  `game`.`game_status` SET  `status` =  '".$status."', `selected` =  '".$selected."', `start_time` =  '".$start_time."', `end_time` =  '".$end_time."' WHERE  `game_status`.`id` =0;";
			$query = mysql_query($sql);
		}





		// 获取指定场次的指定的用户的指定选项
		public function getFieldUserSelected ( $tag='', $token='', $selected=0 ) {
			$sql = "select * FROM  `game_select` WHERE  `select` = ".$selected." AND  `tag` ='".$tag."' AND `user` LIKE '".$token."' LIMIT 1";
			$query = mysql_query($sql);
			$value = null;
			if ( $query ) {
				$value = mysql_fetch_array($query);
			}
			return $value;
		}

		// 获取指定场次的指定用户
		public function getFieldUser ( $tag='', $token='' ) {
			$sql = "select * FROM  `game_select` WHERE  `user` LIKE '".$token."' AND  `tag` LIKE '".$tag."' LIMIT 1";
			$query = mysql_query($sql);
			$value = null;
			if ( $query ) {
				$value = mysql_fetch_array($query);
			}
			return $value;
		}

		// 获取指定场次的指定选项总人数
		public function getFieldSelectedTotal ( $tag='', $selected=0 ) {
			$sql = "select count(`id`) FROM  `game_select` WHERE  `select` = ".$selected." AND  `tag` LIKE'".$tag."' LIMIT 1";
			$query = mysql_query($sql);
			$value = 0;
			if ( $query ) {
				$row = mysql_fetch_array($query);
				$value = $row[0];
			}
			return $value;
		}

		// 获取指定场次的总人数
		public function getFieldTotal ( $tag='' ) {
			$sql = "select count(`id`) FROM  `game_select` WHERE `tag` LIKE'".$tag."' LIMIT 1";
			$query = mysql_query($sql);
			$value = 0;
			if ( $query ) {
				$row = mysql_fetch_array($query);
				$value = $row[0];
			}
			return $value;
		}

		// 设置指定用户选择指定的场次
		public function setFieldUserSelected ( $tag='', $token='', $selected=0 ) {
			$sql = "update  `game`.`game_select` SET  `select` =  '".$selected."' WHERE `game_select`.`user` LIKE '".$token."' AND `tag` LIKE '".$tag."';";
			$query = mysql_query($sql);
		}

		// 设置指定用户选择的场次为积分已发放
		public function setFieldUserRrovide ( $tag='', $user='' ) {
			$sql = "update  `game`.`game_select` SET  `provide` =  1 WHERE `game_select`.`user` LIKE '".$token."' AND `tag` LIKE '".$tag."';";
			$query = mysql_query($sql);
		}




		// 获取指定用户，根据名称
		public function getUser ( $token='' ) {
			$sql = "select *  FROM `game_user` WHERE `token` LIKE '".$token."'";
			$query = mysql_query($sql);
			$value = null;
			if ( $query ) {
				$value = mysql_fetch_array($query);
			}
			return $value;
		}

		// 获取指定用户，根据名称
		public function getUserByName ( $name='' ) {
			$sql = "select *  FROM `game_user` WHERE `user` LIKE '".$name."'";
			$query = mysql_query($sql);
			$value = null;
			if ( $query ) {
				$value = mysql_fetch_array($query);
			}
			return $value;
		}

		// 获取指定用户，根据钥匙且指定有效时间内的
		public function getUserByKey ( $key='', $time=0 ) {
			$sql = "select *  FROM `game_user` WHERE `key` LIKE '".$key."' AND `status` > ".$time;
			$query = mysql_query($sql);
			$value = null;
			if ( $query ) {
				$value = mysql_fetch_array($query);
			}
			return $value;
		}


		// 设置指定用户的积分
		public function setUserScore ( $token='', $sum=0 ) {
			$info = $this -> getUser($token);
			if ( $info ) {
				$value = $info['score'];
				$sql = "update `game`.`game_user` SET `score` = '".($value + $sum)."' WHERE `game_user`.`token` LIKE '".$token."';";
				$query = mysql_query($sql);
				if ( $query ) {
					$value = $value + $sum;
				}
			}
			return $value;
		}

		// 设置指定用户的最近活动时间
		public function setUserStatus ( $token='', $status=0 ) {
			$info = $this -> getUser($token);
			if ( $info ) {
				$key = md5(time() / 123456789);
				$sql = "update `game`.`game_user` SET `status` = '".$status."', `key` = '".$key."' WHERE `game_user`.`token` LIKE '".$token."';";
				$query = mysql_query($sql);
				return $key;
			}
		}



		// 获取答案
		public function getGameAnswer ( $token='' ) {
			$sql = "select *  FROM `game_answer` WHERE `under` >= ".time();
			$query = mysql_query($sql);
			if ( $query ) {
				$row = mysql_fetch_array($query);

				// 后台开启中
				if ( $row ) {

					$select = $this -> getFieldUserSelected($row['aid'], $token, $row['number']);
					$isChecked = $select;

					if ( $isChecked ) {
						$selectedTotal = $this -> getFieldSelectedTotal($row['aid'], $row['number']);
						$total = $this -> getFieldTotal($row['aid']) * 10;		// 十倍收益
						$gain = ceil($total / $selectedTotal);
					} else {
						$gain = 0;
					}


					$value = array(
							'id' => $row['aid'],			// 场次编号
						);
					if ( time() < $row['valid'] ) {
						$value['status'] = 1;				// 状态一：进行选择
						$value['end'] = $row['valid'];		// 公布答案时间
						$value['msg'] = '进行选择';			// 提示信息

						$value['res'] = array(				// 所有选项的选择数量
							'1' => $this -> getFieldSelectedTotal($row['aid'], 1),
							'2' => $this -> getFieldSelectedTotal($row['aid'], 2),
							'3' => $this -> getFieldSelectedTotal($row['aid'], 3),
							'4' => $this -> getFieldSelectedTotal($row['aid'], 4),
							'5' => $this -> getFieldSelectedTotal($row['aid'], 5),
							'6' => $this -> getFieldSelectedTotal($row['aid'], 6),
							'7' => $this -> getFieldSelectedTotal($row['aid'], 7),
							'8' => $this -> getFieldSelectedTotal($row['aid'], 8),
							'9' => $this -> getFieldSelectedTotal($row['aid'], 9)
						);			

					} else {

						if ( $isChecked && $isChecked['provide'] == 0 ) {
							$this -> setUserScore($token, $gain);
							$this -> setFieldUserRrovide($row['aid'], $token);
						} else {
							$gain = 0;
						}

						$value['status'] = 2;				// 状态二：公布答案
						$value['end'] = $row['under'];		// 本场结束时间
						$value['result'] = $row['number'];	// 答案
						$value['get'] = $gain;				// 收获积分数量
						$value['msg'] = '公布答案';			// 提示信息
					}

					// $value['isChecked'] = $isChecked;		// 是否选中
					// $value['get'] = $gain;					// 收获积分数量
					return $value;

				// 后台关闭中
				} else {
					return array(
							'status' => '0',
							'msg' => '关闭中'
						);
				}
			}
		}


		// 添加赞助
		public function addSponsor ( $token='', $title='', $price=0, $number=0 ) {
			$sponsor_id = md5($token.time());
			$sql = "insert INTO `game`.`game_sponsor` (`id`, `user_token`, `sid`, `title`, `price`, `number`, `time`, `depict`) VALUES (NULL, '".$token."', '".$sponsor_id."', '".$title."', '".$price."', '".$number."', '".time()."', NULL);";
			$query = mysql_query($sql);
			if ( $query ) {
				return array(
						'id' => $sponsor_id,
						'title' => $title,
						'price' => $price,
						'number' => $number
					);
			}
		}

		// 更新赞助
		public function updateSponsor ( $sponsor_id='', $title='' ) {
			$sql = "update `game`.`game_sponsor` SET  `title` =  '".$title."' WHERE  `game_sponsor`.`sid` ='".$sponsor_id."';";
			$query = mysql_query($sql);
		}


		// 获取赞助
		public function getSponsor () {
			$sql = "select * FROM  `game_sponsor`  WHERE `number` > 0 LIMIT 0 , 30";
			$query = mysql_query($sql);
			$value = array();
			if ( $query ) {
				while( $row = mysql_fetch_array($query)){	//获取单个内容数
					array_push($value, array(
							'id' => $row['sid'],
							'title' => $row['title'],
							'price' => $row['price'],
							'number' => $row['number']
						));
				}
			}
			return array(
					'status' => 1,
					'msg' => '成功获取所有赞助',
					'res' => $value
				);
		}





		// 获取兑换方式
		public function getChangeMode ( $token='' ) {
			$sql = "select *  FROM `game_mode` WHERE `token` LIKE '".$token."'";
			$query = mysql_query($sql);
			$value = array();
			if ( $query ) {
				while( $row = mysql_fetch_array($query)){	//获取单个内容数
					array_push($value, array(
							'id' => $row['mode_id'],
							'type' => $row['type'],
							'account' => $row['account'],
							'name' => $row['name'],
							'remark' => $row['remark']
						));
				}
			}
			return $value;
		}

		// 添加兑换方式
		public function addChangeMode ( $token='', $account='', $name='', $remark='', $type=1 ) {
			$mode_id = md5($token.time());
			$sql = "insert INTO `game`.`game_mode` (`id`, `mode_id`, `token`, `type`, `account`, `name`, `time`, `remark`) VALUES (NULL, '".$mode_id."', '".$token."', '".$type."', '".$account."', '".$name."', '".time()."', '".$remark."');";
			$query = mysql_query($sql);
			return array(
					'status' => 1,
					'msg' => '成功修改兑换方式',
					'info' => array(
							'id' => $mode_id,
							'type' => $type,
							'account' => $account,
							'name' => $name,
							'remark' => $remark
						)
				);
		}

		// 修改兑换方式
		public function updateChangeMode ( $mode_id='', $account='', $name='', $remark='' ) {
			$sql = "update `game`.`game_mode` SET `account` = '".$account."', `name` = '".$name."', `remark` = '".$remark."' WHERE `mode_id` LIKE '".$mode_id."';";
			$query = mysql_query($sql);
			return array(
					'status' => 1,
					'msg' => '成功修改兑换方式'
				);
		}

		// 删除兑换方式
		public function deleteChangeMode ( $mode_id='' ) {
			$sql = "delete FROM `game`.`game_mode` WHERE `game_mode`.`mode_id` LIKE '".$mode_id."'";
			$query = mysql_query($sql);
			return array(
					'status' => 1,
					'msg' => '成功删除兑换方式'
				);
		}



		// 判断用户是否可以领取福利之日常
		public function getWelfareDaily ( $token='' ) {
			$sql = "select `number`  FROM `game_welfare_daily` WHERE `token` LIKE '".$token."' AND `time` > ".strtotime(date('Y-m-d'));
			$query = mysql_query($sql);
			$value = 0;
			if ( $query ) {
				$row = mysql_fetch_array($query);
				$value = $row['number'];
			}
			return $value;
		}

		// 添加福利之日常
		public function addWelfareDaily ( $token='' ) {
			$number = 100;
			$sql = "insert INTO `game`.`game_welfare_daily` (`id`, `token`, `time`, `number`) VALUES (NULL, '".$token."', '".time()."', ".$number.");";
			$query = mysql_query($sql);
			return $number;
		}

		// 判断用户是否可以领取福利之挂机
		public function getWelfareHangup ( $token='' ) {
			$sql = "select `number`  FROM `game_welfare_hangup` WHERE `token` LIKE '".$token."' AND `time` > ".time() - 60 * 3;
			$query = mysql_query($sql);
			$value = 0;
			if ( $query ) {
				$row = mysql_fetch_array($query);
				$value = $row['number'];
			}
			return $value;
		}

		// 添加福利之挂机
		public function addWelfareHangup ( $token='' ) {
			$number = 1;
			$sql = "insert INTO `game`.`game_welfare_hangup` (`id`, `token`, `time`, `number`) VALUES (NULL, '".$token."', '".time()."', '".$number."');";
			$query = mysql_query($sql);
			return $number;
		}

	}







	$game = new Game();

?>