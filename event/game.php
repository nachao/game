<?php

	// 配置文件
	include("conn.php");

	// 对象方法
	class Game {


		// 获取指定用户
		// public function getUser () {
		// 	$sql = "select * FROM  `menu` LIMIT 0 , 30";
		// 	$query = mysql_query($sql);
		// 	$array = [];
		// 	if( !!$query && mysql_num_rows($query) > 0 ){	//遍历数据
		// 		while( $row = mysql_fetch_array($query)){	//获取单个内容数
		// 			array_push($array, $row);
		// 		}
		// 	}
		// 	return $array;
		// }

		// 获取所有菜单
		// public function getAllMenu () {
		// 	$sql = "select * FROM  `menu` LIMIT 0 , 30";
		// 	$query = mysql_query($sql);
		// 	$array = [];
		// 	if( !!$query && mysql_num_rows($query) > 0 ){	//遍历数据
		// 		while( $row = mysql_fetch_array($query)){	//获取单个内容数
		// 			array_push($array, $row);
		// 		}
		// 	}
		// 	return $array;
		// }




		// 查询用户基本信息
		public function userBe( $uid = '' ){
			$sql = "select * FROM  `game_user` WHERE  `user` LIKE  '".$uid."' LIMIT 0 , 30";
			$query = mysql_query($sql);
			$row = mysql_fetch_array($query);
			return $row;
		}

		// 添加用户基本信息
		public function userAdd( $key = '', $uid = '', $num = 10 ){
			if ( $uid ) {
				$sql = "insert INTO `fang`.`game_user` (`id`, `key`, `user`, `score`) VALUES (NULL, '".$key."', '".$uid."', '".$num."');";
				// echo $sql;
				$query = mysql_query($sql);
			}
		}


		// 获取当前状态信息
		public function selectStatus () {
			$sql = "select * FROM  `game_status` WHERE  `id` =0 LIMIT 0 , 30;";
			$query = mysql_query($sql);
			$row = mysql_fetch_array($query);
			return $row;
		}

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

		// 获取总数量
		public function getTotal ( $time ) {
			$sql = "select count(`id`) FROM  `game_select` WHERE `time` >=".$time." LIMIT 1";
			$query = mysql_query($sql);
			$row = mysql_fetch_array($query);
			return $row[0];
		}

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

		// 添加选择
		public function selectAdd ( $uid, $tag, $select ) {
			$sql = "insert INTO `fang`.`game_select` (`id`, `user`, `select`, `time`, `tag`) VALUES (null, '".$uid."', '".$select."', '".time()."', '".$tag."');";
			$query = mysql_query($sql);
			// print_r($query);
		}

		// 修改选择
		public function selectUpdate ( $uid, $tag, $select ) {
			$sql = "update  `fang`.`game_select` SET  `select` =  '".$select."',`time` =  '".time()."' WHERE  `game_select`.`user` =".$uid." AND `tag` = '".$tag."';";
			$query = mysql_query($sql);
		}

		// 后台控制
		public function adminUpdata ( $status=0, $start_time=0, $end_time=0, $selected=0 ) {
			$sql = "update  `fang`.`game_status` SET  `status` =  '".$status."', `selected` =  '".$selected."', `start_time` =  '".$start_time."', `end_time` =  '".$end_time."' WHERE  `game_status`.`id` =0;";
			$query = mysql_query($sql);
		}





		// 获取指定场次的指定的用户的指定选项
		public function getFieldUserSelected ( $tag='', $uid='', $selected=0 ) {
			$sql = "select * FROM  `game_select` WHERE  `select` = ".$selected." AND  `tag` ='".$tag."' AND `user` LIKE '".$uid."' LIMIT 1";
			$query = mysql_query($sql);
			$value = null;
			if ( $query ) {
				$value = mysql_fetch_array($query);
			}
			return $value;
		}

		// 获取指定场次的指定用户
		public function getFieldUser ( $tag='', $user='' ) {
			$sql = "select count(`id`) FROM  `game_select` WHERE  `user` LIKE '".$user."' AND  `tag` LIKE '".$tag."' LIMIT 1";
			$query = mysql_query($sql);
			$value = 0;
			if ( $query ) {
				$row = mysql_fetch_array($query);
				$value = $row[0];
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
		public function setFieldUserSelected ( $tag='', $user='', $selected=0 ) {
			$sql = "update  `fang`.`game_select` SET  `select` =  '".$selected."' WHERE `game_select`.`user` LIKE '".$user."' AND `tag` LIKE '".$tag."';";
			$query = mysql_query($sql);
		}

		// 设置指定用户选择的场次为积分已发放
		public function setFieldUserRrovide ( $tag='', $user='' ) {
			$sql = "update  `fang`.`game_select` SET  `provide` =  1 WHERE `game_select`.`user` LIKE '".$user."' AND `tag` LIKE '".$tag."';";
			$query = mysql_query($sql);
		}




		// 获取指定用户
		public function getUser ( $uid='' ) {
			$sql = "select *  FROM `game_user` WHERE `user` LIKE '".$uid."'";
			$query = mysql_query($sql);
			$value = null;
			if ( $query ) {
				$value = mysql_fetch_array($query);
			}
			return $value;
		}

		// 设置指定用户的积分
		public function setUserScore ( $user='', $sum=0 ) {
			$info = $this -> getUser($user);
			if ( $info ) {
				$sql = "update `fang`.`game_user` SET `score` = '".($info['score'] + $sum)."' WHERE `game_user`.`user` LIKE '".$user."';";
				$query = mysql_query($sql);
			}
		}



		// 获取答案
		public function getGameAnswer ( $uid='' ) {
			$sql = "select *  FROM `game_answer` WHERE `under` >= ".time();
			$query = mysql_query($sql);
			if ( $query ) {
				$row = mysql_fetch_array($query);

				$select = $this -> getFieldUserSelected($row['aid'], $uid, $row['number']);
				$isChecked = $select;

				if ( $isChecked ) {
					$selectedTotal = $this -> getFieldSelectedTotal($row['aid'], $row['number']);
					$total = $this -> getFieldTotal($row['aid']);
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
				} else {

					if ( $isChecked && $isChecked['provide'] == 0 ) {
						$this -> setUserScore($uid, $gain);
						$this -> setFieldUserRrovide($row['aid'], $uid);
					} else {
						$gain = 0;
					}

					$value['status'] = 2;				// 状态二：公布答案
					$value['end'] = $row['under'];		// 本场结束时间
					$value['result'] = $row['number'];	// 答案
					$value['get'] = $gain;				// 收获积分数量
				}

				$value['isChecked'] = $isChecked;		// 是否选中
				$value['get'] = $gain;					// 收获积分数量
				return $value;
			}
		}

	}







	$game = new Game();

?>