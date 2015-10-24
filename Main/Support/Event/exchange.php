<?php

	// 配置文件
	include("../../Comm/conn.php");

	// 对象方法
	class Exchange {

		// 获取总数量
		public function getList () {
			$sql = "select  `log`.`id`, `user`.`user` , `log`.`time`, `support`.`price`, `support`.`title`, `mode`.`type`, `mode`.`account`, `mode`.`name`, `log`.`remark`  FROM `game_mode` as `mode`  INNER JOIN `game_sponsor_receive` as `log` on `log`.`mid` = `mode`.`mode_id` INNER JOIN `game_user` as `user` on `log`.`uid` = `user`.`token` INNER JOIN `game_sponsor` as `support` on `log`.`sid` = `support`.`sid`";
			$query = mysql_query($sql);
			$array = array();
			if ( $query ) {
				while ( $row = mysql_fetch_array($query) ) {
					array_push($array, $row);
				}
			}
			return array(
					'status' => 1,
					'msg' => '成功获取兑换记录',
					'res' => $array
				);
		}

		// 添加选择
		// public function add ( $token, $mode ) {
		// 	$sql = "insert INTO `game`.`game_count` (`id`, `user_token`, `mode_id`, `time`) VALUES (NULL, '".$token."', '".$mode."', '".time()."');";
		// 	$query = mysql_query($sql);
		// }

		// 修改选择
		public function setProvide ( $key=0 ) {
			$sql = "update `game`.`game_sponsor_receive` SET  `remark` = '".time()."' WHERE  `game_sponsor_receive`.`id` =".$key.";";
			$query = mysql_query($sql);
			return array(
					'status' => 1,
					'msg' => '设置为已发放'
				);
		}

	}


?>