<?php
$mysql_hostname = "localhost";
$mysql_user = "tcraorth_admin";
$mysql_password = "uJ7-hjP5";
$mysql_database = "tcraorth_tcrabl";
$prefix = "";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysql_select_db($mysql_database, $bd) or die("Could not select database");
?>