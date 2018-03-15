<?php
header("content-type:text/javascript;charset=utf-8");
$conn = mysql_connect('localhost', 'androidh_dom', 'Abc12345') or die(mysql_error());
mysql_select_db('androidh_dom') or die(mysql_error());
mysql_query("SET NAMES UTF8");
if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {
				
		$Code = $_GET['Code'];
		$Name = $_GET['Name'];
		$Gender = $_GET['Gender'];
		$id_Parent = $_GET['id_Parent'];

		
							
		$sql = "INSERT INTO childTABLE (id, Code, Name, Gender, id_Parent, Lat, Lng) 
				VALUES (Null, '$Code', '$Name', '$Gender', '$id_Parent', "0", "0")";

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