
<!-- Add Section Modal -->
<div class="modal fade" id="dvModalSectionAdd" tabindex="-1" role="dialog" aria-labelledby="dvModalSectionAddTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-success">
				<h5 class="modal-title text-white" id="dvModalSectionAddTitle">Add Section in "<?php echo $sMainName;?>"</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formSectionAdd">
			<input name="shopID" id="txtSectionAddShopID" type="hidden" class="form-control" value="<?php echo $access_workspace['id'];?>">
			<input name="sectionID" id="txtSectionAddMenuID" type="hidden" class="form-control" value="">
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Name : </label></div>
					<div class="col-md-6">
						<input name="txtName" id="txtSectionAddName" type="text" class="form-control">
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Description : </label></div>
					<div class="col-md-8">
						<textarea name="txtDesc" id="txtSectionAddDesc" rows="4" class="form-control"></textarea>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Ordering : </label></div>
					<div class="col-md-6">
						<input name="txtOrder" id="txtSectionAddOrder" type="number" min="0" max="20" class="text-md-right" value='1'>
					</div>
				</div>
							
			</div>
			</form>
			<div class="modal-footer text-md-right">
				<button type="button" class="btn btn-primary" onclick="clickSectionAdd();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>

<!-- Edit Section Modal -->
<div class="modal fade" id="dvModalSectionEdit" tabindex="-1" role="dialog" aria-labelledby="dvModalSectionEditTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-warning">
				<h5 class="modal-title text-white" id="dvModalSectionEditTitle">Edit Section in "<?php echo $sMainName;?>"</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formSectionEdit">
			<input name="shopID" id="txtSectionEditShopID" type="hidden" class="form-control" value="<?php echo $access_workspace['id'];?>">
			<input name="menuID" id="txtSectionEditMenuID" type="hidden" class="form-control" value="">
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Name : </label></div>
					<div class="col-md-6">
						<input name="txtName" id="txtSectionEditName" type="text" class="form-control">
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Description : </label></div>
					<div class="col-md-8">
						<textarea name="txtDesc" id="txtSectionEditDesc" rows="4" class="form-control"></textarea>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Ordering : </label></div>
					<div class="col-md-6">
						<input name="txtOrder" id="txtSectionEditOrder" type="number" min="0" max="20" class="text-md-right" value='1'>
					</div>
				</div>
							
			</div>
			</form>
			<div class="modal-footer text-md-right">
				<button type="button" class="btn btn-primary" onclick="clickSectionEdit();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>
