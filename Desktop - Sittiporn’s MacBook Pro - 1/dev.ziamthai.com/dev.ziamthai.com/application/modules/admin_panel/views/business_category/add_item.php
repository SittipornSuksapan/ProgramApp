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
		<i class="fa fa-chevron-left"></i> Back</a> <?php echo $sTitleBack; ?> 
		</div>
	<form action="" method="POST" enctype="multipart/form-data">
	<input type="hidden" name="input_pid" value="<?php echo $parent['bsth_id'];?>">
	<div class="card-block">
		<div class="card">
			<div class="card-header h4 bg-success text-white">Add Biz Category to '<?php echo $parent['bsth_title'];?>'</div>
			<div class="card-block">

				<div class="row form-group">
					<div class="col-md-3 offset-md-1 text-md-right nowrap top05">
						<label for="input_title">Biz Category Name</label>
					</div>
					<div class="top col-md-8">
						<input type="text" class="form-control border" id="txt_title" name="input_title" value="<?php echo (! empty($_POST['input_title']))?$_POST['input_title']:'';?>" placeholder="Biz Category Name" required>
					</div>
				</div>
					
				<div class="row form-group">
					<div class="col-md-3 offset-md-1 text-md-right top05">
						<label for="input_detail">Detail</label>
					</div>
					<div class="col-md-8 top">
						<textarea class="form-control" id="input_bssh_detail" name="input_detail" rows="4" placeholder="Biz Category Description" required><?php echo (! empty($_POST['input_detail']))?$_POST['input_detail']:'';?></textarea>
					</div>
				</div>

				<div class="row form-group">
					<div class="col-md-3 offset-md-1 text-md-right top10">
						<label for="file_icon">Icon</label>
					</div>
					<div class="col-md-8 text-md-left">
						<input class="form-control" type="file" id="file_icon" name='file_icon' placeholder="" novalidate>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 text-md-right">
							<button name='btnSave' class="btn btn-success" id="btnSave"><i class="fa fa-floppy-o"></i> Save</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</div>
<script>
<?php if (! empty($data['message'])) {?>
	alert("<?php echo $data['message'];?>");
<?php		if ($data['result']==true) {?>
		window.location.href="<?php echo base_url('index.php/admin_panel/business_category/list_item/?&id=').$parent['bsth_id'];?>";
<?php } } ?>
</script>