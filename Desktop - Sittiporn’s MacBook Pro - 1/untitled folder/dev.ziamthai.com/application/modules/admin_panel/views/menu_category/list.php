<style>
		.top10 {margin-top: 10px;	}
		.top05 {margin-top: 5px;}
		.b10 {margin-bottom: 10px;	}
		.b05 {margin-bottom: 5px;}
		.lh15 {line-height: 150%;}
		.lh20 {line-height: 200%;}
		label {	font-weight: bold;}
		.card {background: #DDD;}
		div.modal-header > button.close { top: 15px; position: absolute; right: 15px;}
  	.modal-content{
    border-radius: 20px !important; }		
  	.modal-header{
    border-top-left-radius:20px !important; 
    border-top-right-radius:20px !important; 
		}
		.padLR05 { padding-left: 5px; padding-right: 5px;}
		.pad05 { padding-left: 5px; padding-right: 5px; padding-top: 5px; padding-bottom: 5px;}
		.pad10 { padding-left: 10px; padding-right: 10px; padding-top: 10px; padding-bottom: 10px;}
</style>
<?php
 	$sBackClick = sprintf("%s", base_url('index.php/admin_panel/business_header/')); 

	$sTitleBack = "Back to biz shop information";
	$sTitleHead = "Category & Menu";
//	$sAddCateClick = sprintf("%s?&id=%d", base_url('index.php/admin_panel/menu_category/add/'), $shop['bssh_id']);
	$sAddCateClick = sprintf('showAddCategory("%s");',$shop['bssh_title']);
?>
<div class="card card-outline-secondary">
	<div class="card-header h4 card-warning">
<?php if ($user_level != 'admin') { ?>
		<?php echo "Shop Category & Menu"; ?> 
<?php } else { ?>		
		<div class="col-md-5 top10">
			<a href="<?php echo $sBackClick; ?>" class="btn btn-sm btn-primary" title="<?php echo $sTitleBack; ?>">
			<i class="fa fa-chevron-left"></i> Back</a> <?php echo $sTitleHead; ?> 
		</div>
		<div class="col-md-7 text-md-right">
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit1/?id='.$shop['bssh_id']);?>'>Information</a>
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit2/?id='.$shop['bssh_id']);?>'>Images</a>
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit3/?id='.$shop['bssh_id']);?>'>Hours</a>
		</div>
<?php } ?>
	</div>
	<div class="card-block">
	<h3>Shop : "<?php echo $shop['bssh_title'];?>"<br>
 	<button class='btn btn-sm btn-success' onClick='<?php echo $sAddCateClick;?>return false;'><i class="fa fa-plus"></i> Add Menu Category</button> 
	</h3>
		<div id='dvTabList' role='tablist' aria-multiselectable="true">
<?php 
	$iMax=count($subcate['data']);
	for ($iRun=0; $iRun <$iMax; $iRun++) {
	$aInfo=$subcate['data'][$iRun];
	$dvCardID=sprintf('dvCardMain_%d',$iRun+1);
	$dvHeadID=sprintf('dvMainMenu_%d',$iRun+1);
	$dvCollapseID=sprintf('dvCollapse_%d',$iRun+1);
	$sTableBodyID=sprintf("tblBodyMenu_%d",$iRun+1);
	$sHeadTitle=sprintf('%s',$aInfo['bsic_name']);
	$sReloadClick=sprintf("clickReloadMenu(%d,%d,%d);",$iRun+1,$aInfo['bsic_bssh_id'],$aInfo['bsic_id']);
	$sEditClick = sprintf("showEditCategory(%d,'%s');", $aInfo['bsic_id'],$sHeadTitle);
	$sRestoreClick = sprintf("showRestoreCategory(%d,'%s');", $aInfo['bsic_id'],$sHeadTitle);
	$sDeleteClick = sprintf("showDeleteCategory(%d,'%s');", $aInfo['bsic_id'],$sHeadTitle);
	$sListClick = sprintf("%s?&id=%d", base_url('index.php/admin_panel/menu_category/'), $aInfo['bsic_id']);
	$sTitleEdit = sprintf("Edit '%s'", $aInfo['bsic_name']);
	$sTitleDelete = sprintf("Delete '%s'", $aInfo['bsic_name']);
	$sTitleRestore = sprintf("Restore '%s'", $aInfo['bsic_name']);
	$sTitleReload = sprintf("Reload '%s'", $aInfo['bsic_name']);
	$sTitlePurge = sprintf("Purge '%s'", $aInfo['bsic_name']);
	$sTitleList = sprintf("Menu of '%s'", $aInfo['bsic_name']);
	$sTitleAddMenu = sprintf("Add Menu to '%s'", $aInfo['bsic_name']);
//	$sTitleAddMenu = $sAddMenuClick;
	$sPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$aInfo['bsic_image']);
	$sImg=sprintf('%s%s',base_url(PATH_BIZ_CATEGORY),$aInfo['bsic_image']);
 	$sClassHeader=($aInfo['bsic_active']==0)?'bg-inverse text-white':'';
	$iStart=$aInfo['menu']['index']['start'];
	$iStop=$aInfo['menu']['index']['stop'];
	$iMaxMenu=$iStop-$iStart;
	if ($iStart>0) $iMaxMenu++;
	$iMaxRec=$aInfo['menu']['index']['max'];
	$sAddMenuClick = sprintf("showAddMenu('%s','%d');",$sHeadTitle,$aInfo['bsic_id']);
?>
		<div id="<?php echo $dvCardID;?>" class="card">
			<div class="card-header row-fluid <?php echo $sClassHeader;?>" role="tab" id="<?php echo $dvHeadID;?>">
  				<div class="col-md-6">
					<h5 class="mb-0">
<?php if ((file_exists($sPath)) && (! is_dir($sPath)) ){?> <img src='<?php echo $sImg;?>' width='25' height="25"><?php } ?>
 						<?php echo $sHeadTitle;?>
					</h5>
				</div>
				<div class='col-md-6 text-md-right'>
					<nowrap>
					<button type="button" onClick="<?php echo $sEditClick; ?>" class="btn btn-sm btn-warning" title="<?php echo $sTitleEdit; ?>"><i class="fa fa-edit"></i></button>
					<?php if ($aInfo['bsic_active'] == 1) { ?>
					<button type="button" onClick="<?php echo $sDeleteClick; ?>" class="btn btn-sm btn-danger" title="<?php echo $sTitleDelete; ?>"><i class="fa fa-times"></i></button>
					<?php } else { ?>
					<button type="button" onClick="<?php echo $sRestoreClick; ?>" class="btn btn-sm btn-info" title="<?php echo $sTitleRestore; ?>"><i class="fa fa-undo"></i></button>
					<?php } ?>
					<a class="btn btn-sm btn-primary" data-toggle="collapse" data-parent="#dvTabList" href="#<?php echo $dvCollapseID;?>" aria-expanded="true" aria-controls="<?php echo $dvCollapseID;?>">
							<i class="fa fa-cutlery"></i>
					</a>
					</nowrap>
				</div>
			</div>

			<div id="<?php echo $dvCollapseID;?>" class="collapse show" role="tabpanel" aria-labelledby="<?php echo $dvHeadID;?>">
				<div class="card-block">
						<table class="table-bordered table-hover">
							<thead>
								<tr align="center"> 
<!--									<th><button class='btn btn-sm btn-info' onClick="<?php echo $sReloadClick;?>return false;" title="<?php echo $sTitleReload;?>"><i class="fa fa-undo"></i></button></th> -->
									<th class="text-md-center padLR05" width="20%">Code</th>
									<th class="padLR05" width="80%">Name</th>
									<th><button class='btn btn-sm btn-info' onClick="<?php echo $sReloadClick;?>return false;" title="<?php echo $sTitleReload;?>"><i class="fa fa-undo"></i></button></th>
									<th><button class='btn btn-sm btn-success' onClick="<?php echo $sAddMenuClick;?>return false;" title="<?php echo $sTitleAddMenu;?>"><i class="fa fa-plus"></i></button>
									</th>
 								</tr>
								
							</thead>
							<tbody id='<?php echo $sTableBodyID;?>'>
<?php 
	if ($iMaxMenu <1) {?>
								<tr><td class="text-md-center h3" colspan="5">No Record found</td></tr>
<?php 
			} else {
				$dvPageNumber=sprintf('dvPageNumber_%d',$iRun+1);
				$dvPageIndex=sprintf('dvPageIndex_%d',$iRun+1);
				for ($iMenu=0; $iMenu<$iMaxMenu; $iMenu++) {
					$aMenu=$aInfo['menu']['data'][$iMenu];
					$sTitleEditMenu = sprintf("Edit Menu '%s'", $aMenu['bsih_name']);
					$sTitleDeleteMenu = sprintf("Delete Menu '%s'", $aMenu['bsih_name']);
					$sTitleRestoreMenu = sprintf("Restore Menu '%s'", $aMenu['bsih_name']);
					$sTitleViewMenu= sprintf("View Menu '%s'", $aMenu['bsih_name']);
					$sPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$aMenu['bsih_photo']);
					$sImg=sprintf('%s%s',base_url(PATH_ITEM_PHOTO),$aMenu['bsih_photo']);
					$sEditMenuClick = sprintf("showEditMenu('%s',%d);",$sHeadTitle,$aMenu['bsih_id']);
					$sDeleteMenuClick = sprintf("showDeleteMenu('%s',%d);",$sHeadTitle,$aMenu['bsih_id']);
					$sRestoreMenuClick = sprintf("showRestoreMenu('%s',%d);",$sHeadTitle,$aMenu['bsih_id']);
					if (file_exists($sPath) && !is_dir($sPath)) {
						$sClickImage="showImage('dvModalImage','".$aMenu['bsih_name']."', 'imgModalDisplay', '".$sImg."');";
					}
					$aMenu=$aInfo['menu']['data'][$iMenu];
					$sClassMenu=($aMenu['bsih_active']==0)?'bg-warning':'bg-gray';
?>
								<tr class='<?php echo $sClassMenu;?>'>
									<td class="padLR05"><?php echo $aMenu['bsih_code']?></td>
									<td class="padLR05"><span title="<?php echo $aMenu['bsih_desc'];?>"><?php echo $aMenu['bsih_name'];?></span></td>
									<td><button class='btn btn-sm btn-warning' onClick="<?php echo $sEditMenuClick;?>return false;" title="<?php echo $sTitleEditMenu;?>"><i class="fa fa-edit"></i></button></td>
<?php if ($aMenu['bsih_active']==1) {?>
									<td><button class='btn btn-sm btn-danger' onClick="<?php echo $sDeleteMenuClick;?>return false;" title="<?php echo $sTitleDeleteMenu;?>"><i class="fa fa-times"></i></button></td>
<?php } else {?>
									<td><button class='btn btn-sm btn-info' onClick="<?php echo $sRestoreMenuClick;?>return false;" title="<?php echo $sTitleRestoreMenu;?>"><i class="fa fa-refresh"></i></button></td>
<?php }?>						
								</tr>
<?php		} // end for?>
<?php } // end if?>
							</tbody>
						</table>
						<div class="row top10">
							<div id='<?php echo $dvPageNumber;?>' class="col-md-6 text-md-left bg-info">
									Display <?php echo $iStart;?> - <?php echo $iStop; ?> of <?php echo $iMaxRec;?> record(s).
							</div>
							<div id='<?php echo $dvPageIndex;?>' class="col-md-4 offset-md-2 text-md-right bg-primary text-white">
									-
							</div>
						</div>
				</div>
			</div>
		</div><?php }?>
		</div>
	</div>
</div>
<?php
include('list_modal.php');
include('list_js.php');
/*
echo "result: <pre>"; print_r($result);
if (! is_null($shop)) { echo "\nshop:\n"; print_r($shop); }
if (! is_null($subcate)) { echo "\nsubcate:\n"; print_r($subcate); }
echo "</pre>";
 */
?>