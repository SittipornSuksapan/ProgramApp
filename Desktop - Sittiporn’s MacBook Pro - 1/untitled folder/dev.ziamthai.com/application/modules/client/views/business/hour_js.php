<script>
<?php if (isset($message)) echo sprintf("alert('%s');",$message);	?>	
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
			url: '<?php echo base_url('index.php/client/business_hour/api_add_workhour/');?>',
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
					refreshTime(window.iType,<?php echo $access_workspace['id'];?>);
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
			url: '<?php echo base_url('index.php/client/business_hour/api_edit_workhour/');?>',
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
					refreshTime(window.iType,<?php echo $access_workspace['id'];?>);
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
			url: '<?php echo base_url('index.php/client/business_hour/api_del_workhour/');?>',
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
					refreshTime(window.iType,<?php echo $access_workspace['id'];?>);
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
			url: '<?php echo base_url('index.php/client/business_hour/api_active_online/');?>',
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
			url: '<?php echo base_url('index.php/client/business_hour/api_get_workhour/');?>',
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
						var iRecID=entry['id'];
						var iDOW=entry['idow'];
						var sDOW=entry['sdow'];
						var sOpen=entry['open'];
						var sClose=entry['close'];
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
		
		refreshTime(0,<?php echo $access_workspace['id'];?>);
		refreshTime(1,<?php echo $access_workspace['id'];?>);
		$('#dvModalInsert').modal('hide');
		$('#dvModalEdit').modal('hide');
	});
	
</script>