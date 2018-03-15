<link href="<?php echo base_url('asset/select2/css/select2.min.css')?>" rel="stylesheet" />
<script src="<?php echo base_url('asset/select2/js/select2.full.js')?>"></script>
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
<?php
	$sTitleHead = "Menu List";
	$sURL= base_url('index.php/client/business_menu/');
?>
<h1><?php echo $sTitleHead; ?></h1>
<div style="max-height: 200px; overflow-y: auto; font-size: smaller; display: none;">
	<?php 
	echo $sURL;	
	echo "<br>Info:<pre>"; print_r($info); 
//	echo "access_workspace:\n"; print_r($access_workspace);
	echo "<br>workspace:<pre>"; print_r($access_client); 
	echo "</pre>";
	$MainID=$info[$RunID]['Main']['bsic_id'];
	$sMainName=$info[$RunID]['Main']['bsic_name'];
	$sClickMenuAdd=sprintf('showMenuAdd(%d);return false;',$access_workspace['id']);
	$sClickMenuEdit=sprintf("showMenuEdit(%d);return false;",$MainID);
	$sClickSectionAdd=sprintf('showSectionAdd(%d);return false;',$MainID);
	?>
</div>
<div class='card'>
  <div class="card-header row-fluid">
    <div class="col-md-8">
<?php 
	for($iCount=0; $iCount<count($info); $iCount++) { 
		$sClickMenu=sprintf('%s/?&RunID=%d',base_url('index.php/client/business_menu/index'),$info[$iCount]['Main']['bsic_id']);
		$sClassMenu=($info[$iCount]['Main']['bsic_id']==$MainID)?'btn-primary':'btn-info';
?>
      &nbsp; <a class='btn <?php echo $sClassMenu;?>' href="<?php echo $sClickMenu;?>">
				<?php echo $info[$iCount]['Main']['bsic_name'];?>
			</a> &nbsp;
<?php } // end for ?>
    </div>
    <div class="col-md-3 offset-md-1 text-md-right">
			<!--
      <button class="btn btn-success" onclick="<?php echo $sClickMenuAdd;?>"><i class="fa fa-plus"></i> Add Menu</button>
	 -->
    </div>
  </div>
  <div class="card-block">
		<div class="row">
			<div class="col-md-10"><?php echo $info[$RunID]['Main']['bsic_desc'];?></div>
		</div>
    <div class="row-fluid">
			<div class="card">
				<div class="card-header row-fluid">
					<div class="col-md-8 top10">
						Menu Hours: <?php echo $info[$RunID]['Main']['tstart'];?> - 
							<?php echo $info[$RunID]['Main']['tstop'];?>
						<button class="btn btn-warning" onClick="<?php echo $sClickMenuEdit;?>"><i class="fa fa-pencil" ></i> Menu Setup</button>
					</div>
					<div class="col-md-3 text-md-right offset-md-1">
						<a class="btn btn-success" onclick="<?php echo $sClickSectionAdd;?>"><i class="fa fa-plus"></i> Add Section</a>
					</div>
				</div>
			</div>
    </div>
<?php if (! empty($info[$RunID]['Section']) ) { ?>
<?php for($iCount=0; $iCount<count($info[$RunID]['Section']); $iCount++) { 
  
  $aData=$info[$RunID]['Section'];
  $SectionID=$aData[$iCount]['data']['bsic_id'];
  $SectionActive=$aData[$iCount]['data']['bsic_active'];

	$sClickItemAdd=sprintf('showItemAdd(%d);return false;',$SectionID);

	$sClickSectionEdit=sprintf('showSectionEdit(%d);return false;',$SectionID);
	$sClickSectionActive=sprintf('clickSectionActive(%d,%d);return false;',$SectionID,($SectionActive==1)?0:1);
	$sClassSectionActive=($SectionActive==1)?'btn-success':'btn-secondary';
	$sClassSection=($SectionActive==1)?'':'card-danger';
?>
    <div class="row-fluid">
      <div class="card">
        <div class="card-header row-fluid <?php echo $sClassSection;?>">
          <div class="col-md-8 top05"><h6><?php echo $aData[$iCount]['data']['bsic_name'];?></h6></div>
					<div class="col-md-3 offset-md-1 text-md-right">
						<div class="input-group">
							<button class="btn-sm <?php echo $sClassSectionActive;?>" onclick="<?php echo $sClickSectionActive;?>">
								<i class="fa fa-eye"></i></button>
								<button class="btn-sm btn-warning" onclick="<?php echo $sClickSectionEdit;?>">
							<i class="fa fa-pencil"></i></button>
						</div>
					</div>
        </div>
        <div class="card-block">
					<div class="row-fluid">
						<div class="col-md-8"><?php echo $aData[$iCount]['data']['bsic_desc'];?></div>
						<div class="col-md-4 text-md-right bottom10">
              <button class="btn-sm btn-success" onclick="<?php echo $sClickItemAdd;?>"><i class="fa fa-plus"></i> Add Item </button>
						</div>
					</div>
<?php for ($iMenu=0; $iMenu<count($aData[$iCount]['menu']); $iMenu++) {
  $aMenu=$aData[$iCount]['menu'][$iMenu];
	$iMenuID=$aMenu['bsih_id'];
  $sFile=$aMenu['bsih_photo'];
  $sFullPath=sprintf('%s/uploads/client/%d/menu/%s',ROOT_PATH,$access_workspace['id'],$sFile);
  $sImage=base_url(sprintf('uploads/menu.jpg'));
	$sImgThumb=base_url('index.php/uploads/item_photo/thumb/'.$iMenuID);
	$sImgFull=base_url('index.php/uploads/item_photo/large/'.$iMenuID);
  if (file_exists($sFullPath) && ! is_dir($sFullPath)) {
		$sImgThumb=base_url('index.php/uploads/item_photo/thumb/'.$iMenuID);
		$sImgFull=base_url('index.php/uploads/item_photo/large/'.$iMenuID);
  }
	$sMenuName=$aMenu['bsih_name'];
	$sMenuDesc=$aMenu['bsih_desc'];

	$sClickPreview=sprintf('showImage("dvModalShowImage","%s","%s","%s");',$sMenuName,$sImgFull,$sMenuDesc);

	$sClassCart=($aMenu['bsih_online']==1)?'btn-success':'btn-default';
	$sStatusCart=($aMenu['bsih_online']==1)?'0':'1';
	$btnCart=sprintf('btnOnlineItem_%d',$iMenuID);
	$sClickCart=sprintf('clickItemOnline(%d,%d);',$iMenuID,$sStatusCart);
	
	$sClassStar=($aMenu['bsih_recommend']==1)?'btn-success':'btn-default';
	$sStatusStar=($aMenu['bsih_recommend']==1)?'0':'1';
	$btnStar=sprintf('btnItemRecommend_%d',$iMenuID);
	$sClickStar=sprintf('clickItemRecommend(%d,%d);',$iMenuID,$sStatusStar);

	$btnEdit=sprintf('btnItemEdit_%d',$iMenuID);
	$sClickEdit=sprintf('showItemEdit(%d);',$iMenuID);
	
	$btnRemove=sprintf('btnItemDelete_%d',$iMenuID);
	$sClickRemove=sprintf('clickItemActive(%d,0);',$iMenuID);
	
	$btnRestore=sprintf('btnItemRestore_%d',$iMenuID);
	$sClickRestore=sprintf('clickItemActive(%d,1);',$iMenuID);
	$sClassRow=($aMenu['bsih_active']==1)?'bg-fade':'bg-danger';
?>
					<div class="row top10 <?php echo $sClassRow;?>">
						<div class="col-xs-2 col-md-2 col-lg-1 text-xs-center">
							<Div class="row top05 bottom05">
								<img class="img-round img-fluid" style="max-height:64px;" src='<?php echo $sImgThumb;?>' onclick='<?php echo $sClickPreview;?>'>
							</div>
						</div>
						<div class="col-xs-10 col-md-10 col-lg-11">
							<div class="row top05 bottom05">
								<div class="col-xs-12 col-md-8">
									<span class="h4 menu-title"><?php echo $aMenu['bsih_name'];?></span>
											<br><span class='h6' title='<?php echo $aMenu['bsih_desc'];?>'>
											<?php echo mb_strcut($aMenu['bsih_desc'],0,80,'UTF-8');?></span>
								</div>
								<div class="col-xs-12 text-xs-right col-md-1 h5 top20">
										<nobr><?php echo sprintf("$ %0.2f ",$aMenu['bsih_price']);?></nobr>
								</div>
								<div class="col-md-3 text-md-right col-xs-12 text-xs-right top15">
										<div class="input-group"><nobr>
										<button id='<?php echo $btnStar;?>' class="btn-sm <?php echo $sClassStar;?>" onClick='<?php echo $sClickStar;?>' title='Recommend this menu'><i class="fa fa-star"></i></button>
										<button id='<?php echo $btnCart;?>' class="btn-sm <?php echo $sClassCart;?>" onClick='<?php echo $sClickCart;?>' title='Online menu'><i class="fa fa-shopping-cart"></i></button>
										<button id='<?php echo $btnEdit;?>' class="btn-sm btn-warning" onClick='<?php echo $sClickEdit;?>' title='Edit item information'><i class="fa fa-pencil"></i></button>
		<?php if ($aMenu['bsih_active']==1) { ?>								
										<button id='<?php echo $btnRemove;?>' class="btn-sm btn-danger" onClick='<?php echo $sClickRemove;?>' title='Remove this item'><i class="fa fa-remove"></i></button>
		<?php } else { ?>
										<button id='<?php echo $btnRestore;?>' class="btn-sm btn-info" onClick='<?php echo $sClickRestore;?>' title='Restore this item'><i class="fa fa-refresh"></i></button>
											<?php } // end active ?></nobr>
										</div>
								</div>
							</div>
					</div>
					</div>
<?php } // end for $iMenut?>
      </div>
    </div>
<?php } // end for $iCount?>
<?php } // end if ?>
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
<?php require_once("menu_modal.php"); ?>
<?php require_once("menu_modal_section.php"); ?>
<?php require_once("menu_modal_menu.php"); ?>
<?php require_once("menu_modal_item.php"); ?>
<?php require_once("menu_index.js.php"); ?>
	