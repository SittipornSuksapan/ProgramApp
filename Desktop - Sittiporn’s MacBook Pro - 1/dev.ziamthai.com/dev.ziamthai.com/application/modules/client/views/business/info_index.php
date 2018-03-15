<link href="<?php echo base_url('asset/select2/css/select2.min.css')?>" rel="stylesheet" />
<script src="<?php echo base_url('asset/select2/js/select2.full.js')?>"></script>
<style>
		.top10 {margin-top: 10px;	}
		.top05 {margin-top: 5px;}
		label {font-weight: bold;	}
		.card {	background: #DDD;	}
		div.modal-header > button.close { top: 15px; position: absolute; right: 15px;}
</style>
<?php
	$sTitleHead = "Shop Information";
	$sURL= base_url('index.php/client/business_info/')
?>
<h1><?php echo $sTitleHead; ?></h1>
	<!--?php echo $sURL;	echo "<br><pre>"; print_r($result); echo "</pre>"; ?-->
	<form action="" method="POST" enctype="multipart/form-data">
	<input type="hidden" name='input_bssh_id' id='input_bssh_id' value='<?php echo $info['bssh_id'];?>'>
	<div class="card-block">
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_title">Name</label>
			</div>
			<div class="top col-md-8">
				<input type="text" class="form-control" id="input_bssh_title" name="input_bssh_title" value="<?php echo $info['bssh_title'];?>" placeholder="Shop name" required>
			</div>
		</div>

<!--
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_owner">Biz Owner</label>
			</div>
			<div class="col-md-8">
				<select class="form-control" id='input_bssh_owner' name='input_bssh_owner'>
<?php 
/*
for ($i=0; $i<count($owner); $i++) { 
		$sName='';
		$sSelected='';
		$sName=$owner[$i]['user_name'];
		$sID=$owner[$i]['user_id'];
		if ($sID==$info['bssh_owner']) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sID;?>" <?php echo $sSelected;?>><?php echo $sName;?></option>
<?php } 
 */ ?>
 
				</select>
			</div>
		</div>
-->
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_desc">Slogan</label>
			</div>
			<div class="col-md-8 top">
				<textarea class="form-control" id="input_bssh_desc" name="input_bssh_desc" rows="2" placeholder="Shop Slogan"><?php echo $info['bssh_desc'];?></textarea>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_detail">Detail</label>
			</div>
			<div class="col-md-8 top">
				<textarea class="form-control" id="input_bssh_detail" name="input_bssh_detail" rows="4" placeholder="Shop Description" required><?php echo $info['bssh_detail'];?></textarea>
			</div>
		</div>
<!--			
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_bsth_id">Business Type</label>
			</div>
			<div class="col-md-8">
				<select class="form-control" id='input_bssh_bsth_id' name='input_bssh_bsth_id'>
<?php /*
for ($i=0; $i<count($bssh_type); $i++) { 
		$sName='';
		$sSelected='';
		$sName=$bssh_type[$i]['bsth_title'];
		$sID=$bssh_type[$i]['bsth_id'];
		if ($sID==$info['bsth_id']) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sID;?>" <?php echo $sSelected;?>><?php echo $sName;?></option>
<?php } 
 */
 ?>
				</select>
			</div>
		</div>
-->
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
				<input type='hidden' name='file_bssh_oldhead' value='<?php echo $info['bssh_imghead'];?>'>
			</div>
			<div class="col-md-8 text-md-left">
				<div class="input-group">
<?php if (! empty($info['bssh_imghead'])) { 
	$sFile=sprintf('uploads/client/%d/shop/%s',$info['bssh_id'],$info['bssh_imghead']);
	$sClick=sprintf("showImage('dvModalShowImage','Shop Header','%s',''); return false;",base_url($sFile));
?>
						<div class="input-group-addon"><button onclick="<?php echo $sClick;?>"><i class="fa fa-image"></i></button></div>
<?php } ?>
					<input class="form-control" type="file" id="file_bssh_imgheader" name='file_bssh_imghead' placeholder="Shop image" novalidate>
				</div>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right top10">
				<label for="file_bssh_imgfront">Shop Logo</label>
				<input type='hidden' name='file_bssh_oldfront' value='<?php echo $info['bssh_imgfront'];?>'>
			</div>
			<div class="col-md-8 text-md-left">
				<div class="input-group">
<?php if (! empty($info['bssh_imgfront'])) { 
	$sFile=sprintf('uploads/client/%d/shop/%s',$info['bssh_id'],$info['bssh_imgfront']);
	$sClick=sprintf("showImage('dvModalShowImage','Shop Logo','%s','Shop Logo'); return false;", base_url($sFile));
?>
						<div class="input-group-addon"><button onclick="<?php echo $sClick;?>"><i class="fa fa-image"></i></button></div>
<?php } ?>
					<input class="form-control" type="file" id="file_bssh_imgfront" name='file_bssh_imgfront' placeholder="Shop logo" novalidate>
				</div>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right top10">
				<label for="input_bssh_loc1">Street Address</label>
			</div>
			<div class="col-md-3">
			<input type="text" class="form-control col-md-11" id="input_addr1" name="input_addr1" value="<?php echo $info['addr1'];?>">
			</div>
			<div class="col-md-2 text-md-right top10">
				<label for="input_bssh_loc1">Apartment No.</label>
			</div>
			<div class="col-md-3">
			<input type="text" class="form-control col-md-11" id="input_addr2" name="input_addr2" value="<?php echo $info['addr2'];?>">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right top10">
				<label for="input_bssh_loc1">City</label>
			</div>
			<div class="col-md-4">
					<input type="text" class="form-control col-md-11" id="input_city" name="input_city" value="<?php echo $info['city'];?>">
			</div>
			<div class="col-md-1 text-md-right top10">
				<label for="input_state">State</label>
			</div>
			<div class="col-md-3">
				<select class="form-control" id='input_state' name='input_state'>
<?php for ($i=0; $i<count($state); $i++) { 
		$sName='';
		$sSelected='';
		$sLongName=sprintf('(%s) %s ',$state[$i]['loch_abrv'],$state[$i]['loch_name']);
		$sShortName=trim($state[$i]['loch_abrv']);
		if ($sShortName==trim($info['state'])) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sShortName;?>" <?php echo $sSelected;?>><?php echo $sLongName;?></option>
<?php } ?>
				</select>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right top10">
				<label for="input_bssh_loc1">Country</label>
			</div>
			<div class="col-md-4">
					<input type="text" class="form-control col-md-8" id="input_bssh_loc1" name="input_bssh_loc1" value="USA" readonly>
			</div>
			<div class="col-md-2 text-md-right top10">
				<label for="input_bssh_zipcode">Zipcode</label>
			</div>
			<div class="col-md-2">
				<input type="number" class="form-control" name="input_bssh_zipcode"  id="input_bssh_zipcode" value="<?php echo $info['bssh_zipcode']?>" min="0" max="99999" placeholder="00000">
			</div>
		</div>
<!--
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_address">Address</label>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control col-md-8" name="input_bssh_address" id="input_bssh_address" value="<?php echo $info['bssh_address'];?>" placeholder="Address" required>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_zipcode">Zipcode</label>
			</div>
			<div class="col-md-8">
				<input type="number" class="form-control col-md-8" name="input_bssh_zipcode"  id="input_bssh_zipcode" value="<?php echo $info['bssh_zipcode']?>" min="0" max="99999" placeholder="00000">
			</div>
		</div>
-->
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right top10">
				<label for="input_bssh_maps">MAPS</label>
			</div>
			<div class="col-md-4">
				<input type="text" class="form-control col-md-8" name="input_bssh_maps" id="input_bssh_maps" value="<?php echo $info['bssh_maps'];?>" placeholder="MAPS">
			</div>
			<div class="col-md-2 text-md-right top10">
				<label for="input_bssh_time_zone">Time Zone</label>
			</div>
			<div class="col-md-2">
					<select class="form-control" id='input_bssh_time_zone' name='input_bssh_time_zone'>
	<?php for ($iTZ=-23; $iTZ<24; $iTZ++) { 
		$sSign=($iTZ>0)?'+':'-';
		$sHour=(abs($iTZ)/2);
		$sMin=((abs($iTZ)%2)==1)?'30':'00';
		$sValue=$iTZ/12;
		$sSelected='';
		$sName=sprintf('%s%02d:%s',$sSign,$sHour,$sMin);
		if($sName==$info['bssh_time_zone']) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sName;?>" <?php echo $sSelected;?>>UTC <?php echo $sName;?></option>
	<?php } ?>
				</select>
			</div>
		</div>
<!--
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right text-nowrap">
				<label for="input_bssh_delivery_area">Delivery zipcode</label>
			</div>
			<div class="col-md-8">
					<select multiple="yes" type="text" class="form-control" id="input_bssh_delivery_area" name="input_bssh_delivery_area[]">
		<?php /* if( !empty($info['bssh_delivery_area'])) {
			foreach (explode('||',$info['bssh_delivery_area']) as $sTag) {
				if (! empty($sTag))	echo sprintf("\n<option value='%s' selected>%s</option>",$sTag,$sTag);
			}
		}
*/?>									
					</select>
			</div>
		</div>
-->
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_website">Website</label>
			</div>
			<div class="col-md-8">
				<input type="url" class="form-control" id="input_bssh_website" name="input_bssh_website" value="<?php echo $info['bssh_website'];?>" placeholder="Shop URL" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_email">Email</label>
			</div>
			<div class="col-md-8">
				<input type="email" class="form-control" id="input_bssh_email" name="input_bssh_email" value="<?php echo $info['bssh_email'];?>" placeholder="Shop email" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_phone">Contact</label>
			</div>
			<div class="col-md-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-phone"></i> Phone</span>	
					<input type="tel" class="form-control" name="input_bssh_phone" id="input_bssh_phone" value="<?php echo $info['bssh_phone'];?>" placeholder="Shop telephone number">
					<span class="input-group-addon"><i class="fa fa-mobile-phone"></i> Mobile</span>
					<input type="tel" class="form-control" id="input_bssh_mobile" name="input_bssh_mobile" value="<?php echo $info['bssh_mobile'];?>" placeholder="Shop mobile number">
				</div>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_tax_rate">TAX RATE</label>
			</div>
			<div class="col-md-2">
				<input type="number" class="form-control" id="input_tax_rate" name="input_tax_rate" value="<?php echo $info['tax_rate'];?>" placeholder="0.00" step=".005" novalidate>
			</div>
			<div class="col-md-4 form-check-inline">
				<label for="input_tax_delivery" class="form-check-label top05">
				<input type="checkbox" class="form-check-input" id="input_tax_delivery" name="input_tax_delivery" <?php echo ($info['tax_delivery']==1)?'CHECKED':''?>>
				Included Tax on Delivery
				</label>
			</div>
		</div>


		<div class="row from-group">
			<div class="col-md-12 text-md-right top10">
					<button name='btnSave' class="btn btn-warning" id="btnSave"><i class="fa fa-floppy-o"></i> Save</button>
			</div>
		</div>
	</div>
	</form>

<div class="modal hide" id='dvModalShowImage' tabindex="-1" role="dialog" aria-labelledby="spModalTitle" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
				<h5 class="modal-title" id="spModalTitle">Title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
				<img class="img-fluid rounded" id="imgShow" src=''><br>
				<span id="spShowImage"></span>
      </div>
    </div>
  </div>
</div>
<script>
	var data=<?php echo json_encode($sub_data);?>;
	$('#input_bssh_subcate').select2({
		data : data
	});
	
	function showImage(dvModal,Title,Img,ImgTitle) {
		$('#imgShow').attr('src','');
		$('#spModalTitle').html(Title);
		$('#spShowImage').html(ImgTitle);
		$('#imgShow').attr('src',Img);
		$('#'+dvModal).modal('show');
	}
</script>
<?php /* echo "<div class='hide'><pre>"; print_r($info); echo "</pre></div>"; */?>