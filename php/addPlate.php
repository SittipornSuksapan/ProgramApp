<?php
header("content-type:text/javascript;charset=utf-8");
$con = mysql_connect('localhost', 'androidh_dom', 'Abc12345') or die(mysql_error());
mysql_select_db('androidh_dom') or die(mysql_error());
mysql_query("SET NAMES UTF8");
if (isset($_POST)) {
	if ($_POST['isAdd'] == 'true') {
					
		$Name = $_POST['Name'];	
		$Lat = $_POST['Lat'];
		$Lng = $_POST['Lng'];
						
		
		$sql = "INSERT INTO `plateTABLE` (`id`, `Name`, `Lat`, `Lng`) 
		VALUES (NULL, '$Name', '$Lat', '$Lng')";
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