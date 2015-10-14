<?php

	//本地测试
	$dname = "fang";
	$daddress = "localhost";
	$daccount = "root";
	$dpwd = "";


	//服务器
	// $dname = "ux73";
	// $daddress = "ux73.gotoftp2.com";
	// $daccount = "ux73";
	// $dpwd = "22xs5kpfux73";


	//链接
	$conn = @ mysql_connect($daddress, $daccount, $dpwd);
	mysql_select_db($dname, $conn);
	mysql_query("SET NAMES 'UTF8'");












?>