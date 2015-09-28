<?php



	header("Content-type: application/json");
	$request = json_decode($GLOBALS['HTTP_RAW_POST_DATA'], true);




	//引用用户功能
	require "../event/server.php";









	$key = $request['key'];

	if ( $key == 'set' ) {

		echo json_encode($c -> revise([
				'cover' => $request['cover'],
				'title' => $request['title'],
				'summary' => $request['summary'],
				'detail' => $request['detail']
			]));


	}



?>