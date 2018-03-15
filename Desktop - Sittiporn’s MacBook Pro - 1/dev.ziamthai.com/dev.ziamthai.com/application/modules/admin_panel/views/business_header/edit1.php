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
		div.modal-header > button.close { top: 15px; position: absolute; right: 15px;}
</style>
<?php
	$sBackClick = sprintf("%s", base_url('index.php/admin_panel/business_header/')); 
	$sTitleBack = "Back to biz shop information";
	$sTitleHead = "Shop Information";
?>
<div class="card card-outline-secondary">
	<div class="card-header h4 card-warning">
<?php if ($user_level!='admin') {?>
		<?php echo $sTitleHead; ?> 
<?php } else {?>
		<div class="col-md-6 top10">
			<a href="<?php echo $sBackClick; ?>" class="btn btn-sm btn-primary" title="<?php echo $sTitleBack; ?>">
			<i class="fa fa-chevron-left"></i> Back</a> <?php echo $sTitleHead; ?> 
		</div>
		<div class="col-md-6 text-md-right">
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit2/?id='.$bssh_id);?>'>Images</a>
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit3/?id='.$bssh_id);?>'>Hours</a>
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/menu_category/?id='.$bssh_id);?>'>Menu</a>
		</div>
<?php }?>
	</div>
	<form action="" method="POST" enctype="multipart/form-data">
	<input type="hidden" name='input_bssh_id' id='input_bssh_id' value='<?php echo $bssh_data['bssh_id'];?>'>
	<div class="card-block">
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_title">Name</label>
			</div>
			<div class="top col-md-8">
				<input type="text" class="form-control" id="input_bssh_title" name="input_bssh_title" value="<?php echo $bssh_data['bssh_title'];?>" placeholder="Shop name" required>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_owner">Biz Owner</label>
			</div>
			<div class="col-md-8">
				<select class="form-control" id='input_bssh_owner' name='input_bssh_owner'>
<?php for ($i=0; $i<count($owner); $i++) { 
		$sName='';
		$sSelected='';
		$sName=$owner[$i]['user_name'];
		$sID=$owner[$i]['user_id'];
		if ($sID==$bssh_data['bssh_owner']) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sID;?>" <?php echo $sSelected;?>><?php echo $sName;?></option>
<?php } ?>
				</select>
			</div>
		</div>
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_desc">Slogan</label>
			</div>
			<div class="col-md-8 top">
				<textarea class="form-control" id="input_bssh_desc" name="input_bssh_desc" rows="2" placeholder="Shop Slogan"><?php echo $bssh_data['bssh_desc'];?></textarea>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_detail">Detail</label>
			</div>
			<div class="col-md-8 top">
				<textarea class="form-control" id="input_bssh_detail" name="input_bssh_detail" rows="4" placeholder="Shop Description" required><?php echo $bssh_data['bssh_detail'];?></textarea>
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
		if ($sID==$bssh_data['bsth_id']) $sSelected=' SELECTED';
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
				<input type='hidden' name='file_bssh_oldhead' value='<?php echo $bssh_data['bssh_imghead'];?>'>
			</div>
			<div class="col-md-8 text-md-left">
				<div class="input-group">
<?php if (! empty($bssh_data['bssh_imghead'])) { 
	$sFile=sprintf('uploads/header/%s',$bssh_data['bssh_imghead']);
	$sClick=sprintf("showImage('dvModalShowImage','Biz Header','%s','Biz Header'); return false;",base_url($sFile));
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
				<input type='hidden' name='file_bssh_oldfront' value='<?php echo $bssh_data['bssh_imgfront'];?>'>
			</div>
			<div class="col-md-8 text-md-left">
				<div class="input-group">
<?php if (! empty($bssh_data['bssh_imgfront'])) { 
	$sFile=sprintf('uploads/front/%s',$bssh_data['bssh_imgfront']);
	$sClick=sprintf("showImage('dvModalShowImage','Biz Logo','%s','Biz Logo'); return false;", base_url($sFile));
?>
						<div class="input-group-addon"><button onclick="<?php echo $sClick;?>"><i class="fa fa-image"></i></button></div>
<?php } ?>
					<input class="form-control" type="file" id="file_bssh_imgfront" name='file_bssh_imgfront' placeholder="Shop logo" novalidate>
				</div>
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
		if ($sShortName==$bssh_data['bssh_loc2']) $sSelected=' SELECTED';
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
				<input type="text" class="form-control col-md-8" name="input_bssh_address" id="input_bssh_address" value="<?php echo $bssh_data['bssh_address'];?>" placeholder="Address" required>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_zipcode">Zipcode</label>
			</div>
			<div class="col-md-8">
				<input type="number" class="form-control col-md-8" name="input_bssh_zipcode"  id="input_bssh_zipcode" value="<?php echo $bssh_data['bssh_zipcode']?>" min="0" max="99999" placeholder="00000">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_maps">MAPS</label>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control col-md-8" name="input_bssh_maps" id="input_bssh_maps" value="<?php echo $bssh_data['bssh_maps'];?>" placeholder="MAPS">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right text-nowrap">
				<label for="input_bssh_delivery_area">Delivery zipcode</label>
			</div>
			<div class="col-md-8">
					<select multiple="yes" type="text" class="form-control" id="input_bssh_delivery_area" name="input_bssh_delivery_area[]">
		<?php if( !empty($bssh_data['bssh_delivery_area'])) {
			foreach (explode('||',$bssh_data['bssh_delivery_area']) as $sTag) {
				if (! empty($sTag))	echo sprintf("\n<option value='%s' selected>%s</option>",$sTag,$sTag);
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
				<input type="url" class="form-control" id="input_bssh_website" name="input_bssh_website" value="<?php echo $bssh_data['bssh_website'];?>" placeholder="Shop URL" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_email">Email</label>
			</div>
			<div class="col-md-8">
				<input type="email" class="form-control" id="input_bssh_email" name="input_bssh_email" value="<?php echo $bssh_data['bssh_email'];?>" placeholder="Shop email" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_phone">Contact</label>
			</div>
			<div class="col-md-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-phone"></i> Phone</span>	
					<input type="tel" class="form-control" name="input_bssh_phone" id="input_bssh_phone" value="<?php echo $bssh_data['bssh_phone'];?>" placeholder="Shop telephone number">
					<span class="input-group-addon"><i class="fa fa-mobile-phone"></i> Mobile</span>
					<input type="tel" class="form-control" id="input_bssh_mobile" name="input_bssh_mobile" value="<?php echo $bssh_data['bssh_mobile'];?>" placeholder="Shop mobile number">
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
		if($sName==$bssh_data['bssh_time_zone']) $sSelected=' SELECTED';
	?>
						<option value="<?php echo $sName;?>" <?php echo $sSelected;?>>UTC <?php echo $sName;?></option>
<?php } ?>
				</select>
			</div>
		</div>

		<div class="row from-group">
			<div class="col-md-12 text-md-right">
					<button name='btnSave' class="btn btn-warning" id="btnSave"><i class="fa fa-floppy-o"></i> Save</button>
			</div>
		</div>
	</div>
	</form>
</div>

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
	$('#input_bssh_delivery_area').select2({
		tags: true,
	});	

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
<?php /* echo "<div class='hide'><pre>"; print_r($bssh_data); echo "</pre></div>"; */?>