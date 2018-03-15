<?php /* echo "<pre>"; print_r($bssh_data); echo "</pre>"; */ ?>
<?php 
	$sAddClick = sprintf("%s", site_url('admin_panel/business_header/add/')); 
	$sTitleAdd = "Add Biz Shop ";
?>
<div class="card card-outline-secondary">
		<div class="card-header">
			<div class="row">
				<div class="col-md-9 col-md-right h3">
					<span class="top10">Biz Shop Information<span>
				</div>
				<div class="col-md-3 text-md-right h3">
<?php if ($user_level=='admin') { ?>
<a href="<?php echo $sAddClick; ?>" class="btn btn-success" title="<?php echo $sTitleAdd; ?>"><i class="fa fa-plus"></i> Add </a>
<?php } ?>
				</div>
			</div>
		</div>
		<div class="card-block">
				<div class="row">
						<div class="col-md-6 text-left">
								<?php echo sprintf("found %d record(s)", count($bssh_data)); ?>
						</div>
				</div>
				<?php if (count($bssh_data) == 0) { ?>
				<div class="row alert-danger">
						<div class="col-md-12 text-md-center h1">No Record Founded.</div>
				</div>
				<?php
				} else {
				foreach ($bssh_data as $data) {
				$sClassRow = 'alert-info';
				if ($data['bssh_active'] == 0) $sClassRow = 'alert-danger';
				$sEditClick = sprintf("%s?&id=%d", site_url('admin_panel/business_header/edit1/'), $data['bssh_id']);
				$sDeleteClick = sprintf("%s?&id=%d", site_url('admin_panel/business_header/delete/'), $data['bssh_id']);
				$sRestoreClick = sprintf("%s?&id=%d", site_url('admin_panel/business_header/restore/'), $data['bssh_id']);
				$sRemoveClick = sprintf("%s?&id=%d", site_url('admin_panel/business_header/purge/'), $data['bssh_id']);
				$sListClick = sprintf("%s?&id=%d", site_url('admin_panel/menu_category/'), $data['bssh_id']);
				$sTitleEdit = sprintf("Edit '%s'", $data['bssh_title']);
				$sTitleDelete = sprintf("Delete '%s'", $data['bssh_title']);
				$sTitleRestore = sprintf("Restore '%s'", $data['bssh_title']);
				$sTitlePurge = sprintf("Purge '%s'", $data['bssh_title']);
				$sTitleList = sprintf("Menu of '%s'", $data['bssh_title']);
				?>
				<div class="row <?php echo $sClassRow; ?>">
						<div class="col-md-8"><?php echo $data['bssh_title']; ?></div>
<?php if ($user_level=='admin') {?>
						<div class="col-md-1"><?php echo $data['bssh_owner_name']; ?></div>
						<div class="col-md-3">
<?php } else { ?>
						<div class="col-md-4">
<?php } ?>
								<nowrap>
								<a href="<?php echo $sEditClick; ?>" class="btn btn-sm btn-warning" title="<?php echo $sTitleEdit; ?>"><i class="fa fa-edit"></i></a>
								<?php if ($data['bssh_active'] == 1) { ?>
								<a href="<?php echo $sDeleteClick; ?>" class="btn btn-sm btn-danger" title="<?php echo $sTitleDelete; ?>"><i class="fa fa-times"></i></a>
								<?php } else { ?>
								<a href="<?php echo $sRestoreClick; ?>" class="btn btn-sm btn-success" title="<?php echo $sTitleRestore; ?>"><i class="fa fa-undo"></i></a>
								<?php } ?>
								<a href="<?php echo $sListClick; ?>" class="btn btn-sm btn-primary" title="<?php echo $sTitleList; ?>"><i class="fa fa-list-ul"></i></a>
								</nowrap>
						</div>
				</div> 
				<?php }/* endforeach*/ } // endif ?>
		</div>
</div>

<div class="modal fade" id="dvModalImage" tabindex="-1" role="dialog" aria-labelledby="dvModalImageTitle" aria-hidden="true">
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
	function showImage(sDiv, sTitle, sImage, sFile) {
		$('#dvModalImageTitle').text(sTitle);
		$('#' + sImage).attr('src', sFile);
		$('#' + sDiv).modal('show');
		$('#' + sDiv + ' div.modal-body').css({width: 'auto', height: 'auto', 'max-height': '100%'});
		centerModal();
	}
	function showImage(sDiv,sTitle, sImage, sFile) {
		$('#dvModalImageTitle').text(sTitle);
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
</script>