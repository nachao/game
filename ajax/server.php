<?php


	class Comm {


		public function revise ( $param = [] ) {

			$sql = " "

			return $param;
		} 



		// 获取所有菜单
		public function getAllMenu () {
			$sql = "select * FROM  `menu` LIMIT 0 , 30";
			$query = mysql_query($sql);
			$array = [];
			if( !!$query && mysql_num_rows($query) > 0 ){	//遍历数据
				while( $row = mysql_fetch_array($query)){	//获取单个内容数
					array_push($array, $row);
				}
			}
			return $array;
		}

	}







	$c = new Comm();

?>