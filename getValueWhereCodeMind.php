<?php
header("content-type:text/javascript;charset=utf-8");  
$con=mysql_connect('localhost','user','password')or die(mysql_error());
mysql_select_db('databaseName')or die(mysql_error());
mysql_query("SET NAMES UTF8");

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {
					
		$Code = $_GET['Code'];					
				
	$sql="SELECT * FROM childTABLE WHERE Code = '$Code'" ;
    $res=mysql_query($sql);
	while($row=mysql_fetch_assoc($res)){
	$output[]=$row;
	}
	print(json_encode($output));

		 mysql_query($sql);
	}
}
mysql_close();
?>