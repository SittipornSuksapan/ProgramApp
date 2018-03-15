<link href="<?php echo base_url('asset/select2/css/select2.min.css')?>" rel="stylesheet" />
<script src="<?php echo base_url('asset/select2/js/select2.full.js')?>"></script>
<style>
		.top10 {
				margin-top: 10px;
		}
		.top05 {
				margin-top: 5px;
		}
		label {
				font-weight: bold;
		}
		.card {
				background: #DDD;
		}
</style>
<?php
	$sBackClick = sprintf("%s", base_url('index.php/admin_panel/business_header/')); 
	$sTitleBack = "Back to Biz Shop Information";
	$sTitleHead = "Biz Shop Information";
?>
<div class="card card-outline-secondary">
	<div class="card-header h4 card-success">
			<a href="<?php echo $sBackClick; ?>" class="btn btn-sm btn-primary" title="<?php echo $sTitleBack; ?>">
		<i class="fa fa-chevron-left"></i> Back</a> <?php echo $sTitleHead; ?>  
	</div>
	<form action="" method="POST" enctype="multipart/form-data">
	<div class="card-block">
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_title">Name</label>
			</div>
			<div class="top col-md-8">
				<input type="text" class="form-control" id="input_bssh_title" name="input_bssh_title" value="<?php echo (! empty($_POST['input_bssh_title']))?$_POST['input_bssh_title']:'';?>" placeholder="Shop name" required>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_desc">Slogan</label>
			</div>
			<div class="col-md-8 top">
				<textarea class="form-control" id="input_bssh_desc" name="input_bssh_desc" rows="2" placeholder="Shop Slogan"><?php echo (! empty($_POST['input_bssh_desc']))?$_POST['input_bssh_desc']:'';?></textarea>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_detail">Detail</label>
			</div>
			<div class="col-md-8 top">
				<textarea class="form-control" id="input_bssh_detail" name="input_bssh_detail" rows="4" placeholder="Shop Description" required><?php echo (! empty($_POST['input_bssh_detail']))?$_POST['input_bssh_detail']:'';?></textarea>
			</div>
		</div>
			
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_bsth_id">Business Type</label>
			</div>
			<div class="col-md-8">
				<select class="form-control" id='input_bssh_bsth_id' name='input_bssh_bsth_id'>
<?php for ($i=0; $i<count($bssh_type); $i++) { 
		$sName='';
		$sSelected='';
		$sName=$bssh_type[$i]['bsth_title'];
		$sID=$bssh_type[$i]['bsth_id'];
		if ($sID==$_POST['input_bssh_bsth_id']) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sID;?>" <?php echo $sSelected;?>><?php echo $sName;?></option>
<?php } ?>
				</select>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right text-nowrap">
				<label for="input_bssh_subcate">Biz Subcategory</label>
			</div>
			<div class="col-md-8">
					<select multiple="yes" type="text" class="form-control" id="input_bssh_subcate" name="input_bssh_subcate[]">
<?php if( !empty($subcategory)) {
			foreach (explode('||',$subcategory) as $aInfo) {
				list($sID,$sTag)=explode('=',$aInfo);
				if (! empty($sTag))	echo sprintf("\n<option value='%d' selected>%s</option>",$sID,$sTag);
			}
		}
?>									
					</select>
			</div>
		</div>
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right top10">
				<label for="file_bssh_imghead">Shop Image</label>
			</div>
			<div class="col-md-8 text-md-left">
				<input class="form-control" type="file" id="file_bssh_imghead" name='file_bssh_imghead' placeholder="Shop image" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right top10">
				<label for="file_bssh_imgfront">Shop Logo</label>
			</div>
			<div class="col-md-8 text-md-left">
				<input class="form-control" type="file" id="file_bssh_imgfront" name='file_bssh_imgfront' placeholder="Shop logo" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_loc1">country</label>
			</div>
			<div class="col-md-8">
					<input type="text" class="form-control col-md-8" id="input_bssh_loc1" name="input_bssh_loc1" value="USA" readonly>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_loc2">State</label>
			</div>
			<div class="col-md-8">
				<select class="form-control" id='input_bssh_loc2' name='input_bssh_loc2'>
<?php for ($i=0; $i<count($bssh_state); $i++) { 
		$sName='';
		$sSelected='';
		$sLongName=$bssh_state[$i]['loch_name'];
		$sShortName=$bssh_state[$i]['loch_abrv'];
		if ($sShortName==$_POST['input_bssh_loc2']) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sShortName;?>" <?php echo $sSelected;?>><?php echo $sLongName;?></option>
<?php } ?>
				</select>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_address">Address</label>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control col-md-8" name="input_bssh_address" id="input_bssh_address" value="<?php echo (! empty($_POST['input_bssh_address']))?$_POST['input_bssh_address']:'';?>" placeholder="Address" required>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_zipcode">Zipcode</label>
			</div>
			<div class="col-md-8">
				<input type="number" class="form-control col-md-8" name="input_bssh_zipcode"  id="input_bssh_zipcode" value="<?php echo (! empty($_POST['input_bssh_zipcode']))?$_POST['input_bssh_zipcode']:'';?>" min="0" max="99999" placeholder="00000">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_maps">Maps</label>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control col-md-8" name="input_bssh_maps" id="input_bssh_maps" value="<?php echo (! empty($_POST['input_bssh_maps']))?$_POST['input_bssh_maps']:'';?>" placeholder="MAPS">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right text-nowrap">
				<label for="input_bssh_delivery_area">Delivery zipcode</label>
			</div>
			<div class="col-md-8">
					<select multiple="yes" type="text" class="form-control" id="input_bssh_delivery_area" name="input_bssh_delivery_area[]">
		<?php if(! empty($_POST['input_bssh_delivery_area'])) {
			foreach ($_POST['input_bssh_delivery_area'] as $sTag) {
				echo sprintf("\n<option value='%s' selected>%s</option>",$sTag,$sTag);
			}
		}
?>									
					</select>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_website">website</label>
			</div>
			<div class="col-md-8">
				<input type="url" class="form-control" id="input_bssh_website" name="input_bssh_website" value="<?php echo (! empty($_POST['input_bssh_website']))?$_POST['input_bssh_website']:'';?>" placeholder="Shop URL" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_email">Email</label>
			</div>
			<div class="col-md-8">
				<input type="email" class="form-control" id="input_bssh_email" name="input_bssh_email" value="<?php echo (! empty($_POST['input_bssh_email']))?$_POST['input_bssh_email']:'';?>" placeholder="Shop email" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_phone">Contact</label>
			</div>
			<div class="col-md-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-phone"></i> Phone</span>	
					<input type="tel" class="form-control" name="input_bssh_phone" id="input_bssh_phone" value="<?php echo (! empty($_POST['input_bssh_phone']))?$_POST['input_bssh_phone']:'';?>" placeholder="Shop telephone number">
					<span class="input-group-addon"><i class="fa fa-mobile-phone"></i> Mobile</span>
					<input type="tel" class="form-control" id="input_bssh_mobile" name="input_bssh_mobile" value="<?php echo (! empty($_POST['input_bssh_mobile']))?$_POST['input_bssh_mobile']:'';?>" placeholder="Shop mobile number">
				</div>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_time_zone">Time Zone</label>
			</div>
			<div class="col-md-8">
					<select class="form-control" id='input_bssh_time_zone' name='input_bssh_time_zone'>
<?php for ($iTZ=-23; $iTZ<24; $iTZ++) { 
		$sSign=($iTZ>0)?'+':'-';
		$sHour=(abs($iTZ)/2);
		$sMin=((abs($iTZ)%2)==1)?'30':'00';
		$sValue=$iTZ/12;
		$sSelected='';
		$sName=sprintf('%s%02d:%s',$sSign,$sHour,$sMin);
		if($sName==$_POST['input_bssh_time_zone']) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sName;?>" <?php echo $sSelected;?>>UTC <?php echo $sName;?></option>
<?php } ?>
				</select>
			</div>
		</div>

		<div class="row from-group">
			<div class="col-md-12 text-md-right">
					<button name='btnSave' class="btn btn-success" id="btnSave"><i class="fa fa-floppy-o"></i> Save</button>
			</div>
		</div>
	</div>
	</form>
</div>
<script>
	var data=<?php echo json_encode($sub_data);?>;
	$('#input_bssh_delivery_area').select2({
		tags: true,
		tokenSeparators: [',', ' ']
	});
	
	$('#input_bssh_delivery_area').select2({
		tags: true,
	});	

	$('#input_bssh_subcate').select2({
		data : data
	});
	
<?php
	if (! empty($bssh_id)) {
?>
	alert('Insert ID='+<?php echo $bssh_id;?>);
	window.location.href='<?php echo base_url('index.php/admin_panel/business_header/edit1/?id='.$bssh_id);?>';
<?php 
	}
?>	
	
</script>