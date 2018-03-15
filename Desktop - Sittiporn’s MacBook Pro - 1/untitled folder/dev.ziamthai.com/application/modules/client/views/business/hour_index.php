<link href="<?php echo base_url('asset/select2/css/select2.min.css')?>" rel="stylesheet" />
<script src="<?php echo base_url('asset/select2/js/select2.full.js')?>"></script>
<style>
		.top10 {margin-top: 10px;	}
		.top05 {margin-top: 5px;}
		label {	font-weight: bold;}
		.card {background: #DDD;}
		div.modal-header > button.close { top: 15px; position: absolute; right: 15px;}
		.table td {padding: 5px;}
</style>
<?php
	$sBackClick = sprintf("%s", base_url('index.php/admin_panel/business_header/')); 
	$sTitleBack = "Back to biz shop information";
	$sTitleHead = "Open & Close Shop";
  $active=0;
?>
<h1><?php echo $sTitleHead; ?></h1>
<div class="card">
  <div class="card-header" role="tab" id="headWorkActive">
    <h5><a data-toggle="collapse"  href="#dvWorkActive" aria-expanded="true" aria-controls="dvWorkActive">
        Force open
      </a>
    </h5>
  </div>
  <div id="dvWorkActive" class="collapse show in" role='tabpanel' aria-labelledby="headWorkActive">
    <form method="post" id='formActive'>
    <div class="card-block row">
        <div class="col-md-8">
            <label class="form-check-label"><span class="btn btn-lg bg-success">&nbsp; &nbsp; <input type="radio" name="chkActive" value='1' <?php echo ($active==1)?'CHECKED':'';?>> Active &nbsp; &nbsp;</span></label>
            &nbsp; &nbsp; &nbsp; 
            <label class="form-check-label"><span class='btn btn-lg bg-warning'>&nbsp; &nbsp; <input type="radio" name="chkActive" value='0' <?php echo ($active==0)?'CHECKED':'';?>> DeActive &nbsp; &nbsp;</span></label>
        </div>
        <div class="col-md-4 text-right text-md-right">
          <input type="hidden" name="shopID" value="<?php echo $access_workspace['id'];?>">
          <a class="btn btn-lg btn-success" onclick="activeClick();"><i class="fa fa-save"></i> Save</a>									
        </div>
    </div>
    </form>
  </div>
</div>

<div class="card">
  <div class="card-header" role="tab" id="headWorkHour">
    <h5><a data-toggle="collapse" href="#dvWorkHour" aria-expanded="true" aria-controls="dvWorkHour">
        Local Hours
      </a>
    </h5>
  </div>
  <div id="dvWorkHour" class="collapse show in" role='tabpanel' aria-labelledby="headWorkHour">
    <div class="card-block">
      <table class="table table-bordered table-hover" width='100%'>
          <thead>
            <tr class="table-active">
              <th class="text-xs-center">DOW</th>
              <th class="text-xs-center">Open-Close</th>
              <th class="text-xs-center">
                <button class="btn btn-sm btn-success" onclick="insertTime(0);"><i class="fa fa-plus-square"></i> Insert</button>
                <button class="btn btn-sm btn-primary" onclick="refreshTime(0,<?php echo $access_workspace['id'];?>);"><i class="fa fa-refresh"></i> Reload</button>
              </th>
            </tr>
          </thead>
          <tbody id='tblBodyWorkHour'>
          </tbody>
      </table>
    </div>
  </div>
</div>

<div class="card">
  <div class="card-header" role="tab" id="headOrderHour">
    <h5><a data-toggle="collapse" href="#dvOrderHour" aria-expanded="true" aria-controls="dvOnlineHour">
        Online Hours
      </a>
    </h5>
  </div>
  <div id="dvOrderHour" class="collapse show in" role='tabpanel' aria-labelledby="headOrderHour">
    <div class="card-block">
      <table class="table table-bordered table-hover" width='100%'>
          <thead>
            <tr class="table-active">
              <th class="text-xs-center">DOW</th>
              <th class="text-xs-center">Open-Close</th>
              <th class="text-xs-center">
                <button class="btn btn-sm btn-success" onclick="insertTime(1);"><i class="fa fa-plus-square"></i> Insert</button>
                <button class="btn btn-sm btn-primary" onclick="refreshTime(1,<?php echo $access_workspace['id'];?>);"><i class="fa fa-refresh"></i> Reload</button>
              </th>
            </tr>
          </thead>
          <tbody id='tblBodyOrderHour'>
          </tbody>
      </table>
    </div>
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

<div class="modal hide" id='dvModalInsert' tabindex="-1" role="dialog" aria-labelledby="spModalInsertTitle" aria-hidden="true">
  <div class="modal-dialog">
		<form method="post" id="formInsert">
		<div class="modal-content">
      <div class="modal-header  bg-success text-white">
				<h5 class="modal-title" id="spModalInsertTitle">Title</h5>
        <button type="button" class="close top10" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></button>
      </div>

			<div class="modal-body">
				<div class="row top10">
					<div class="col-md-2 offset-md-1 text-center top10">
							<select id="selInsertDOW" name="selDOW">
<?php for ($iCount=0; $iCount<7; $iCount++) {
								echo sprintf("<option value='%d'>%s</option>",$iCount,day_of_week($iCount));
}?>
							</select>
					</div>
					<div class="col-md-8 form-group top10">
							<input id="timeInsertOpen" name="timeOpen" type="time">
							<span class="form-group-addon"> - </span>										
							<input id="timeInsertClose" name="timeClose" type="time">
					</div>
				</div>			
      </div>
			<div class="modal-footer text-md-right">
					<input type="hidden" name="shopID" id="iShopID" value="<?php echo $access_workspace['id'];?>">
					<input type="hidden" name="iType" id="iInsertType" value="">
					<button type="button" class="btn-success" href='#' onclick="insertClick();"><i class="fa fa-plus-square"></i> Add</button>
			</div>
    </div>
		</form>
  </div>
</div>

<div class="modal hide" id='dvModalEdit' tabindex="-1" role="dialog" aria-labelledby="spModalEditTitle" aria-hidden="true">
  <div class="modal-dialog">
		<form method="post" id="formEdit">
		<div class="modal-content">
      <div class="modal-header  bg-warning">
				<h5 class="modal-title" id="spModalEditTitle">Title</h5>
        <button type="button" class="close top10" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></button>
      </div>

			<div class="modal-body">
				<div class="row top10">
					<div class="col-md-2 offset-md-1 text-center top10">
							<select id="selEditDOW" name="selDOW">
<?php for ($iCount=0; $iCount<7; $iCount++) {
								echo sprintf("<option value='%d'>%s</option>",$iCount,day_of_week($iCount));
}?>
							</select>
					</div>
					<div class="col-md-8 form-group top10">
							<input id="timeEditOpen" name="timeOpen" type="time">
							<span class="form-group-addon"> - </span>										
							<input id="timeEditClose" name="timeClose" type="time">
					</div>
				</div>			
      </div>
			<div class="modal-footer text-md-right">
					<input type="hidden" name="iType" id="iEditType" value="">
					<input type="hidden" name="recID" id="iEditRecID" value="">
					<button type="button" class="btn-warning" href='#' onclick="editClick();"><i class="fa fa-save"></i> Save</button>
			</div>
    </div>
		</form>
  </div>
</div>

<div class="modal hide" id='dvModalDel' tabindex="-1" role="dialog" aria-labelledby="spModalDelTitle" aria-hidden="true">
  <div class="modal-dialog">
		<form method="post" id="formDelete">
		<div class="modal-content">
      <div class="modal-header  bg-danger">
				<h5 class="modal-title" id="spModalDelTitle">Title</h5>
        <button type="button" class="close top10" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></button>
      </div>

			<div class="modal-body">
				<div class="row top10">
					<div class="col-md-2 offset-md-1 text-center top10">
							<select id="selDelDOW" name="selDOW" disabled>
<?php for ($iCount=0; $iCount<7; $iCount++) {
								echo sprintf("<option value='%d'>%s</option>",$iCount,day_of_week($iCount));
}?>
							</select>
					</div>
					<div class="col-md-8 form-group top10">
							<input id="timeDelOpen" name="timeOpen" type="time" disabled>
							<span class="form-group-addon"> - </span>										
							<input id="timeDelClose" name="timeClose" type="time" disabled>
					</div>
				</div>			
      </div>
			<div class="modal-footer text-md-right">
					<input type="hidden" name="iType" id="iDelType" value="">
					<input type="hidden" name="recID" id="iDelRecID" value="">
					<button type="button" class="btn-danger" href='#' onclick="delClick();"><i class="fa fa-times"></i> Delete</button>
			</div>
    </div>
		</form>
  </div>
</div>
<?php include('hour_js.php');?>