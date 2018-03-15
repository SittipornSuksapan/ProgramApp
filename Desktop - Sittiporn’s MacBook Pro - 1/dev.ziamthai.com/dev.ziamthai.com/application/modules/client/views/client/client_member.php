<link href="<?php echo base_url('asset/select2/css/select2.min.css')?>" rel="stylesheet" />
<script src="<?php echo base_url('asset/select2/js/select2.full.js')?>"></script>
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
<?php 
/* echo "<div class='hide'><pre>"; print_r($info); echo "</pre></div>"; */
$arrRole[1]=array('name'=>'System Administrator','role'=>'Super User');
$arrRole[3]=array('name'=>'Shop Administrator','role'=>'Shop Adminstrator (All Role)');
$arrRole[5]=array('name'=>'Shop Staff','role'=>'Shop Staff');
$arrRole[99]=array('name'=>'Undefined Level','role'=>'Undefined Role');
?>
<h1>Member in '<?php echo $access_workspace['name'];?>' </h1>

<table class="table table-bordered table-striped">
	<thead></thead>
	<tr>
		<th class="text-md-center" colspan="2"><a class="btn btn-primary" href="<?php echo base_url('index.php/client/customer_member/add/');?>"><i class="fa fa-plus"></i> Add</a></th>
		<th>Picture</th>
		<th>Display</th>
		<th>Level</th>
		<th>Role</th>
	</tr>
	<tbody>
<?php 
	for ($iCount=0; $iCount<count($member); $iCount++) { 
		$sClickDelete=sprintf("delMember(%d,%d,'%s')",$access_workspace['id'],$member[$iCount]['memh_id'],$member[$iCount]['memh_display']);
		$sURLEdit=site_url('client/customer_member/edit/');
?>
		<tr>
			<?php if ($member[$iCount]['level'] > 3) { ?>
			<form method="post" action="<?php echo site_url('client/customer_member/edit/');?>">
			<input type="hidden" name='memID' value="<?php echo $member[$iCount]['memh_id'];?>">
			<input type="hidden" name='shopID' value="<?php echo $access_workspace['id'];?>">
			<td class="text-md-center">
				<button class="btn btn-warning"><i class="fa fa-pencil-square-o"></i> Edit</button>
			</td>
			</form>
			<td class="text-md-center">
				<button class="btn btn-danger" onclick="<?php echo $sClickDelete;?>"><i class="fa fa-remove"></i> Delete</button>
			</td>
			<?php } else { ?>
			<td class="text-md-center" colspan="2">
			</td>
			<?php }?>
			<td><img src="<?php echo $member[$iCount]['memh_pictureUrl'];?>" width="50" height="50"></td>
			<td><?php echo sprintf("%s<br>%s %s",$member[$iCount]['memh_display'],$member[$iCount]['memh_firstname'],$member[$iCount]['memh_lastname']);?></td>
			<td><?php echo $arrRole[$member[$iCount]['level']]['name']; ?></td>
			<td>
			<?php 
				if ($member[$iCount]['level'] <= 3) { 
					echo $arrRole[$member[$iCount]['level']]['name']; 
				} else {
					$sView=sprintf("showPolicy(%d,%d);",$access_workspace['id'],$member[$iCount]['memh_id']);
					echo "<button class='btn btn-default' onClick='".$sView."'>view policy</button>";
				}
			?>
			</td>
		</tr>
<?php } ?>
	</tbody>
</table>
<div>
<?php 
/*

echo "<pre>";
if (! empty($member)) print_r($member);
if (! empty($request)) print_r($request);  
echo "</pre>";

*/
?>
</div>
<?php require_once("client_member.add.js.php"); ?>

