<style>
		.top10 {margin-top: 10px;	}
		.pad10 {padding: 10px;}
		.top05 {margin-top: 5px;}
		.pad05 {padding: 5px;}
		label {font-weight: bold;}
		.card {	background: #DDD;	}
		/*	Manage Dialog Close Button */
		div.modal-header > button.close { top: 15px; position: absolute; right: 15px;	}
		a {	color: none;}
</style>
<?php 
	$sAddClick = sprintf("%s", site_url('admin_panel/business_header/add/')); 
	$sTitleAdd = "Add Biz Shop ";
?>
<div class="card card-outline-secondary">
		<div class="card-header">
			<div class="row">
				<div class="col-md-9 col-md-right h3">
					<span class="top10">Shop Information <?php echo (is_null($info))?'':sprintf(": '%s'",$info['bssh_title']);?><span>
				</div>
				<div class="col-md-3 text-md-right h3">
				</div>
			</div>
		</div>
		<div class="card-block">
				<?php if (! isset($images[0])) { ?>
				<div class="row alert-danger">
						<div class="col-md-12 text-md-center h1">No Record Founded.</div>
				</div>
				<?php
				} else {
					foreach ($images as $data) {
						$sDate=str_replace('.','',sprintf("%f",microtime(true)));
						list($sName,$sSurname)=explode('.',$data['bssi_file']);
						$bFileOldExist=false;
						$bFileNewExist=false;
						$sTitleEdit = sprintf("edit %d", $data['bssi_bssh_id']);
						$sTitleFolder = sprintf("move %d", $data['bssi_bssh_id']);
						$sEditClick = sprintf("%s?&id=%d", site_url('admin_panel/client/edit/'), $data['bssi_bssh_id']);
						$sFolderClick = sprintf("%s?&id=%d", site_url('admin_panel/client/folder/'), $data['bssi_bssh_id']);
						$sOldFile=sprintf('uploads/%s/%s',$data['imgt_path'],$data['bssi_file']);
						$sNewFile=sprintf('uploads/client/%d/photo/%s',$id,$data['bssi_imgt_id'],$data['bssi_file']);
						$sOldClick=sprintf("showImage('dvModalShowImage','%s','%s','%s'); return false;",$data['bssi_title'],base_url($sOldFile),$sOldFile);
						$sNewClick=sprintf("showImage('dvModalShowImage','%s','%s','%s'); return false;",$data['bssi_title'],base_url($sNewFile),$sNewFile);
						$sClassRow = 'alert-danger';
						$sMoveTitle='';
						$sButtonClick='';
						$sMoveClick='';
						$sButtonMove='';
						$sButtonImage='';
						if ( (file_exists($sOldFile)) && (!is_dir($sOldFile)) ) {
							$bFileOldExist=true;
							$sClassRow='alert-info';
							$sIcon='fa fa-image';
							$sMoveIcon='fa fa-folder-o';
							$sNewFile=sprintf('uploads/client/%d/photo/%s_%s.%s',$id,$data['bssi_imgt_id'],$sDate,$sSurname);
							$sMoveTitle=sprintf("Move [%d] '%s' To '%s'",$data['bssi_id'],$sOldFile,$sNewFile);
							$sMoveClick=sprintf("moveFolder(%d);",$data['bssi_id']);
							$sButtonImage=sprintf('<button class="btn btn-sm btn-info" onClick="%s"><i class="%s"></i></button>',$sOldClick,$sIcon);
							$sButtonMove=sprintf('<button class="btn btn-sm btn-warning" onClick="%s"><i class="%s"></i></button>',$sMoveClick,$sMoveIcon);
						} else {
							if ( (file_exists($sNewFile)) && (!is_dir($sNewFile))) {
								$bFileNewExist=true;
								$sIcon='fa fa-key';
								$ClassRow='alert-warning';
								$sButtonImage=sprintf("<button class='btn btn-sm btn-success' onClick='%s'><i class='%s'></i></button>",$sNewClick,$sIcon);
							}
						}
				?>
				<div class="row <?php echo $sClassRow; ?> top10">
						<div class="col-md-8">
							<?php echo $sButtonImage;?>  <?php echo $data['bssi_title']; ?>
						</div>
						<div class="col-md-4">
								<nowrap>
								<a href="<?php echo $sEditClick; ?>" class="btn btn-sm btn-warning" title="<?php echo $sTitleEdit; ?>"><i class="fa fa-edit"></i></a>
<?php if ($bFileOldExist) { echo $sButtonMove; } ?>
								<span title="<?php echo $sMoveTitle;?>"> . . . </span>
								</nowrap>
						</div>
				</div> 
				<?php }/* endforeach*/ } // endif ?>
		</div>
</div>

<div class="modal fade" id="dvModalShowImage" tabindex="-1" role="dialog" aria-labelledby="dvModalImageTitle" aria-hidden="true">
		<div class="modal-dialog" role="document">
				<div class="modal-content">
						<div class="modal-header">
								<h5 class="modal-title" id="dvModalImageTitle"></h5>
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
	function showImage(sDiv,sTitle,sFile) {
		$('#dvModalImageTitle').text(sTitle);
		$('#imgModalDisplay').attr('src',sFile);
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
</script>