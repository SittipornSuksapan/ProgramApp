<style>
		.top10 {margin-top: 10px;	}
		.top05 {margin-top: 5px;}
		label {font-weight: bold;	}
		.card {	background: #DDD;	}
</style>
<?php
	$sBackClick = sprintf("%s%d", base_url('index.php/admin_panel/business_category/list_item/?&id='),$parent['bsth_id']); 
	$sTitleBack = sprintf("Biz Category '%s'",$parent['bsth_title']);
?>
<div class="card card-outline-secondary">
		<div class="card-header h4">
			<a href="<?php echo $sBackClick; ?>" class="btn btn-sm btn-primary" title="<?php echo $sTitleBack; ?>">
		<i class="fa fa-chevron-left"></i> Back </a> <?php echo $sTitleBack; ?> 
		</div>
	<form action="" method="POST" enctype="multipart/form-data">
	<input type="hidden" name="input_id" value="<?php echo $_REQUEST['id'];?>">
	<input type="hidden" name="input_pid" value="<?php echo (! empty($_POST['input_pid']))?$_POST['input_pid']:$data['bsth_pid'];?>">
	<div class="card-block">
		<div class="card">
			<div class="card-header h4 bg-warning text-white">Edit Biz Category in '<?php echo $parent['bsth_title'];?>'</div>
			<div class="card-block">
				<div class="row form-group">
					<div class="col-md-3 offset-md-1 text-md-right nowrap top05">
						<label for="input_title">Biz Category Name</label>
					</div>
					<div class="top col-md-8">
						<input type="text" class="form-control border" id="txt_title" name="input_title" value="<?php echo (! empty($_POST['input_title']))?$_POST['input_title']:$data['bsth_title'];?>" placeholder="Biz Category Name" required value='<?php echo $data['bsth_title'];?>'>
					</div>
				</div>
					
				<div class="row form-group">
					<div class="col-md-3 offset-md-1 text-md-right top05">
						<label for="input_detail">Detail</label>
					</div>
					<div class="col-md-8 top">
						<textarea class="form-control" id="input_bssh_detail" name="input_detail" rows="4" placeholder="Biz Category Description" required><?php echo (! empty($_POST['input_detail']))?$_POST['input_detail']:$data['bsth_detail'];?></textarea>
					</div>
				</div>

				<div class="row form-group">
					<div class="col-md-3 offset-md-1 text-md-right top10">
						<label for="file_icon">Icon</label>
					</div>
					<div class="col-md-8 text-md-left">
						<div class="input-group">
<?php if (! empty($data['bsth_icon'])) { 
	$sFile=$data['bsth_icon'];
	$sIcon=sprintf("%s%s",base_url('uploads/biz_category/'),$sFile);
	$sFull=sprintf("%s%s",ROOT_PATH.'/'.PATH_BIZ_CATEGORY,$sFile);
	$sClick=sprintf("showImage('dvModalShowImage','%s','imgModalDisplay','%s'); return false;",$data['bsth_title'],$sIcon);
	if (file_exists($sFull) && (!is_dir($sFull)) ) {
?>
						<div class="input-group-addon"><button onclick="<?php echo $sClick;?>"><i class="fa fa-image"></i></button></div>
<?php } }?>
						<input class="form-control" type="file" id="file_icon" name='file_icon' placeholder="" novalidate>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 text-md-right">
						<button name='btnSave' class="btn btn-warning" id="btnSave"><i class="fa fa-floppy-o"></i> Save</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</div>
<div class="modal fade" id="dvModalShowImage" tabindex="-1" role="dialog" aria-labelledby="dvModalShowImageTitle" aria-hidden="true">
		<div class="modal-dialog" role="document">
				<div class="modal-content">
						<div class="modal-header">
								<h5 class="modal-title" id="dvModalShowImageTitle"></h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
								</button>
						</div>
						<div class="modal-body">
								<img id="imgModalDisplay" class="img-fluid" src=''>
						</div>
				</div>
		</div>
</div>
<script>
	function showImage(sDiv,sTitle, sImage, sFile) {
		$('#dvModalShowImageTitle').text(sTitle);
		$('#'+sImage).attr('src',sFile);
		$('#'+sDiv).modal('show');
		$('#'+sDiv+' div.modal-body').css({width:'auto',height:'auto', 'max-height':'100%'});
		centerModal();
	}

	function centerModal() {
    $(this).css('display', 'block');
    var $dialog = $(this).find(".modal-dialog"),
    offset = ($(window).height() - $dialog.height()) / 2,
    bottomMargin = parseInt($dialog.css('marginBottom'), 10);

    // Make sure you don't hide the top part of the modal w/ a negative margin if it's longer than the screen height, and keep the margin equal to the bottom margin of the modal
    if(offset < bottomMargin) offset = bottomMargin;
        $dialog.css("margin-top", offset);
	}

	$(document).on('show.bs.modal', '.modal', centerModal);
	$(window).on("resize", function () {
			$('.modal:visible').each(centerModal);

	});
<?php if (! empty($data['message'])) {?>
	alert("<?php echo $data['message'];?>");
<?php		if ($data['result']==true) {?>
		window.location.href="<?php echo base_url('index.php/admin_panel/business_category/edit_item/?id=').$id;?>";
<?php } } ?>
</script>