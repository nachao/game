<?php

	require './event/conn.php';

	function append ( $total, $stop ) {
		$sql = "insert INTO `fang`.`game_answer` (`id`, `aid`, `time`, `valid`, `under`, `number`) VALUES (NULL, '".md5(time())."', '".time()."', '".($total - 10)."', '".$total."', '".rand(0, 9)."');";
		file_put_contents('liuhui.txt', $sql.$stop);
		mysql_query($sql);
	}

	ignore_user_abort ( TRUE );
	set_time_limit ( 0 );

	$interval = 60 * 1;		// 一场的间隔时间（秒）

	$stop = 0;			// 开始
	$end = 10;			// 总次数

	do {
	    if( $stop >= $end ) 
	    	break;

	    append(time() + $interval, $stop);
	    $stop++;

	    sleep ( $interval );
	} while ( true );

?>