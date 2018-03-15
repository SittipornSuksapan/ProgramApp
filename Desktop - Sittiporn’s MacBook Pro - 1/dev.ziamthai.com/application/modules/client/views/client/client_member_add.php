<link href="<?php echo base_url('asset/select2/css/select2.min.css')?>" rel="stylesheet" />
<script src="<?php echo base_url('asset/select2/js/select2.min.js')?>"></script>

<style>
		.top05 {margin-top: 5px;}
		.top10 {margin-top: 10px;	}
		.top15 {margin-top: 15px;	}
		.top20 {margin-top: 20px;	}
		.bottom05 {margin-bottom: 5px;}
		.bottom10 {margin-bottom: 10px;}
		.bottom15 {margin-bottom: 15px;}
		.bottom20 {margin-bottom: 20px;}
		label {font-weight: bold;	}
		.card {	background: #DDD;	}
		div.modal-header > button.close { top: 15px; position: absolute; right: 15px;}
		div.input-group > button.btn-sm { margin-right: 1px; margin-left: 1px;}
		.btn-outline-success.focus { background-color: #5cb85c !important;
    border-color: #5cb85c !important;}
		span.menu-title { 
			display:inline-block; line-height: 24px; width: 100%; height: 24px; overflow: hidden; overflow-x: auto; 
		}
		@media(max-width:767px) {
			span.menu-title { line-height: 18px; font-size: 18px; height: 22px;}
		}
</style>

<style type="text/css">
    .select2-container { margin-left:-1px; }
    .select2-selection { min-height: 38px; }
    .select2-selection__rendered { margin-top:4px !important;min-height: 36px !important; }
    .select2-selection__arrow { margin-top:5px !important; }
</style>

<?php /* echo "<div class='hide'><pre>"; print_r($info); echo "</pre></div>"; */?>
<h1>Add Member to '<?php echo $access_workspace['name'];?>'</h1>
<?php 
echo "<pre>";
if (! empty($member)) { print_r($member); } 
$arrRole[1]=array('name'=>'System Administrator','role'=>'Super User');
$arrRole[3]=array('name'=>'Shop Administrator','role'=>'Shop Adminstrator');
$arrRole[5]=array('name'=>'Shop Staff','role'=>'Shop Staff');
//echo "<br>client :"; print_r($access_client);
//echo "<br>workspace :"; print_r($access_workspace);
//echo "<br>policy :"; print_r($access_policy);
if (! empty($request)) { print_r($request); } 
echo "</pre>";
?>

<form>
	<div class="row">
    <div class="col-md-8 col-xl-6">

        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">
                    <i class="fa fa-user-circle-o"></i>
                </div>
                <select id="member_combobox" data-placeholder="<?php echo $this->lang->line('pholder_search_combobox'); ?>" style="width:100%;"></select>
            </div>
        </div>
    </div>
	</div>
</form>
<form id="formAddMember" class="card" style="display:none;" data-shop="<?php echo intval($access_workspace['id']); ?>" method="post">
	<input type="hidden" name="member_id">

	<div class="card-header">
		<div class="row">
			<div class="col-lg-2">
					<img id="member_photo" class="img-fluid" style="max-height:140px;border-radius:50%;" src="<?php echo site_url('uploads/user_photo/large/0'); ?>">
			</div>
			<div class="col-lg-8 top10">
				<div class="row">
					<div class="col-lg-12">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="fa fa-user-circle-o"></i> Member Name :
							</div>
							<input class="form-control" name="member_name" readonly>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-lg-12">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="fa fa-vcard-o"></i> Level :
							</div>
							<select class="form-control" name='member_level'>
								<option value='3'>Shop Administrator</option>
								<option value='5' selected>Shop Staff</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="card-block">
			<div class="row"><div class="col-lg-12 h3">Role Policy</div></div>
<?php
	$iList=0;
	for ($iCount=0; $iCount<count($access_policy); $iCount++) { 
	$arrData=$access_policy[$iCount];
	$chkName=sprintf('chkPolicy%03d',$iCount+1);
	$chkValue=$arrData['id'];
	if ($arrData['active']==1) {
		$iList++;
?>
			<div class="row">
				<div class="col-md-1">
					<input class="" type="checkbox" id="<?php echo $chkName;?>" name="<?php echo $chkName;?>" value="<?php echo $chkValue;?>">
				</div>
				<div class="col-md-2 h5"><?php echo $arrData['head_name'];?></div>
				<div class="col-md-6 h5"><?php echo sprintf("<span title='%s'>%s</span>",$arrData['detail'],$arrData['policy_name']);?></div>
			</div>
<?php } } ?>
			<div class="row">
				<div class="col-lg-12 text-md-right">
					<button type="submit" name="btnSave" class="btn btn-primary" value='save'><i class="fa fa-save"></i> Save </button>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" name="maxPolicy" value="<?php echo $iList;?>">
	<input type="hidden" name="shop_id" value="<?php echo intval($access_workspace['id']); ?>">
	<input type="hidden" name="uid" value="<?php echo intval($access_client['id']); ?>">
</form>
<?php require_once("client_member.add.js.php"); ?>

