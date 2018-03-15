<style>
		.top05 {margin-top: 5px;}
		.top10 {margin-top: 10px;	}
		.top15 {margin-top: 15px;	}
		.top20 {margin-top: 20px;	}
		.bottom05 {margin-bottom: 5px;}
		.bottom10 {margin-bottom: 10px;}
		.bottom15 {margin-bottom: 15px;}
		.bottom20 {margin-bottom: 20px;}
		label {font-weight: bold;	}
		.card {	background: #DDD;	}
		div.modal-header > button.close { top: 15px; position: absolute; right: 15px;}
		div.input-group > button.btn-sm { margin-right: 1px; margin-left: 1px;}
		.btn-outline-success.focus { background-color: #5cb85c !important;
    border-color: #5cb85c !important;}
		span.menu-title { 
			display:inline-block; line-height: 24px; width: 100%; height: 24px; overflow: hidden; overflow-x: auto; 
		}
		@media(max-width:767px) {
			span.menu-title { line-height: 18px; font-size: 18px; height: 22px;}
		}
</style>
<h1>Policy Setup</h1>
<?php /*
	echo "<pre>"; 
	echo "info\n"; print_r($info); 
	echo "info\n"; print_r($result); 
	echo "</pre>"; 
 */
?>
<table width='100%' border='1'>
	<tr><th colspan='2'><button><i class="fa fa-plus"></i> Add </button></th><th>Head</th><th>Name</th></tr>
<?php if (count($info)) {
	for ($iCount=0; $iCount<count($info); $iCount++) {
		$data=$info[$iCount];
?>
	<tr>
		<td><button><i class="fa fa-pencil"></i></button></td>
		<td><button><i class="fa fa-remove"></i></button></td>
		<td valign="top"><?php echo $data['head_name']?></td>
		<td><?php echo sprintf("<strong>%s</strong><br>%s",$data['policy_name'],$data['detail']); ?></td>
	</tr>
<?php }  } ?>
</table>

