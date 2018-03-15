<!-- Add Menu Modal -->
<div class="modal fade" id="dvModalMenuAdd" tabindex="-1" role="dialog" aria-labelledby="dvModalMenuAddTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-success">
				<h5 class="modal-title text-white" id="dvModalMenuAddTitle">Add Menu for Shop '<span id='spMenuAddTitle'><?php echo $access_workspace['name'];?></span>'</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formMenuAdd">
			<input name="shopID" id="txtMenuAddShopID" type="hidden" class="form-control" value="<?php echo $access_workspace['id'];?>">
			<input name="sectionID" id="txtMenuAddSectionID" type="hidden" class="form-control" value="">
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Name : </label></div>
					<div class="col-md-6">
						<input name="txtName" id="txtMenuAddName" type="text" class="form-control">
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Description : </label></div>
					<div class="col-md-8">
						<textarea name="txtDesc" id="txtMenuAddDesc" rows="4" class="form-control"></textarea>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Ordering : </label></div>
					<div class="col-md-6">
						<input name="txtOrder" id="txtMenuAddOrder" type="number" min="0" max="20" class="text-md-right" value='1'>
					</div>
				</div>
							
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Menu Hour : </label></div>
					<div class="col-md-6">
						<input name="txtStart" id="txtMenuAddTimeStart" type="time" class="text-md-right" value="00:00:00">
						<input name="txtStop" id="txtMenuAddTimeStop" type="time" class="text-md-right" value="00:00:00">
					</div>
				</div>

			</div>
			</form>
			<div class="modal-footer text-md-right">
				<button type="button" class="btn btn-success" onclick="clickMenuAdd();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>

<!-- Edit Category Modal -->
<div class="modal fade" id="dvModalMenuEdit" tabindex="-1" role="dialog" aria-labelledby="dvModalMenuEditTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-warning">
				<h5 class="modal-title text-white" id="dvModalMenuEditTitle">Edit Menu '<span id='spMenuEditTitle'></span>'</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formMenuEdit">
			<input name="shopID" id="txtMenuEditShopID" type="hidden" class="form-control" value="<?php echo $access_workspace['id'];?>">
			<input name="menuID" id="txtMenuEditID" type="hidden" >
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Name : </label></div>
					<div class="col-md-6">
						<input name="txtName" id="txtMenuEditName" type="text" class="form-control">
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Description : </label></div>
					<div class="col-md-8">
						<textarea name="txtDesc" id="txtMenuEditDesc" rows="4" class="form-control"></textarea>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Ordering : </label></div>
					<div class="col-md-6">
						<input name="txtOrder" id="txtMenuEditOrder" type="number" min="0" max="20" class="text-md-right">
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-3 offset-md-1 text-md-right"><label>Menu Hour : </label></div>
					<div class="col-md-6">
						<input name="txtStart" id="txtMenuEditStart" type="time" class="text-md-right" value="00:00:00">
						<input name="txtStop" id="txtMenuEditStop" type="time" class="text-md-right" value="00:00:00">
					</div>
				</div>
					
			</div>
			</form>
			<div class="modal-footer text-md-right">
					<button type="button" class="btn btn-warning" onclick="clickMenuEdit();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>

<!-- Delete Menu Modal -->
<div class="modal fade" id="dvModalMenuDelete" tabindex="-1" role="dialog" aria-labelledby="dvModalMenuDeleteTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-danger">
				<h5 class="modal-title text-white" id="dvModalMenuDeleteTitle">Delete Menu for '<span id='spMenuDeleteTitle'></span>'</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="formMenuDelete">
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
					<div class="col-md-3 offset-md-1 text-md-right"><label>Menu Hour : </label></div>
					<div class="col-md-6">
						<input name="txtTimeStart" id="txtEditTimeStart" type="time" class="text-md-right" value="00:00:00" readonly="">
						<input name="txtTimeStop" id="txtEditTimeStop" type="time" class="text-md-right" value="00:00:00" readonly="">
					</div>
				</div>

			</div>

			</form>
			<div class="modal-footer text-md-right">
					<button type="button" class="btn btn-danger" onclick="clickMenuDelete();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>

<!-- Restore Category Modal -->
<div class="modal fade" id="dvModalMenuRestore" tabindex="-1" role="dialog" aria-labelledby="dvModalMenuRestoreTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-info">
				<h5 class="modal-title text-white" id="dvModalMenuRestoreTitle">Restore Menu for '<span id='spMenuRestoreTitle'></span>'</h5>
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
					<div class="col-md-3 offset-md-1 text-md-right"><label>Menu Hour : </label></div>
					<div class="col-md-6">
						<input name="txtTimeStart" id="txtRestoreTimeStart" type="time" class="text-md-right" value="00:00:00" readonly="">
						<input name="txtTimeStop" id="txtRestoreTimeStop" type="time" class="text-md-right" value="00:00:00" readonly="">
					</div>
				</div>

			</div>
			</form>
			<div class="modal-footer text-md-right">
					<button type="button" class="btn btn-info" onclick="clickRestoreCategory();"><i class="fa fa-save"></i> Save </button>
			</div>
		</div>
	</div>
</div>