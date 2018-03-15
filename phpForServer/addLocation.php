<?php
header("content-type:text/javascript;charset=utf-8");
$con = mysql_connect('localhost', 'androidh_dom', 'Abc12345') or die(mysql_error());
mysql_select_db('androidh_dom') or die(mysql_error());
mysql_query("SET NAMES UTF8");
if (isset($_POST)) {
	if ($_POST['isAdd'] == 'true') {
					
		$Date = $_POST['Date'];	
		$Lat = $_POST['Lat'];
		$Lng = $_POST['Lng'];
							
		
		$sql = "INSERT INTO `locationTABLE` (`id`, `Date`, `Lat`, `Lng`) 
		VALUES (NULL, '$Date', '$Lat', '$Lng')";
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