<?php
header("content-type:text/javascript;charset=utf-8");
$con = mysql_connect('localhost', 'androidh_dom', 'Abc12345') or die(mysql_error());
mysql_select_db('androidh_dom') or die(mysql_error());
mysql_query("SET NAMES UTF8");
if (isset($_POST)) {
	if ($_POST['isAdd'] == 'true') {
					
		$Name = $_POST['Name'];	
		$User = $_POST['User'];
		$Password = $_POST['Password'];
		$Gender = $_POST['Gender'];
						
		
		$sql = "INSERT INTO `parentTABLE` (`id`, `Name`, `User`, `Password`, `Gender`) 
		VALUES (NULL, '$Name', '$User', '$Password', '$Gender')";
		$Result = mysql_query($sql);

		if ($Result) {
			echo "True";
		} else {
			echo "False";
		}

	}
}
mysql_close();
?>