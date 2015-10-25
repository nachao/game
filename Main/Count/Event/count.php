<?php

	// 配置文件
	include("../../Comm/conn.php");

	// 对象方法
	class Count {

		// 添加选择
		public function add ( $token='', $duration=0 ) {
			$sql = "insert INTO `game`.`game_count` (`id`, `token`, `duration`, `time`) VALUES (NULL, '".$token."', '".$duration."', '".time()."');";
			$query = mysql_query($sql);
			return array(
					'status' => 1,
					'msg' => '保存成功'
				);
		}

		// 获取本日冠军
		public function get () {
			// $sql = "select  `u`.`user`,min(`c`.`duration`) as `time`  FROM `game_count` as `c`,`game_user` as `u` WHERE `c`.`token` = `u`.`token` AND `c`.`time` > ".strtotime(date('Y-m-d'));
			// $sql = "select * FROM `game_count` WHERE `time` > ".strtotime(date('Y-m-d'))." ORDER BY `duration` ASC LIMIT 0,1";
			$sql = "select `u`.`user`,`c`.`duration` FROM `game_count` as `c`, `game_user` as `u` WHERE `c`.`time` > ".strtotime(date('Y-m-d'))." AND `u`.`token` = `c`.`token` ORDER BY `c`.`duration` ASC LIMIT 0,1";
			$query = mysql_query($sql);
			$value = array(
					'status' => 0,
					'msg' => '暂无冠军'
				);
			if ( $query ) {
				$row = mysql_fetch_array($query);
				if ( $row ) {
					$value = array(
							'status' => 1,
							'msg' => '获取本日数数冠军成功',
							'info' => array(
									'name' => $row['user'],
									'time' => $row['duration']
								)
						);
				}
			}
			return $value;
		}

		// 获取本日冠军
		public function getList () {
			$sql = "select `u`.`user`,`c`.`duration` FROM `game_count` as `c`, `game_user` as `u` WHERE `c`.`time` > ".strtotime(date('Y-m-d'))." AND `u`.`token` = `c`.`token` ORDER BY `c`.`duration` ASC LIMIT 0,30";
			$query = mysql_query($sql);
			$value = array(
					'status' => 0,
					'msg' => '尚未参与'
				);
			if ( $query ) {
				$array = array();
				while ( $row = mysql_fetch_array($query) ) {
					array_push($array, array(
							'name' => $row['user'],
							'duration' => $row['duration']
						));
				}
				$value = array(
						'status' => 1,
						'msg' => '获取成功',
						'res' => $array
					);
			}
			return $value;
		}

		// 获取指定用户本日的参与
		public function getByToken ( $token='' ) {
			$sql = "select * FROM `game_count` WHERE `token` LIKE '".$token."' AND `time` > ".strtotime(date('Y-m-d'));
			$query = mysql_query($sql);
			$value = array(
					'status' => 0,
					'msg' => '本日尚未参与'
				);
			if ( $query ) {
				$row = mysql_fetch_array($query);
				if ( $row['id'] ) {
					$value = array(
							'status' => 1,
							'msg' => '获取本日用户数数信息',
							'info' => array(
									'duration' => $row['duration']
								)
						);
				}
			}
			return $value;
		}

		// 修改
		public function update ( $token='', $time=0 ) {
			$sql = "update  `game`.`game_count` SET  `duration` =  '".$time."' WHERE  `game_count`.`token` =".$token." AND `time` > ".strtotime(date('Y-m-d'));
			$query = mysql_query($sql);
			return array(
					'status' => 1,
					'msg' => '更新成功'
				);
		}

	}


?>