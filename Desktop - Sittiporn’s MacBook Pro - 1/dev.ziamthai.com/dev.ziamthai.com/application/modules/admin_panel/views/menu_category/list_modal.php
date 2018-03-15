<div class="modal fade" id="dvModal" tabindex="-1" role="dialog" aria-labelledby="dvModalTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="dvModalTitle"></h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			</div>
		</div>
	</div>
</div>
<!-- Add Category Modal -->
<div class="modal fade" id="dvModalAddCategory" tabindex="-1" role="dialog" aria-labelledby="dvModalAddCategoryTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-success">
				<h5 class="modal-title text-white" id="dvModalAddCategoryTitle">Add Menu Category for Shop '<span id='spAddCategoryTitle'></span>'</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formAddCategory">
			<input name="txtShopID" id="txtAddShopID" type="hidden" class="form-control" value="<?php echo $_REQUEST['id'];?>">
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Name : </label></div>
					<div class="col-md-6">
						<input name="txtName" id="txtAddName" type="text" class="form-control">
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Description : </label></div>
					<div class="col-md-8">
						<textarea name="txtDesc" id="txtAddDesc" rows="4" class="form-control"></textarea>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Ordering : </label></div>
					<div class="col-md-6">
						<input name="txtOrder" id="txtAddOrder" type="number" min="0" max="20" class="text-md-right" value='1'>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right">
							<img id="imgAddCategory" src="" width="50" height="50"> <label>Icon : </label>
					</div>
					<div class="col-md-6">
							<input id="fileAddCategory" name="fileCategory" type="file" class="form-control">
					</div>
				</div>
					
			</div>
			</form>
			<div class="modal-footer text-md-right">
				<button type="button" class="btn btn-success" onclick="clickAddCategory();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>

<!-- Edit Category Modal -->
<div class="modal fade" id="dvModalEditCategory" tabindex="-1" role="dialog" aria-labelledby="dvModalEditCategoryTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-warning">
				<h5 class="modal-title text-white" id="dvModalEditCategoryTitle">Edit Menu Category '<span id='spEditCategoryTitle'></span>'</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formEditCategory">
			<input name="txtShopID" id="txtEditShopID" type="hidden" class="form-control" value="<?php echo $_REQUEST['id'];?>">
			<input name="txtID" id="txtEditID" type="hidden" >
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Name : </label></div>
					<div class="col-md-6">
						<input name="txtName" id="txtEditName" type="text" class="form-control">
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Description : </label></div>
					<div class="col-md-8">
						<textarea name="txtDesc" id="txtEditDesc" rows="4" class="form-control"></textarea>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Ordering : </label></div>
					<div class="col-md-6">
						<input name="txtOrder" id="txtEditOrder" type="number" min="0" max="20" class="text-md-right">
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right">
							<img id="imgEditCategory" src="" width="50" height="50"> <label>Icon : </label>
					</div>
					<div class="col-md-6">
							<input id="fileEditCategory" name="fileCategory" type="file" class="form-control">
					</div>
				</div>
					
			</div>
			</form>
			<div class="modal-footer text-md-right">
					<button type="button" class="btn btn-warning" onclick="clickEditCategory();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>

<!-- Delete Category Modal -->
<div class="modal fade" id="dvModalDeleteCategory" tabindex="-1" role="dialog" aria-labelledby="dvModalDeleteCategoryTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-danger">
				<h5 class="modal-title text-white" id="dvModalDeleteCategoryTitle">Delete Menu Category for '<span id='spDeleteCategoryTitle'></span>'</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formDeleteCategory">
`			<input name="txtID" id="txtDeleteID" type="hidden" >
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Name : </label></div>
					<div class="col-md-6">
						<input name="txtName" id="txtDeleteName" type="text" class="form-control" readonly>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Description : </label></div>
					<div class="col-md-8">
							<textarea name="txtDesc" id="txtDeleteDesc" rows="4" class="form-control" readonly></textarea>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Ordering : </label></div>
					<div class="col-md-6">
							<input name="txtOrder" id="txtDeleteOrder" type="number" min="0" max="20" class="text-md-right" readonly>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right">
							<label>Icon : </label>
					</div>
					<div class="col-md-6">
						<img id="imgDeleteCategory" src="" width="50" height="50"> 
					</div>
				</div>
					
			</div>
			</form>
			<div class="modal-footer text-md-right">
					<button type="button" class="btn btn-danger" onclick="clickDeleteCategory();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>

<!-- Restore Category Modal -->
<div class="modal fade" id="dvModalRestoreCategory" tabindex="-1" role="dialog" aria-labelledby="dvModalRestoreCategoryTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-info">
				<h5 class="modal-title text-white" id="dvModalRestoreCategoryTitle">Restore Menu Category for '<span id='spRestoreCategoryTitle'></span>'</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formRestoreCategory">
			<input name="txtID" id="txtRestoreID" type="hidden" >
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Name : </label></div>
					<div class="col-md-6">
							<input name="txtName" id="txtRestoreName" type="text" class="form-control" readonly>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Description : </label></div>
					<div class="col-md-8">
						<textarea name="txtDesc" id="txtRestoreDesc" rows="4" class="form-control"></textarea>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Ordering : </label></div>
					<div class="col-md-6">
						<input name="txtOrder" id="txtRestoreOrder" type="number" min="0" max="20" class="text-md-right" readonly>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right">
							<label>Icon : </label>
					</div>
					<div class="col-md-6"><img id="imgRestoreCategory" src="" width="50" height="50"></div>
				</div>
					
			</div>
			</form>
			<div class="modal-footer text-md-right">
					<button type="button" class="btn btn-info" onclick="clickRestoreCategory();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
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
			<div class="modal-body text-md-center">
				<img id="imgModalDisplay" class="img-fluid" src=''>
			</div>
		</div>
	</div>
</div>

<!-- Add Menu Modal -->
<div class="modal fade" id="dvModalAddMenu" tabindex="-1" role="dialog" aria-labelledby="dvModalAddMenuTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form id="formAddMenu">
		<input name="txtShopID" id="txtAddShopID" type="hidden" class="form-control" value="<?php echo $_REQUEST['id'];?>">
		<input name="txtCateID" id="txtAddCateID" type="hidden" class="form-control" value="">
		<div class="modal-content">
			<div class="modal-header bg-success">
				<h5 class="modal-title text-white" id="dvModalAddMenuTitle">Add Menu to '<span id='spAddMenuTitle'></span>' </h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12 top10 b10"><input name="txtName" id="txtAddMenuName" type="text" class="form-control bg-gray h5" placeholder="Menu Name"> </div>
				</div>

				<div class="row top10 lh15">
					<div class="col-md-5 text-md-center">
						<img id="imgAddMenu" src="<?php echo base_url('/uploads/icon/camera_256.png');?>" width="240" height="240"  title="Menu Image Best 1:1">
						<br><br>
						<input id="fileAddMenu" name="fileMenu" type="file">
					</div>
					<div class="col-md-7 lh15" >
							<textarea name="txtDesc" id="txtAddMenuDesc" rows="4" class="form-control bg-gray" placeholder="Menu description"></textarea>
						<br>
						<span class="h5">Price: $ </span>
						<input name="txtPrice" id="txtAddMenuPrice" type="number" min="0" max="999.99" step='.05' class="text-md-right bg-gray" value='1'>
						<span class="h6">Ordering: </span>
						<input name="txtOrder" id="txtAddMenuOrder" type="number" min="0" max="999" class="text-md-right bg-gray" value='1'>
						<br><br>
						<input name="chkRecommend" id="chkAddRecommend" type="checkbox" min="0" max="999" class="bg-gray" checked>
						<span class="h5">Recommend Menu</span>
						<br><br>
						<input name="chkOnline" id="chkAddOnline" type="checkbox" min="0" max="999" class="bg-gray" checked>
						<span class="h5">Online Menu</span>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<div class="row">
					<div class="col-md-3 offset-md-9 text-md-right">
						<button type="button" class="btn btn-success" onclick="clickAddMenu();"><i class="fa fa-save"></i> Save </button>
					</div>
				</div>
			</div>
		</div>
		</form>
	</div>
</div>

<!-- Edit Menu Modal -->
<div class="modal fade" id="dvModalEditMenu" tabindex="-1" role="dialog" aria-labelledby="dvModalEditMenuTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form id="formEditMenu">
		<input name="txtMenuID" id="txtEditMenuID" type="hidden" class="form-control" value="<?php echo $_REQUEST['id'];?>">
		<div class="modal-content">
			<div class="modal-header bg-warning">
				<h5 class="modal-title text-white" id="dvModalEditMenuTitle">Edit Menu in '<span id='spEditMenuTitle'></span>' </h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12 top10 b10"><input name="txtName" id="txtEditMenuName" type="text" class="form-control bg-gray h5" placeholder="Menu Name"> </div>
				</div>

				<div class="row top10 lh15">
					<div class="col-md-5 text-md-center">
						<img id="imgEditMenu" src="<?php echo base_url('/uploads/icon/camera_256.png');?>" width="240" height="240"  title="Menu Image Best 1:1">
						<br><br>
						<input id="fileEditMenu" name="fileMenu" type="file">
					</div>
					<div class="col-md-7 lh15" >
							<textarea name="txtDesc" id="txtEditMenuDesc" rows="4" class="form-control bg-gray" placeholder="Menu description"></textarea>
						<br>
						<span class="h5">Price: $ </span>
						<input name="txtPrice" id="txtEditMenuPrice" type="number" min="0" max="999.99" step='.05' class="text-md-right bg-gray" value='1'>
						<span class="h6">Ordering: </span>
						<input name="txtOrder" id="txtEditMenuOrder" type="number" min="0" max="999" class="text-md-right bg-gray" value='1'>
						<br><br>
						<input name="chkRecommend" id="chkEditRecommend" type="checkbox" min="0" max="999" class="bg-gray">
						<span class="h5">Recommend Menu</span>
						<br><br>
						<input name="chkOnline" id="chkEditOnline" type="checkbox" min="0" max="999" class="bg-gray">
						<span class="h5">Online Menu</span>
					</div>
				</div>
			</div>
			<div class="modal-footer text-md-right">
				<button type="button" class="btn btn-warning" onclick="clickEditMenu();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
		</form>
	</div>
</div>

<!-- Delete Menu Modal -->
<div class="modal fade" id="dvModalDeleteMenu" tabindex="-1" role="dialog" aria-labelledby="dvModalDeleteMenuTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form id="formDeleteMenu">
		<input name="txtMenuID" id="txtDeleteMenuID" type="hidden" class="form-control" value="<?php echo $_REQUEST['id'];?>">
		<div class="modal-content">
			<div class="modal-header bg-danger">
				<h5 class="modal-title text-white" id="dvModalDeleteMenuTitle">Delete Menu in '<span id='spDeleteMenuTitle'></span>' </h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12 top10 b10"><input name="txtName" id="txtDeleteMenuName" type="text" class="form-control bg-gray h5" placeholder="Menu Name" readonly> </div>
				</div>

				<div class="row top10 lh15">
					<div class="col-md-5 text-md-center">
						<img id="imgDeleteMenu" src="<?php echo base_url('/uploads/icon/camera_256.png');?>" width="240" height="240"  title="Menu Image Best 1:1">
						<br><br>
					</div>
					<div class="col-md-7 lh15" >
							<textarea name="txtDesc" id="txtDeleteMenuDesc" rows="4" class="form-control bg-gray" placeholder="Menu description" readonly></textarea>
						<br>
						<span class="h5">Price: $ </span>
						<input name="txtPrice" id="txtDeleteMenuPrice" type="number" min="0" max="999.99" step='.05' class="text-md-right bg-gray" value='1' readonly>
						<span class="h6">Ordering: </span>
						<input name="txtOrder" id="txtDeleteMenuOrder" type="number" min="0" max="999" class="text-md-right bg-gray" value='1' readonly>
						<br><br>
						<input name="chkRecommend" id="chkDeleteRecommend" type="checkbox" min="0" max="999" class="bg-gray" disabled>
						<span class="h5">Recommend Menu</span>
						<br><br>
						<input name="chkOnline" id="chkDeleteOnline" type="checkbox" min="0" max="999" class="bg-gray" disabled>
						<span class="h5">Online Menu</span>
					</div>
				</div>
			</div>
			<div class="modal-footer text-md-right">
				<button type="button" class="btn btn-danger" onclick="clickDeleteMenu();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
		</form>
	</div>
</div>

<!-- Restore Menu Modal -->
<div class="modal fade" id="dvModalRestoreMenu" tabindex="-1" role="dialog" aria-labelledby="dvModalDeleteMenuTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form id="formRestoreMenu">
		<input name="txtMenuID" id="txtRestoreMenuID" type="hidden" class="form-control" value="<?php echo $_REQUEST['id'];?>">
		<div class="modal-content">
			<div class="modal-header bg-info">
				<h5 class="modal-title text-white" id="dvModalRestoreMenuTitle">Delete Menu in '<span id='spRestoreMenuTitle'></span>' </h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12 top10 b10"><input name="txtName" id="txtRestoreMenuName" type="text" class="form-control bg-gray h5" placeholder="Menu Name" readonly> </div>
				</div>

				<div class="row top10 lh15">
					<div class="col-md-5 text-md-center">
						<img id="imgRestoreMenu" src="<?php echo base_url('/uploads/icon/camera_256.png');?>" width="240" height="240"  title="Menu Image Best 1:1">
						<br><br>
					</div>
					<div class="col-md-7 lh15" >
							<textarea name="txtDesc" id="txtRestoreMenuDesc" rows="4" class="form-control bg-gray" placeholder="Menu description" readonly></textarea>
						<br>
						<span class="h5">Price: </span>
						<input name="txtPrice" id="txtRestoreMenuPrice" type="number" min="0" max="999.99" step='.05' class="text-md-right bg-gray" value='1' readonly>
						<span class="h5">Order: </span>
						<input name="txtOrder" id="txtRestoreMenuOrder" type="number" min="0" max="999" class="text-md-right bg-gray" value='1' readonly>
						<br><br>
						<input name="chkRecommend" id="chkRestoreRecommend" type="checkbox" min="0" max="999" class="bg-gray" disabled>
						<span class="h5">Recommend Menu</span>
						<br><br>
						<input name="chkOnline" id="chkRestoreOnline" type="checkbox" min="0" max="999" class="bg-gray" disabled>
						<span class="h5">Online Menu</span>
					</div>
				</div>
			</div>
			<div class="modal-footer text-md-right">
				<button type="button" class="btn btn-info" onclick="clickRestoreMenu();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
		</form>
	</div>
</div>

