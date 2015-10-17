<?php

	require './event/conn.php';

	function append ( $total, $stop ) {
		$sql = "insert INTO `game`.`game_answer` (`id`, `aid`, `time`, `valid`, `under`, `number`) VALUES (NULL, '".md5(time())."', '".time()."', '".($total - 10)."', '".$total."', '".rand(0, 9)."');";
		file_put_contents('liuhui.txt', $sql.$stop);
		mysql_query($sql);
	}

	date_default_timezone_set('PRC');
	ignore_user_abort ( TRUE );
	set_time_limit ( 0 );
	$gap = date('h', time()) > 22;

	$interval = 60 * 10;		// 一场的间隔时间（秒），当前为：10 min/场

	$stop = 0;			// 开始
	$end = 10;			// 总次数

	do {
	    if( date('h', time()) > 22 )	//$stop >= $end  
	    	break;

	    append(time() + $interval, $stop);
	    $stop++;

	    sleep ( $interval );
	} while ( true );

?>