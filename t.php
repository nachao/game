<?php


	// date_default_timezone_set('PRC');
	
	$d = date('Y-m-d');
	echo $d.'<br/>';
	echo strtotime($d).'<br/>';//(date('Y-d-m H:i:s'));

	echo date('Y-m-d H:i:s', strtotime($d)).'<br/>';

	echo strtotime(date('Y-m-d')).'<br/>';
	echo date('Y').'-'.date('d').'<br/>';
	echo strtotime(date('Y').'-'.date('m')).'<br/>';

?>