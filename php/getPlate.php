<?php
header("content-type:text/javascript;charset=utf-8");  
$con=mysql_connect('localhost','androidh_dom','Abc12345')or die(mysql_error());
mysql_select_db('androidh_dom')or die(mysql_error());
mysql_query("SET NAMES UTF8");
$sql="SELECT * FROM plateTABLE";
$res=mysql_query($sql);
while($row=mysql_fetch_assoc($res)){
	$output[]=$row;
}
print(json_encode($output));
mysql_close();
?>