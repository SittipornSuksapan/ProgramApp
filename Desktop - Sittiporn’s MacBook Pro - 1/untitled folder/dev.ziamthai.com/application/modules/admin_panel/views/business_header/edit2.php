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
		/*	Manage Dialog Close Button */
		div.modal-header > button.close { 
				top: 15px; position: absolute; right: 15px;
		}
		a {
				color: none;
		}
</style>
<?php
	$sBackClick = sprintf("%s", base_url('index.php/admin_panel/business_header/')); 
	$sTitleBack = "Back to biz shop information";
	$sTitleHead = "Shop Photo Album";
?>
<div class="card card-outline-secondary">
	<div class="card-header h4 card-warning">
<?php if ($user_level != 'admin') { ?>
		<?php echo $sTitleHead; ?> 
<?php } else { ?>
		<div class="col-md-5 top10">
			<a href="<?php echo $sBackClick; ?>" class="btn btn-sm btn-primary" title="<?php echo $sTitleBack; ?>">
			<i class="fa fa-chevron-left"></i> Back</a> <?php echo $sTitleHead; ?> 
		</div>
		<div class="col-md-7 text-md-right">
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit1/?id='.$bssh_id);?>'>Information</a>
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit3/?id='.$bssh_id);?>'>Hours</a>
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/menu_category/?id='.$bssh_id);?>'>Menu</a>
		</div>
<?php } ?>
	</div>
	<div class="card-block">
			<h3>Shop : <?php echo $shopName;?></h3>
		<div id="dvTabList" role='tablist' aria-multiselectable="true">
			<div class="card">
				<div class="card-header" role="tab" id="headUpload">
					<h5><a data-toggle="collapse" data-parent="#dvTabList" href="#dvImgUpload" aria-expanded="true" aria-controls="dvImgUpload">
							Upload Biz Images
						</a>
					</h5>
				</div>
				<form action="" method="POST" enctype="multipart/form-data">
				<input type="hidden" name='input_bssh_id' id='input_bssh_id' value='<?php echo $bssh_id;?>'>
				<div id="dvImgUpload" class="collapse show" role='tabpanel' aria-labelledby="headUpload">
					<div class="card-block">
	<?php for ($iRow=1; $iRow<4; $iRow++) {
		$sSelName=sprintf('selImgType_%02d',$iRow);
		$sFileName=sprintf('fileBizImg_%02d',$iRow);
		$sTextName=sprintf('txtBizImg_%02d',$iRow);
	?>
						<div class="row form-group">
							<div class="col-md-12 top10">
								<div class="input-group">
									<span class="input-group-addon">Image Type :</span>
									<span class="input-group-addon">
									<select name='<?php echo $sSelName;?>' id="<?php echo $sSelName;?>">
	<?php foreach ($imgTypes as $Type) { ?>
										<option value='<?php echo $Type['imgt_id'];?>'><?php echo $Type['imgt_name'];?></option>
	<?php } ?>					
									</select>
									</span>
									<input class="form-control" type="file" name='<?php echo $sFileName;?>' id='<?php echo $sFileName;?>' novalidate>
								</div>
								<div class="input-group">
									<span class="input-group-addon">Description :</span>
									<input class="form-control" type="text" name='<?php echo $sTextName;?>' id='<?php echo $sTextName;?>' placeholder="Image Descrition">
								</div>
							</div>
						</div>
	<?php } ?>
							<div class="text-md-right"><button name="btnUploadSave" id="btnUploadSave" class="btn-primary">Upload Image</button></div>
					</div>
				</div>
				</form>
			</div>

			<div class="card">
				<div class="card-header" role="tab" id="headImageList">
					<h5><a data-toggle="collapse" data-parent="#dvTabList" href="#dvImgList" aria-expanded="false" aria-controls="dvImgList">
							Biz Images
						</a>
					</h5>
				</div>
				<form action="" method="POST" enctype="multipart/form-data">
				<input type="hidden" name='input_bssh_id' id='input_bssh_id' value='<?php echo $bssh_id;?>'>
				<input type="hidden" name='input_max_item' id='input_max_item' value='<?php echo count($imgLists);?>'>
				<div id="dvImgList" class="collapse" role='tabpanel' aria-labelledby="headImageList">
					<div class="card-block">
	<?php	for($iList=1; $iList<=count($imgLists); $iList++) {
		$data=$imgLists[$iList-1];
		$sFile=sprintf('uploads/%s/%s',$data['imgt_path'],$data['bssi_file']);
		$sClick=sprintf("showImage('dvModalShowImage','%s','%s','%s'); return false;",$sFile,base_url($sFile),$data['bssi_title']);
		$sCheck=sprintf("chkDelImg_%d",$iList);
		$sTitleNew=sprintf("txtNewTitle_%d",$iList);
		$sTitleOld=sprintf("txtOldTitle_%d",$iList);
		$sTitle=$data['bssi_title'];
		$sIDName=sprintf("input_%d",$iList);
	?>
						<div class="row form-group">
							<div class="col-md-3 text-md-right top10">
								<label for="file_bssh_imghead"><?php echo $data['imgt_name'];?></label>
								<input type='hidden' id='<?php echo $sIDName;?>' name='<?php echo $sIDName;?>' value='<?php echo $data['bssi_id'];?>'>
								<input type="hidden" name="<?php echo $sTitleOld;?>" id="<?php echo $sTitleOld;?>" value="<?php echo $sTitle;?>">
							</div>
							<div class="col-md-8 text-md-left">
								<div class="input-group">
									<span class="input-group-addon alert-danger"><input type="checkbox" id="<?php echo $sCheck;?>" name='<?php echo $sCheck;?>'></span>
									<span class="input-group-addon"><button onclick="<?php echo $sClick;?>"><i class="fa fa-image" title="<?php echo $data['bssi_file'];?>"></i></button></span>
									<input class="top05 form-control" type="text" name="<?php echo $sTitleNew;?>" id="<?php echo $sTitleNew;?>" value="<?php echo $sTitle;?>">
								</div>
							</div>
						</div>
	<?php  } ?>
							<div class="text-md-right"><button name="btnUpdateSave" id="btnUpdatedSave" class="btn-primary">Update</button></div>
					</div>
				</div>
				</form>
			</div>
<!--
			<div class="card hide">
				<div class="card-header" role="tab" id="headDebug">
						<h5><a data-toggle="collapse" data-parent="#dvTabList" href="#dvDebug" aria-expanded="false" aria-controls="dvDebug">DEBUG</a>
					</h5>
`				</div>
				<div id="dvDebug" class="collapse" role='tabpanel' aria-labelledby="headDebug">
					<div class="card-block">
<?php  
//	echo "ImgLists<pre>"; print_r($imgLists); echo "</pre>";
//	echo "ImgTypes<pre>"; print_r($imgTypes); echo "</pre>"; 
	echo "REQUEST<pre>"; print_r($_REQUEST); echo "</pre>"; 
	echo "FILES<pre>"; print_r($_FILES); echo "</pre>"; 
	echo "message<br>"; if (is_array($message)) { echo "<pre>"; print_r($message); echo "</pre>"; } else { echo $message;} 
?>
					</div>
				</div>
			</div>
-->
		</div>
	</div>
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
	function showImage(dvModal,Title,Img,ImgTitle) {
		$('#imgShow').attr('src','');
		$('#spModalTitle').html(Title);
		$('#spShowImage').html(ImgTitle);
		$('#imgShow').attr('src',Img);
		$('#'+dvModal).modal('show');
	}
	$('#dvImgUpload').collapse('show');
</script>
