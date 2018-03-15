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
?>
<div class="card card-outline-secondary">
	<div class="card-header h4 card-warning">
<?php if ($user_level!='admin') { ?>
		<?php echo $sTitleHead; ?> 
<?php } else { ?>
		<div class="col-md-5 top10">
			<a href="<?php echo $sBackClick; ?>" class="btn btn-sm btn-primary" title="<?php echo $sTitleBack; ?>">
			<i class="fa fa-chevron-left"></i> Back</a> <?php echo $sTitleHead; ?> 
		</div>
		<div class="col-md-7 text-md-right">
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit1/?id='.$bssh_id);?>'>Information</a>
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/business_header/edit2/?id='.$bssh_id);?>'>Images</a>
				<a class='btn btn-lg btn-primary' href='<?php echo base_url('index.php/admin_panel/menu_category/?id='.$bssh_id);?>'>Menu</a>
		</div>
<?php } ?>
	</div>
	<div class="card-block">
			<h3>Shop : <?php echo $shopName;?></h4>
		<div id="dvTabHourList" role='tablist' aria-multiselectable="true">
			<div class="card">
				<div class="card-header" role="tab" id="headWorkActive">
					<h5><a data-toggle="collapse" data-parent="#dvTabHourList" href="#dvWorkActive" aria-expanded="true" aria-controls="dvWorkActive">
							Force open
						</a>
					</h5>
				</div>
				<div id="dvWorkActive" class="collapse show" role='tabpanel' aria-labelledby="headWorkActive">
					<form method="post" id='formActive'>
					<div class="card-block row">
							<div class="col-md-8">
 									<label class="form-check-label"><span class="btn btn-lg bg-success">&nbsp; &nbsp; <input type="radio" name="chkActive" value='1' <?php echo ($active==1)?'CHECKED':'';?>> Active &nbsp; &nbsp;</span></label>
									&nbsp; &nbsp; &nbsp; 
									<label class="form-check-label"><span class='btn btn-lg bg-warning'>&nbsp; &nbsp; <input type="radio" name="chkActive" value='0' <?php echo ($active==0)?'CHECKED':'';?>> DeActive &nbsp; &nbsp;</span></label>
							</div>
							<div class="col-md-4 text-right text-md-right">
								<input type="hidden" name="shopID" value="<?php echo $bssh_id;?>">
								<a class="btn btn-lg btn-success" onclick="activeClick();"><i class="fa fa-save"></i> Save</a>									
							</div>
					</div>
					</form>
				</div>
			</div>

			<div class="card">
				<div class="card-header" role="tab" id="headWorkHour">
					<h5><a data-toggle="collapse" data-parent="#dvTabHourList" href="#dvWorkHour" aria-expanded="true" aria-controls="dvWorkHour">
							Local Hours
						</a>
					</h5>
				</div>
				<div id="dvWorkHour" class="collapse show" role='tabpanel' aria-labelledby="headWorkHour">
					<div class="card-block">
 						<table class="table table-bordered table-hover" width='100%'>
								<thead>
									<tr class="table-active">
										<th class="text-xs-center">DOW</th>
										<th class="text-xs-center">Open-Close</th>
 										<th class="text-xs-center">
											<button class="btn btn-sm btn-success" onclick="insertTime(0);"><i class="fa fa-plus-square"></i> Insert</button>
											<button class="btn btn-sm btn-primary" onclick="refreshTime(0,<?php echo $bssh_id;?>);"><i class="fa fa-refresh"></i> Reload</button>
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
					<h5><a data-toggle="collapse" data-parent="#dvTabHourList" href="#dvOrderHour" aria-expanded="true" aria-controls="dvOnlineHour">
							Online Hours
						</a>
					</h5>
				</div>
				<div id="dvOrderHour" class="collapse show" role='tabpanel' aria-labelledby="headOrderHour">
					<div class="card-block">
 						<table class="table table-bordered table-hover" width='100%'>
								<thead>
									<tr class="table-active">
										<th class="text-xs-center">DOW</th>
										<th class="text-xs-center">Open-Close</th>
 										<th class="text-xs-center">
											<button class="btn btn-sm btn-success" onclick="insertTime(1);"><i class="fa fa-plus-square"></i> Insert</button>
											<button class="btn btn-sm btn-primary" onclick="refreshTime(1,<?php echo $bssh_id;?>);"><i class="fa fa-refresh"></i> Reload</button>
										</th>
									</tr>
								</thead>
								<tbody id='tblBodyOrderHour'>
								</tbody>
						</table>
					</div>
				</div>
			</div>
				
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
					<input type="hidden" name="shopID" id="iShopID" value="<?php echo $bssh_id;?>">
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

<script>
<?php if (! is_null($message)) echo sprintf("alert('%s');",$message);	?>	
	function insertTime(type) {
		console.log('insertTime '+type);
		window.iType=type;
		var sTitle=null;
		var iDay=0;
		var tOpen='00:00:00';
		var tClose='23:59:59';
		if (type==0) {
			sTitle='Insert Biz Work Hour';
		} else {
			sTitle='Insert Biz Order Hour';
		}
		$('#spModalInsertTitle').html(sTitle);
		$('#iInsertType').val(type);
		$('#dvModalInsert').modal('show');
		$('#timeInsertOpen').val(tOpen);
		$('#timeInsertClose').val(tClose);
	}
	
	function insertClick() {
		console.log('insertClick');
		var formData=new FormData($('#formInsert')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/business_header/api_add_workhour/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[insertClick] Success')
//				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('!!! Cannot Add Work Hour !!!');
				} else {
					alert('Add Work Hour Successful.');
					$('#dvModalInsert').modal('hide');
					refreshTime(window.iType,<?php echo $bssh_id;?>);
				}
			},
			error: function(msg){
				console.log('[insertClick] Error');
				console.log(msg);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}
	
	function editTime(id,type,dow,open,close) {
		console.log('EditTime '+type);
		window.iType=type;
		var sTitle=null;
		var iDay=0;
		var tOpen='00:00:00';
		var tClose='23:59:59';
		if (type==0) {
			sTitle='Edit Biz Work Hour';
		} else {
			sTitle='Edit Biz Order Hour';
		}
		if (dow != null) $iDay=dow;
		if (open != null) $tOpen=open;
		if (close != null) $tClose=close;
		$('#iEditRecID').val(id);
		$('#spModalEditTitle').html(sTitle);
		$('#iEditType').val(type);
		$('#dvModalEdit').modal('show');
		$('#selEditDOW').val(dow);
		$('#timeEditOpen').val(open);
		$('#timeEditClose').val(close);
	}
	
	function editClick() {
		console.log('EditClick');
		var formData=new FormData($('#formEdit')[0]);
		console.log(formData);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/business_header/api_edit_workhour/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[EditClick] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('!!! Cannot Edit Work Hour !!!'+msg['message']);
				} else {
					alert('Edit Work Hour Successful.');
					$('#dvModalEdit').modal('hide');
					refreshTime(window.iType,<?php echo $bssh_id;?>);
				}
			},
			error: function(msg){
				console.log('[EditClick] Error');
				console.log(msg);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function delTime(id,type,dow,open,close) {
		console.log('DelTime '+type);
		window.iType=type;
		var sTitle=null;
		if (type==0) {
			sTitle='Delete Biz Work Hour';
		} else {
			sTitle='Delete Biz Order Hour';
		}
		$('#iDelRecID').val(id);
		$('#iDelType').val(type);
		$('#spModalDelTitle').html(sTitle);
		$('#dvModalDel').modal('show');
		$('#selDelDOW').val(dow);
		$('#timeDelOpen').val(open);
		$('#timeDelClose').val(close);
	}
	
	function delClick() {
		console.log('[delClick]');
		var formData=new FormData($('#formDelete')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/business_header/api_del_workhour/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[delClick] Success')
//				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('!!! Cannot Delete Work Hour !!!');
				} else {
					alert('Delet Work Hour Successful.');
					$('#dvModalDel').modal('hide');
					refreshTime(window.iType,<?php echo $bssh_id;?>);
				}
			},
			error: function(msg){
				console.log('[DeleteClick] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function activeClick() {
		console.log('[activeClick]');
		var formData=new FormData($('#formActive')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/business_header/api_active_online/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[activeClick] Success')
//				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('!!! Cannot Activate/Deactivate !!!');
				} else {
					alert('Active/Deactivate Successful.');
				}
			},
			error: function(msg){
				console.log('[activeClick] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function refreshTime(type,id) {
		console.log('[refreshTime][Info] type='+type+' id='+id);
		if ((type>1) || (type <0)) {
			console.log('[refreshTime][Error] type mismatch.')
			return null;
		}
		window.tblBody="tblBodyWorkHour";
		if (type==1) window.tblBody="tblBodyOrderHour";
		var formData=new FormData();
		formData.append('shopID',id);
		formData.append('iType',type);
		window.shopID=id;
		window.iType=type;
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/business_header/api_get_workhour/');?>',
			dataType: 'json', 
			data: formData,
			success: function(result){
				console.log('[refreshTime] Success')
				console.log(result);
				if (result==null) {
					alert
				} else {
					$('#'+window.tblBody).empty();
					$.each(result['data'],function(index,entry) {
						var iRecID=entry['bssw_id'];
						var iDOW=entry['bssw_day_week'];
						var sDOW=entry['day_of_week'];
						var sOpen=entry['bssw_open_time'];
						var sClose=entry['bssw_close_time'];
						var sEdit="editTime("+iRecID+","+window.iType+","+iDOW+",'"+sOpen+"','"+sClose+"');";
						var sDelete="delTime("+iRecID+","+window.iType+","+iDOW+",'"+sOpen+"','"+sClose+"');";
						
						var sHTML='<tr>';
						sHTML+='<td class="text-xs-center">'+sDOW+'</td>';
						sHTML+='<td class="text-xs-center">'+sOpen+' - '+sClose+'</td>';
						sHTML+='<td class="text-xs-center">';
						sHTML+='<a class="btn btn-sm btn-warning" onclick="'+sEdit+'"><i class="fa fa-pencil-square"></i> Edit</a>';
						sHTML+='&nbsp; <a class="btn btn-sm btn-danger" onclick="'+sDelete+'"><i class="fa fa-minus-square"></i> Del</a>';
						sHTML+='</td>';
						sHTML+='</tr>';

						$('#'+window.tblBody).append(sHTML);
					});
				}
			},
			error: function(result){
				console.log('[refreshTime] Error');
				
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	$(document).ready(function() {
//    var table=$('#tblTagSearch').DataTable();

		$.ajaxSetup({
			async: false,
			error: function(jqXHR, exception) {
				var msgError="";
//						alert("jqXHR\n"+dump(jqXHR));
//						alert("exception\n"+dump(exception));
				if (jqXHR.status === 0) {
//                alert('Not connect.\n Verify Network.\n');
						msgError='Not connect.\n Verify Network.\n';
				} else if (jqXHR.status == 404) {
//                alert('Requested page not found. [404]');
						msgError='Requested page not found. [404]';
				} else if (jqXHR.status == 500) {
//                alert('Internal Server Error [500].');
						msgError='Internal Server Error [500].';
				} else if (exception === 'parsererror') {
//                alert('Requested JSON parse failed.');
						msgError='Requested JSON parse failed.';
				} else if (exception === 'timeout') {
//                alert('Time out error.');
						msgError='Time out error.';
				} else if (exception === 'abort') {
//                alert('Ajax request aborted.');
						msgError='Ajax request aborted.';
				} else {
//                alert('Uncaught Error.\n' + jqXHR.responseText);
						msgError='Uncaught Error.\n' + jqXHR.responseText;
				}
//						$('#'+output).val("Error : "+msgError);
				//$('#'+output).html("Error : "+msgError);
			}
		});
		
		refreshTime(0,<?php echo $bssh_id;?>);
		refreshTime(1,<?php echo $bssh_id;?>);
		$('#dvModalInsert').modal('hide');
		$('#dvModalEdit').modal('hide');
	});
	
</script>