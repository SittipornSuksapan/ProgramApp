<?php /* echo "<pre>"; print_r($data); echo "</pre>";  */?>
<?php 
	$sAddClick = sprintf("%s", base_url('index.php/admin_panel/business_category/add/')); 
	$sTitleAdd = "Add Biz Category ";
?>
<div class="card card-outline-secondary">
		<div class="card-header h4">
<?php if ($user_level=='admin') { ?>
<a href="<?php echo $sAddClick; ?>" class="btn btn-sm btn-success" title="<?php echo $sTitleAdd; ?>"><i class="fa fa-plus"></i></a>
<?php } ?>
	Biz Category Information
		</div>
		<div class="card-block">
				<?php if (count($data['data']) == 0) { ?>
				<div class="row alert-danger">
						<div class="col-md-12 text-md-center h1">No Record Founded.</div>
				</div>
				<?php
				} else {
				foreach ($data['data'] as $info) {
					$sClassRow = 'alert-info';
					$recID=$info['bsct_id'];
					$sName=$info['bsct_name'];
					$sDesc=$info['bsct_desc'];
					$sFile=$info['bsct_icon'];
					$sIcon=sprintf("%s%s",base_url('uploads/biz_cate_icon/'),$sFile);
					$sEditClick = sprintf("%s?id=%d", base_url('index.php/admin_panel/business_category/edit/'), $recID);
					$sDeleteClick = sprintf("%s?id=%d", base_url('index.php/admin_panel/business_category/delete/'), $recID);
					$sRestoreClick = sprintf("%s?id=%d", base_url('index.php/admin_panel/business_category/restore/'), $recID);
					$sRemoveClick = sprintf("%s?id=%d", base_url('index.php/admin_panel/business_category/purge/'), $recID);
					$sTitleEdit = sprintf("Edit '%s'", $sName);
					$sTitleDelete = sprintf("Delete '%s'", $sName);
					$sTitleRestore = sprintf("Restore '%s'", $sName);
					$sTitlePurge = sprintf("Purge '%s'", $sName);
					if (file_exists($sIcon)) {
						$sImgClick=sprintf("showImage('dvModalImage','%s','%s','%s');return false;",$sDesc,$sDesc,$sIcon);
					} else {
						$sImgClick=sprintf("alert('No Image File');return false;");
					}
				?>
				<div class="row <?php echo $sClassRow; ?>">
						<div class="col-md-2">
								<a href="#" class="btn" onclick="<?php echo $sImgClick;?>"><i class="fa fa-image"></i></a>
						</div>
						<div class="col-md-6"><span class="top10" title='<?php echo $sDesc;?>'><?php echo $sName; ?></span></div>
						<div class="col-md-4">
								<nowrap>
								<a href="<?php echo $sEditClick; ?>" class="btn btn-sm btn-warning" title="<?php echo $sTitleEdit; ?>"><i class="fa fa-edit"></i></a>
								<a href="<?php echo $sDeleteClick; ?>" class="btn btn-sm btn-danger" title="<?php echo $sTitleDelete; ?>"><i class="fa fa-times"></i></a>
								</nowrap>
						</div>
				</div> 
				<?php }/* endforeach*/
				$clsPrev=' disabled';
				$clsNext=' disabled';
				$lnkPrev='';
				$lnkNext='';
				$curr=$data['index']['curr'];
				$ppage=$data['index']['ppage'];
				$maxPage=ceil($data['index']['max']/$data['index']['ppage']);
				if ($curr>=2) {
					$clsPrev='';
					$lnkPrev=base_url('index.php/admin_panel/business_category/index/?&curr=1');
					$lnkPrev.=sprintf("&ppage=%d",$ppage);
				}
				if ($data['index']['curr']+1 <= $maxPage) {
					$clsNext='';
					$lnkNext=base_url('index.php/admin_panel/business_category/index/?&curr='.$maxPage);
					$lnkNext.=sprintf("&ppage=%d",$ppage);
				}
				$iStart=($curr>1)?$curr-1:1;
				$iFin=($curr+1>=$maxPage)?$maxPage:$curr+1;
				?>
				<div class="row">
					<div class="col-md-6 text-left top10">
							<div class="top10 h5">
						<?php echo sprintf("<p><br>display %d to %d of %d record(s)</p>",$data['index']['start']+1,$data['index']['stop'], $data['index']['max']); ?>
						</div>
					</div>
						<div class="col-md-6 text-md-right">
						<nav aria-label="Page navigation">
							<ul class="pagination justify-content-end">
								<li class="page-item<?php echo $clsPrev?>">
									<a class="page-link" href="<?php echo $lnkPrev;?>" tabindex="-1">Previous</a>
								</li>
<?php for ($iRun=$iStart;$iRun<=$iFin; $iRun++) {
	$lnkPage=base_url('index.php/admin_panel/business_category/index/?');
	$lnkPage.=sprintf("&curr=%d",$iRun);
	$lnkPage.=sprintf("&ppage=%d",$data['index']['ppage']);
	$sRun=sprintf("%d",$iRun);
	if ($iRun==$curr) { 
		$lnkPage='#'; 
		$sRun=sprintf("%d<span class='sr-only'>(current)</span>",$iRun);
?>
								<li class="page-item active"><span class='page-link'><?php echo $sRun;?></span></li>
<?php } else {?>
								<li class="page-item"><a class="page-link" href="<?php echo $lnkPage;?>"><?php echo $sRun;?></a></li>
<?php } } ?>
								<li class="page-item<?php echo $clsNext;?>">
									<a class="page-link" href="<?php echo $lnkNext;?>">Next</a>
								</li>
							</ul>
						</nav>
					</div>
<?php
	if (isset($DEBUG)) {
		echo "<div class='hide'>";
		echo sprintf("<br> clsPrev='%s'<br> lnkPrev='%s'",$clsPrev,$lnkPrev);
		echo sprintf("<br> clsNext='%s'<br> lnkNext='%s'",$clsNext,$lnkNext);
		echo sprintf("<br> iStart=%d , iFinish=%d",$iStart,$iFin);
		echo "<br><pre>data\n"; print_r($data); echo "</pre>";
		echo "</div>";
	}
?>

				</div>
<?php } // endfor ?>
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