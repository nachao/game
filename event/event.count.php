<?php

	// 配置文件
	include("conn.php");

	// 对象方法
	class Guess {

		
		// 获取总数量
		public function getTotal ( $time ) {
			$sql = "select count(`id`) FROM  `game_select` WHERE `time` >=".$time." LIMIT 1";
			$query = mysql_query($sql);
			$row = mysql_fetch_array($query);
			return $row[0];
		}

		// 添加选择
		public function addLog ( $token, $value ) {
			$sql = "insert INTO `game`.`game_count` (`id`, `user_token`, `value`, `time`) VALUES (NULL, '".$token."', '".$value."', '".time()."');";
			$query = mysql_query($sql);
		}

		// 修改选择
		public function selectUpdate ( $uid, $tag, $select ) {
			$sql = "update  `game`.`game_select` SET  `select` =  '".$select."',`time` =  '".time()."' WHERE  `game_select`.`user` =".$uid." AND `tag` = '".$tag."';";
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

		// 获取指定用户的指定场次的指定选项的总注入量
		public function getFieldSelectTotal ( $tag='', $token='', $select=0 ) {
			$sql = "select * FROM  `game_select` WHERE  `user` LIKE '".$token."' AND  `tag` LIKE '".$tag."' AND `select` = ".$select." LIMIT 1";
			$query = mysql_query($sql);
			$value = 0;
			if ( $query ) {
				$row = mysql_fetch_array($query);
				$value = $row['number'];
				if ( !$value ) {
					$value = 0;
				}
			}
			return $value;
		}

		// 获取指定用户的指定场次的所有选项的总注入量
		public function getFieldAllTotal ( $tag='', $token='' ) {
			$value = array();
			for ( $i=1; $i<=9; $i++ ) {
				$fieldUser = $this -> getFieldUser($tag, $i);
				$value[$i]['my'] = $this -> getFieldSelectTotal($tag, $token, $i);	
				$value[$i]['total'] = $this -> getFieldSelectedTotal($tag, $i);	
			}
			return $value;
		}

		// 获取指定场次的指定选项总下注数
		public function getFieldSelectedTotal ( $tag='', $selected=0 ) {
			$sql = "select `number` FROM  `game_select` WHERE  `select` = ".$selected." AND  `tag` LIKE'".$tag."'";
			$query = mysql_query($sql);
			$value = 0;
			if ( $query ) {
				while ( $row = mysql_fetch_array($query) ) {
					$value = $value + $row['number'];
				};
			}
			return $value;
		}

		// 获取指定场次的总下注数
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

		// 更新指定用户的指定场次的押注量
		public function updateFieldSelectedNumber ( $tag='', $token='', $selected=0, $number=0 ) {
			$sql = "update  `game`.`game_select` SET  `number` =  '".$number."' WHERE `game_select`.`user` LIKE '".$token."' AND `tag` LIKE '".$tag."' AND `select` =  '".$selected."';";
			$query = mysql_query($sql);
		}

		// 设置指定用户选择的场次为积分已发放
		public function setFieldUserRrovide ( $tag='', $user='' ) {
			$sql = "update  `game`.`game_select` SET  `provide` =  1 WHERE `game_select`.`user` LIKE '".$token."' AND `tag` LIKE '".$tag."';";
			$query = mysql_query($sql);
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
						$value['res'] = $this -> getFieldAllTotal($row['aid'], $token);				// 所有选项的选择数量
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

	}

	// $guess = new Guess();

?>