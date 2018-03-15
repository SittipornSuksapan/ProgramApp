<!-- Add Item Modal -->
<div class="modal fade" id="dvModalItemAdd" tabindex="-1" role="dialog" aria-labelledby="dvModalItemAddTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form id="formItemAdd">
		<input name="shopID" id="txtItemAddShopID" type="hidden" class="form-control" value="<?php echo $access_workspace['id'];?>">
		<input name="sectionID" id="txtItemAddSectionID" type="hidden" class="form-control" value="">
		<div class="modal-content">
			<div class="modal-header bg-success">
				<h5 class="modal-title text-white" id="dvModalItemAddTitle">Add Item to '<span id='spItemAddTitle'></span>' </h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12 top10 bottom10">
						<input name="txtName" id="txtItemAddName" type="text" class="form-control bg-gray h5" placeholder="Item Name">
					</div>
				</div>

				<div class="row top10">
					<div class="col-md-5 text-md-center">
						<img id="imgItemAdd" src="<?php echo base_url('/uploads/icon/camera_256.png');?>" width="240" height="240"  title="Item Image Best 1:1">
						<br><br>
					</div>
					<div class="col-md-7">
						<textarea name="txtDesc" id="txtItemAddDesc" rows="4" class="form-control bg-gray" placeholder="Item description"></textarea>
						<br>
						<span class="h5">Price: $ </span>
						<input name="txtPrice" id="txtItemAddPrice" type="number" min="0" max="999.99" step='.05' class="text-md-right bg-gray" value='1'>
						<span class="h6">Ordering: </span>
						<input name="txtOrder" id="txtItemAddOrder" type="number" min="0" max="999" class="text-md-right bg-gray" value='1'>
						<br><br>
            <div class="row">
              <div class="col-md-12 text-md-left">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-sm btn-outline-danger" id="labelItemAddRecommendOff">
                    <input name="chkRecommend" id="chkItemAddRecommend" type="radio" value='0'>Off</label>
                  <label class="btn btn-sm btn-outline-success" id="labelItemAddrecommendOn">
                    <input name="chkRecommend" id="chkItemAddRecommend" type="radio" value='1'>On</label>
                    <label>&nbsp; &nbsp; Recommend Item</label>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 text-md-left">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-sm btn-outline-danger" id="labelItemAddOnlineOff">
                    <input name="chkOnline" id="chkItemAddOnline" type="radio" value='0'>Off</label>
                  <label class="btn btn-sm btn-outline-success" id="labelItemAddOnlineOn">
                    <input name="chkOnline" id="chkItemAddOnline" type="radio" value='1'>On</label>
                    <label>&nbsp; &nbsp; Online Item</label>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 text-md-left">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-sm btn-outline-danger" id="labelItemAddActiveOff">
                    <input name="chkActive" id="chkItemAddActive" type="radio" value='0'>Off</label>
                  <label class="btn btn-sm btn-outline-success" id="labelItemAddActiveOn">
                    <input name="chkActive" id="chkItemAddActive" type="radio" value='1'>On</label>
                  <label>&nbsp; &nbsp; Active Item</label>
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-xs-left">
            <button onclick="restoreImg('imgItemAdd','fileItemAdd');return false;"><i class="fa fa-refresh"></i></button>
            <input id="fileItemAdd" name="fileItem" type="file">
          </div>
        </div>
        <div class="modal-footer">
          <div class="row">
            <div class="col-md-3 offset-md-9 text-md-right">
              <button type="button" class="btn btn-primary" onclick="clickItemAdd();"><i class="fa fa-save"></i> Save </button>
            </div>
          </div>
        </div>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- Edit Item Modal -->
<div class="modal fade" id="dvModalItemEdit" tabindex="-1" role="dialog" aria-labelledby="dvModalItemEditTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form id="formItemEdit">
		<input name="itemID" id="txtItemEditID" type="hidden" class="form-control" value="">
		<div class="modal-content">
			<div class="modal-header bg-warning">
				<h5 class="modal-title text-white" id="dvModalItemEditTitle">Edit Item to '<span id='spItemEditTitle'></span>' </h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12 top10 bottom10">
						<input name="txtName" id="txtItemEditName" type="text" class="form-control bg-gray h5" placeholder="Item Name">
					</div>
				</div>

				<div class="row top10">
					<div class="col-md-5 text-md-center">
						<img id="imgItemEdit" src="<?php echo base_url('/uploads/icon/camera_256.png');?>" width="240" height="240"  title="Item Image Best 1:1">
						<br><br>
					</div>
					<div class="col-md-7">
						<textarea name="txtDesc" id="txtItemEditDesc" rows="4" class="form-control bg-gray" placeholder="Item description"></textarea>
						<br>
						<span class="h5">Price: $ </span>
						<input name="txtPrice" id="txtItemEditPrice" type="number" min="0" max="999.99" step='.05' class="text-md-right bg-gray" value='1'>
						<span class="h6">Ordering: </span>
						<input name="txtOrder" id="txtItemEditOrder" type="number" min="0" max="999" class="text-md-right bg-gray" value='1'>
						<br><br>
            <div class="row">
              <div class="col-md-12 text-md-left">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-sm btn-outline-danger" id="labelItemEditRecommendOff">
                    <input name="chkRecommend" id="chkItemEditRecommend" type="radio" value='0'>Off</label>
                  <label class="btn btn-sm btn-outline-success" id="labelItemEditRecommendOn">
                    <input name="chkRecommend" id="chkItemEditRecommend" type="radio" value='1'>On</label>
                    <label>&nbsp; &nbsp; Recommend Item</label>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 text-md-left">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-sm btn-outline-danger" id="labelItemEditOnlineOff">
                    <input name="chkOnline" id="chkItemEditOnline" type="radio" value='0'>Off</label>
                  <label class="btn btn-sm btn-outline-success" id="labelItemEditOnlineOn">
                    <input name="chkOnline" id="chkItemEditOnline" type="radio" value='1'>On</label>
                    <label>&nbsp; &nbsp; Online Item</label>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 text-md-left">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-sm btn-outline-danger" id="labelItemEditActiveOff">
                    <input name="chkActive" id="chkItemEditActive" type="radio" value='0'>Off</label>
                  <label class="btn btn-sm btn-outline-success" id="labelItemEditActiveOn">
                    <input name="chkActive" id="chkItemEditActive" type="radio" value='1'>On</label>
                  <label>&nbsp; &nbsp; Active Item</label>
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-xs-left">
            <button onclick="restoreImg('imgItemEdit','fileItemEdit');return false;"><i class="fa fa-refresh"></i></button>
            <input id="fileItemEdit" name="fileItem" type="file">
          </div>
        </div>
        <div class="modal-footer">
          <div class="row">
            <div class="col-md-3 offset-md-9 text-md-right">
              <button type="button" class="btn btn-primary" onclick="clickItemEdit();"><i class="fa fa-save"></i> Save </button>
            </div>
          </div>
        </div>
      </div>
      </form>
    </div>
  </div>
</div>
