<?php
header("content-type:text/javascript;charset=utf-8");
$con = mysql_connect('localhost', 'androidh_dom', 'Abc12345') or die(mysql_error());
mysql_select_db('androidh_dom') or die(mysql_error());
mysql_query("SET NAMES UTF8");
if (isset($_POST)) {
	if ($_POST['isAdd'] == 'true') {
		$id_Parent= $_POST['id_Parent'];
		$Name = $_POST['Name'];	
		$Tel = $_POST['Tel'];
						
		$sql = "INSERT INTO `contactTABLE` (`id`, `id_Parent`, `Name`, `Tel`) 
		VALUES (NULL, '$id_Parent', '$Name', '$Tel')";
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