<?php echo "<pre>"; print_r($bssh_data); echo "</pre>";?>
<div class="card">
	<div class="card-block">
	<form action="" method="POST" enctype="multipart/form-data">

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_title">Title</label>
			</div>
			<div class="top col-md-8">
				<input type="text" class="form-control" id="input_bssh_title" value="<?php echo $bssh_data['bssh_title'];?>">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_detail">Detail</label>
			</div>
			<div class="col-md-8 top">
				<textarea class="form-control" id="input_bssh_detail" rows="4"><?php echo $bssh_data['bssh_detail'];?></textarea>
			</div>
		</div>
			
		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_address">Address</label>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control col-md-8" id="input_bssh_address" value="<?php echo $bssh_data['bssh_address'];?>">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_zipcode">Zipcode</label>
			</div>
			<div class="col-md-8">
					<input type="number" class="form-control col-md-8" id="input_bssh_zipcode" value="<?php echo $bssh_data['bssh_zipcode'];?>" min="0" max="99999">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_delivery_area">Delivery zipcode</label>
			</div>
			<div class="col-md-8">
					<input type="text" class="form-control" id="input_bssh_delivery_area" name="input_bssh_delivery_area" value="<?php echo str_replace('||',',' ,$bssh_data['bssh_delivery_area']);?>">
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_website">website</label>
			</div>
			<div class="col-md-8">
					<input type="url" class="form-control" id="input_bssh_website" name="input_bssh_website" value="<?php echo $bssh_data['bssh_website'];?>" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_email">Email</label>
			</div>
			<div class="col-md-8">
					<input type="email" class="form-control" id="input_bssh_email" name="input_bssh_email" value="<?php echo $bssh_data['bssh_email'];?>" novalidate>
			</div>
		</div>

		<div class="row form-group">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_phone">Phone</label>
			</div>
			<div class="col-md-8">
					<input type="tel" class="form-control" id="input_bssh_phone" value="<?php echo $bssh_data['bssh_phone'];?>">
			</div>
		</div>

		<div class="row">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_imgheader">Image Header</label>
			</div>
			<div class="col-md-8 text-md-left form-inline">
					<div class="input-group-addon text-md-left">
					<button onclick="showImage('dvModalImage','Image Header','imgModalDisplay','<?php echo base_url().'/'.$bssh_data['bssh_imghead'];?>');return false;">
					<i class="fa fa-image"></i> Header </button>
					<input type="file" id="input_bssh_imgheader" name='input_bssh_imgheader' novalidate>
					</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-2 offset-md-1 text-md-right">
				<label for="input_bssh_imgfront">Image Front</label>
			</div>
			<div class="col-md-8 text-md-left form-inline">
					<div class="input-group-addon text-md-left">
					<button onclick="showImage('dvModalImage','Image Front','imgModalDisplay','<?php echo base_url().'/'.$bssh_data['bssh_imgfront'];?>');return false;">
							<i class="fa fa-image"></i> Front </button>
					<input type="file" id="input_bssh_imgfront" name='input_bssh_imgfront' novalidate>
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
		if ($sName==$bssh_data['bssh_time_zone']) $sSelected=' selected';
	?>
						<option value="<?php echo $sName;?>" <?php echo $sSelected;?>>UTC <?php echo $sName;?></option>
<?php } ?>
				</select>
			</div>
		</div>

	</form>
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
<script lang="javascript">

	function showImage(sDiv,sTitle, sImage, sFile) {
		var myImage = document.getElementById("showVDOPlayer");
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