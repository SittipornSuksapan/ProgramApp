<?php /* echo "<pre>"; print_r($bssh_data); echo "</pre>"; */ ?>
<?php 
//	$sAddClick = sprintf("%s", site_url('admin_panel/client/add/')); 
	$sAddClick = '#';
	$sTitleAdd = "Add Client";
?>
<div class="card card-outline-secondary">
		<div class="card-header">
			<div class="row">
				<div class="col-md-9 col-md-right h3">
					<span class="top10">Client Information<span>
				</div>
				<div class="col-md-3 text-md-right h3">
					<button class='btn btn-sm btn-success' onClick='<?php echo $sAddClick;?>return false;'><i class="fa fa-plus"></i> <?php echo $sTitleAdd;?></button> 
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
				$sTitleEdit = sprintf("edit %d", $data['bssh_id']);
				$sTitleFolder = sprintf("move %d", $data['bssh_id']);
//				$sEditClick = sprintf("%s?&id=%d", site_url('admin_panel/client/edit/'), $data['bssh_id']);
				$sEditClick='#';
				$sFolderClick = sprintf("%s?&id=%d", site_url('admin_panel/client/folder/'), $data['bssh_id']);
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
								<a href="<?php echo $sFolderClick; ?>" class="btn btn-sm btn-warning" title="<?php echo $sTitleFolder; ?>"><i class="fa fa-folder"></i></a>
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