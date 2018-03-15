<?php
header("content-type:text/javascript;charset=utf-8");
$conn = mysql_connect('localhost', 'user', 'password') or die(mysql_error());
mysql_select_db('database_name') or die(mysql_error());
mysql_query("SET NAMES UTF8");
if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {
				
		$column1 = $_GET['column1'];
		$column2 = $_GET['column2'];
							
		$sql = "INSERT INTO dataTABLE (id, column1, column2) 
				VALUES (Null, '$column1', '$column2')";

		$Result = mysql_query($sql);

		if ($Result) {
			echo "True";
		} else {
			echo "False";
		}

	} else echo "Welcome Master UNG";
} else echo "Null Data";
mysql_close();
?>