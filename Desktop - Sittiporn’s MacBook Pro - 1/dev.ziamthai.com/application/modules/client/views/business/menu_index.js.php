<script>
//var DEBUG=undefined;
var DEBUG="XXX";
/*
	var data=<?php echo json_encode($sub_data);?>;
	$('#input_bssh_subcate').select2({
		data : data
	});
*/
	function centerModal() {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
    $(this).css('display', 'block');
    var $dialog = $(this).find(".modal-dialog"),
    offset = ($(window).height() - $dialog.height()) / 2,
    bottomMargin = parseInt($dialog.css('marginBottom'), 10);

    // Make sure you don't hide the top part of the modal w/ a negative margin if it's longer than the screen height, and keep the margin equal to the bottom margin of the modal
    if(offset < bottomMargin) offset = bottomMargin;
        $dialog.css("margin-top", offset);
	}
	function showImage(dvModal,Title,Img,ImgTitle) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		$('#imgShow').attr('src','');
		$('#spModalTitle').html(Title);
		$('#spShowImage').html(ImgTitle);
		$('#imgShow').attr('src',Img);
		$('#'+dvModal).modal('show');
		$('#'+dvModal+' div.modal-body').css({width:'auto',height:'auto', 'max-height':'100%'});
		centerModal();
	}
	
	function readURL(img,input) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
					$('#'+img).attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	 }
    
	function readIMG(img,input) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		var allowedExtensions=['jpg','jpeg','png'];
		if (input) {
			var value = input.val(),
        file = value.toLowerCase(),
        extension = input.substring(file.lastIndexOf('.') + 1);
			if (inArray(extension,allowedExtensions)==-1) {
				var reader = new FileReader();
				reader.onload = function (e) {
						$('#'+img).attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			} else {
				alert('File Not Match');
			}
		}
	 }
    
	function restoreImg(Img,File) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
    $('#'+Img).attr('src', '<?php echo base_url('/uploads/icon/camera_256.png');?>');
    $('#'+File).val('');
  }

	function getMenu(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		window.menu=null;
		$.ajax({
			url: '<?php echo base_url("index.php/client/business_menu/api_menu_get/");?>',
			global: false,
			type: 'POST',
			data: {'menuID':id},
			dataType: 'json',
			async: false, //blocks window close
			success: function(data) {
				if (data['result']==true) {
					window.menu=data['data'];
				}
			}
		});
	}

	function getSection(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		window.section=null;
		$.ajax({
			url: '<?php echo base_url("index.php/client/business_menu/api_section_get/");?>',
			global: false,
			type: 'POST',
			data: {'sectionID':id},
			dataType: 'json',
			async: false, //blocks window close
			success: function(data) {
				if (data['result']==true) {
					window.section=data['data'];
				}
			}
		});
	}

	function getItem(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		window.item=null;
		$.ajax({
			url: '<?php echo base_url("index.php/client/business_menu/api_item_get/");?>',
			global: false,
			type: 'POST',
			data: {'itemID':id},
			dataType: 'json',
			async: false, //blocks window close
			success: function(data) {
				if (data['result']==true) {
					window.item=data['data'];
				}
			}
		});
	}



/* Menu */
  function showMenuAdd(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		
		alert('no avaible now');
/*		
    $('#dvModalMenuAdd').modal('show');
		centerModal();
*/
  }
  function showMenuEdit(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		getMenu(id);
		console.log(window.menu);
		$('#spMenuEditTitle').html(window.menu['bsic_name']);
		$('#txtMenuEditID').val(window.menu['bsic_id']);
		$('#txtMenuEditName').val(window.menu['bsic_name']);
		$('#txtMenuEditDesc').val(window.menu['bsic_desc']);
		$('#txtMenuEditOrder').val(window.menu['bsic_order']);
		$('#txtMenuEditStart').val(window.menu['tstart']);
		$('#txtMenuEditStop').val(window.menu['tstop']);
		
    $('#dvModalMenuEdit').modal('show');
		centerModal();
  }

	function clickMenuEdit() {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		var formData=new FormData($('#formMenuEdit')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/client/business_menu/api_menu_edit/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('['+arguments.callee.name+'] Success');
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Edit menu failed.');
				} else {
					alert('Edit menu successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('['+arguments.callee.name+'] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

/*
No USE NOW
	function showMenuDelete(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
    $('#dvModalMenuDelete').modal('show');
		centerModal();
  }
  function showMenuRestore(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
    $('#dvModalMenuRestore').modal('show');
		centerModal();
  }
*/

/*	Section */
  function showSectionAdd() {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		$('#txtSectionAddName').val('');
		$('#txtSectionAddDesc').val('');
		$('#txtSectionAddOrder').val('1');
		$('#txtSectionAddMenuID').val(arguments[0]);
    $('#dvModalSectionAdd').modal('show');
		centerModal();
  }

	function clickSectionAdd() {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		var formData=new FormData($('#formSectionAdd')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/client/business_menu/api_section_add/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('['+arguments.callee.name+'] Success');
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Add Section failed.');
				} else {
					alert('Add Section successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('['+arguments.callee.name+'] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function showSectionEdit(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		getSection(id);
		$('#txtSectionEditMenuID').val(id);
		$('#txtSectionEditName').val(window.section['bsic_name']);
		$('#txtSectionEditDesc').val(window.section['bsic_desc']);
		$('#txtSectionEditOrder').val(window.section['bsic_order']);
    $('#dvModalSectionEdit').modal('show');
		centerModal();
  }

	function clickSectionEdit() {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		var formData=new FormData($('#formSectionEdit')[0]);
		console.log(formData);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/client/business_menu/api_section_edit/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('['+arguments.callee.name+'] Success');
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Edit Section failed.');
				} else {
					$('#dvModalSectionEdit').modal('hide');
					alert('Edit Section successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('['+arguments.callee.name+'] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function clickSectionActive(id,status) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		getSection(id);
		console.log(window.section);
		sURL='<?php echo base_url('index.php/client/business_menu/');?>';
		sFunc='Do you confirm to ';
		if (status) { 
			sURL+='api_section_restore/';
			sFunc=sFunc+'Restore';
		}else {
			sURL+='api_section_delete/';
			sFunc=sFunc+'Delete';
		}
		sFunc=sFunc+' "'+window.section['bsic_name']+'" ?';
		if (confirm(sFunc)) {
			$.ajax({
				type: 'POST',
				url: sURL,
				data: 'menuID='+id,
				dataType: 'json', 
				success: function(msg){
					console.log('['+arguments.callee.name+'] Success');
					console.log(msg);
	//				alert(msg);
					if (msg['result']==false) {
						alert('Edit Section failed.');
					} else {
						alert('Edit Section successful.');
						window.location.reload();
					}
				},
				error: function(msg){
					console.log('['+arguments.callee.name+'] Error');
					console.log(msg.responseText);
	//				alert(msg);
				},
				cache: false,
	//			contentType: false,
				processData: false
			});
		}
  }

/*	Item */
	function showItemView(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		$('#dvModalItemView').modal('show');
		centerModal();
  }

function showItemAdd(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		getSection(id);
		console.log(window.section);
		$('#txtItemAddSectionID').val(id);
		$('#spItemAddTitle').html(window.section['bsic_name']);
		$('#labelItemAddOnlineOff').click();
		$('#labelItemAddRecommendOff').click();
		$('#labelItemAddActiveOff').click();
		$('#dvModalItemAdd').modal('show');
		centerModal();
  }

	function clickItemAdd() {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		var formData=new FormData($('#formItemAdd')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/client/business_menu/api_item_add/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('['+arguments.callee.name+'] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Add item failed.');
				} else {
					$('#dvModalEditMenu').modal('hide');
					alert('Add item successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('['+arguments.callee.name+'] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}


  function showItemEdit(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		getItem(id);
		var sURL='';
		console.log(window.item);
		$('#txtItemEditID').val(id);
		$('#spItemEditTitle').html(window.item['bsih_name']);
		$('#txtItemEditName').val(window.item['bsih_name']);
		$('#txtItemEditDesc').val(window.item['bsih_desc']);
		$('#txtItemEditOrder').val(window.item['bsih_order']);
		$('#txtItemEditPrice').val(window.item['bsih_price']);
		sURL='<?php echo base_url('uploads/biz_item_photo');?>/'+window.item['bsih_photo'];
		$('#imgItemEdit').attr('src',sURL);
		console.log('#imgItemEdit => '+sURL);
		$('#labelItemEditOnlineOff').click();
		$('#labelItemEditRecommendOff').click();
		$('#labelItemEditActiveOff').click();
		if (window.item['bsih_active']==1) $('#labelItemEditActiveOn').click();
		if (window.item['bsih_online']==1) $('#labelItemEditOnlineOn').click();
		if (window.item['bsih_recommend']==1) $('#labelItemEditRecommendOn').click();
    $('#dvModalItemEdit').modal('show');
		centerModal();
  }

	function clickItemEdit() {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		var formData=new FormData($('#formItemEdit')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/client/business_menu/api_item_edit/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('['+arguments.callee.name+'] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Edit item failed.');
				} else {
					$('#dvModalEditMenu').modal('hide');
					alert('Edit item successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('['+arguments.callee.name+'] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function clickItemActive(id,status) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		getItem(id);
		console.log(window.section);
		sURL='<?php echo base_url('index.php/client/business_menu/');?>';
		sFunc='Do you confirm to ';
		window.sMode='';
		if (status) { 
			sURL+='api_item_restore/';
			window.sMode='Restore';
		}else {
			sURL+='api_item_delete/';
			window.sMode='Delete';
		}
		sFunc=sFunc+sMode+' "'+window.item['bsih_name']+'" ?';
		if (confirm(sFunc)) {
			$.ajax({
				type: 'POST',
				url: sURL,
				data: 'itemID='+id,
				dataType: 'json', 
				success: function(msg){
					console.log('['+arguments.callee.name+'] Success');
					console.log(msg);
	//				alert(msg);
					if (msg['result']==false) {
						alert(window.sMode+' Item failed.');
					} else {
						alert(window.sMode+' Item successful.');
						window.location.reload();
					}
				},
				error: function(msg){
					console.log('['+arguments.callee.name+'] Error');
					console.log(msg.responseText);
	//				alert(msg);
				},
				cache: false,
	//			contentType: false,
				processData: false
			});
		}
  }
  
	function clickItemRecommend(id,status) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		getItem(id);
		console.log(window.section);
		sFunc='Do you confirm to ';
		window.sMode='';
		if (status) { 
			window.sMode='Recommended';
		}else {
			window.sMode='Unrecommended';
		}
		sFunc=sFunc+sMode+' "'+window.item['bsih_name']+'" ?';
		if (confirm(sFunc)) {
			$.ajax({
				type: 'POST',
				url: '<?php echo base_url('index.php/client/business_menu/api_item_recommend/');?>',
				data: 'itemID='+id+'&status='+status,
				dataType: 'json', 
				success: function(msg){
					console.log('['+arguments.callee.name+'] Success');
					console.log(msg);
	//				alert(msg);
					if (msg['result']==false) {
						alert(window.sMode+' Item failed.');
					} else {
						alert(window.sMode+' Item successful.');
						window.location.reload();
					}
				},
				error: function(msg){
					console.log('['+arguments.callee.name+'] Error');
					console.log(msg.responseText);
	//				alert(msg);
				},
				cache: false,
	//			contentType: false,
				processData: false
			});
		}
  }
  
	function clickItemOnline(id,status) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
		getItem(id);
		console.log(window.section);
		sFunc='Do you confirm to ';
		window.sMode='';
		if (status) { 
			window.sMode='online ordering';
		}else {
			window.sMode='offline ordering';
		}
		sFunc=sFunc+sMode+' for "'+window.item['bsih_name']+'" ?';
		if (confirm(sFunc)) {
			$.ajax({
				type: 'POST',
				url: '<?php echo base_url('index.php/client/business_menu/api_item_online/');?>',
				data: 'itemID='+id+'&status='+status,
				dataType: 'json', 
				success: function(msg){
					console.log('['+arguments.callee.name+'] Success');
					console.log(msg);
	//				alert(msg);
					if (msg['result']==false) {
						alert(window.sMode+' Item failed.');
					} else {
						alert(window.sMode+' Item successful.');
						window.location.reload();
					}
				},
				error: function(msg){
					console.log('['+arguments.callee.name+'] Error');
					console.log(msg.responseText);
	//				alert(msg);
				},
				cache: false,
	//			contentType: false,
				processData: false
			});
		}
  }
  
	function showPreviewItem(id) {
		if (typeof DEBUG !== 'undefined') {
			var iLoop=-1;
			console.log('func :['+arguments.callee.name+ ']');
			while(++iLoop < arguments.length) {
				console.log(iLoop+' => '+arguments[iLoop]);
			}
		}
    $('#dvModalItemPreview').modal('show');
		centerModal();
	}
  

  $("#fileItemAdd").change(function(){
			readURL('imgItemAdd',this);
	});
	
	$("#fileItemEdit").change(function(){
			readURL('imgItemEdit',this);
	});

</script>
