<script>
	window.category=null;
	window.mymenu=null;
	function showImage(sDiv,sTitle, sImage, sFile) {
		$('#dvModalImageTitle').text(sTitle);
		$('#'+sImage).attr('src',sFile);
		$('#'+sDiv).modal('show');
		$('#'+sDiv+' div.modal-body').css({width:'auto',height:'auto', 'max-height':'100%'});
		centerModal();
	}
	function centerModal() {
    $(this).css('display', 'block');
    var $dialog = $(this).find(".modal-dialog"),
    offset = ($(window).height() - $dialog.height()) / 2,
    bottomMargin = parseInt($dialog.css('marginBottom'), 10);

    // Make sure you don't hide the top part of the modal w/ a negative margin if it's longer than the screen height, and keep the margin equal to the bottom margin of the modal
    if(offset < bottomMargin) offset = bottomMargin;
        $dialog.css("margin-top", offset);
	}

	function readURL(img,input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
					$('#'+img).attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	 }
    
	function showAddCategory(title) {
		$('#spAddCategoryTitle').html(title);
		$('#txtAddName').val('');
		$('#txtAddDesc').val('');
		$('#txtAddOrder').val('0');
		$('#fileAddCategory').val('');
		$('#imgAddCategory').attr('src','');
		$('#dvModalAddCategory').modal('show');
	}	
	
	function clickAddCategory() {
		console.log('clickAddCategory');
		var formData=new FormData($('#formAddCategory')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_add_category/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[clickAddCategory] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Add menu category failed.');
				} else {
					alert('Add menu category successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('[clickAddCategory] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function showEditCategory(id,title) {
		window.category=null;
		GetCategory(id);
		console.log(window.category);
		if (window.category==null) {
			alert('No Find Category. Please Reload Page');
		} else {
			$('#txtEditID').val(id);
			$('#spEditCategoryTitle').html(title);
			$('#txtEditName').val(window.category['bsic_name']);
			$('#txtEditDesc').val(window.category['bsic_desc']);
			$('#txtEditOrder').val(window.category['bsic_order']);
			if (window.category['img_url']==null) {
				$('#imgEditCategory').attr('src','');
			} else {
				$('#imgEditCategory').attr('src',window.category['img_url']);
			}
			$('#dvModalEditCategory').modal('show');
		}
	}	

	function clickEditCategory() {
		console.log('clickEditCategory');
		var formData=new FormData($('#formEditCategory')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_edit_category/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[clickEditCategory] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Edit menu category failed.');
				} else {
					alert('Edit menu category successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('[clickEditCategory] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function showDeleteCategory(id,title) {
		window.category=null;
		GetCategory(id);
		console.log(window.category);
		if (window.category==null) {
			alert('No Find Category. Please Reload Page');
		} else {
			$('#txtDeleteID').val(id);
			$('#spDeleteCategoryTitle').html(title);
			$('#txtDeleteName').val(window.category['bsic_name']);
			$('#txtDeleteDesc').val(window.category['bsic_desc']);
			$('#txtDeleteOrder').val(window.category['bsic_order']);
			if (window.category['img_url']==null) {
				$('#imgDeleteCategory').attr('src','');
			} else {
				$('#imgDeleteCategory').attr('src',window.category['img_url']);
			}
			$('#dvModalDeleteCategory').modal('show');
		}
	}	

	function clickDeleteCategory() {
		console.log('clickDeleteCategory');
		var formData=new FormData($('#formDeleteCategory')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_delete_category/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[clickDeleteCategory] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Delete menu category failed.');
				} else {
					alert('Delete menu category successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('[clickDeleteCategory] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function showRestoreCategory(id,title) {
		window.category=null;
		GetCategory(id);
		console.log(window.category);
		if (window.category==null) {
			alert('No Find Category. Please Reload Page');
		} else {
			$('#txtRestoreID').val(id);
			$('#spRestoreCategoryTitle').html(title);
			$('#txtRestoreName').val(window.category['bsic_name']);
			$('#txtRestoreDesc').val(window.category['bsic_desc']);
			$('#txtRestoreOrder').val(window.category['bsic_order']);
			if (window.category['img_url']==null) {
				$('#imgRestoreCategory').attr('src','');
			} else {
				$('#imgRestoreCategory').attr('src',window.category['img_url']);
			}
			$('#dvModalRestoreCategory').modal('show');
		}
	}	
	
	function clickRestoreCategory() {
		console.log('clickRestoreCategory');
		var formData=new FormData($('#formRestoreCategory')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_restore_category/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[clickRestoreCategory] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Restore menu category failed.');
				} else {
					alert('Restore menu category successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('[clickRestoreCategory] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function GetCategory(id) {
		console.log('GetCategory '+id);
		window.category=null;
		$.ajax({
			url: '<?php echo base_url("index.php/admin_panel/menu_category/api_get_category/");?>',
			global: false,
			type: 'POST',
			data: {'id':id},
			dataType: 'json',
			async: false, //blocks window close
			success: function(data) {
				if (data['result']==true) {
					window.category=data['data'];
				}
			}
		});
/*		
		$.post(url,{'id':id},function(data){
 			console.log(data);
			if (data['result']==true) {
				window.category=data['data'];
			}
		},'json');
*/
	}
	
	function clickReloadMenu(tableID,shopID,cateID) {
		console.log('clickReloadMenu');
		window.category=null;
		window.mymenu=null;
		GetCategory(cateID);
		window.table='#tblBodyMenu_'+tableID;
		window.pageNumber='#dvPageNumber_'+tableID;
		window.pageIndex='#dvPageIndex_'+tableID;
		$.ajax({
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_list_menu/');?>',
			global: false,
			type: 'POST',
			data: {'cateID':cateID,'shopID':shopID},
			dataType: 'json', 
			async: false,
			success: function(msg){
				console.log('[clickReloadMenu] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Reload menu failed.');
					$(window.table).empty();
					var html='';
					html+='<tr >';
 					html+='<td class="text-md-center h3 bg-danger" colspan="5"> No record found.</td>';
					html+='</tr>';
					$(window.table).append(html);
				} else {
					var sNumber='Display '+msg['index']['start']+' - '+msg['index']['stop']+ ' of '+msg['index']['max']+' records.';
					$(window.pageNumber).html(sNumber);
					$(window.pageIndex).html('-');
					$(window.table).empty();
					if (msg['data'].length == 0) {
							var html='';
							html+='<tr >';
 							html+='<td class="text-md-center h3 bg-danger" colspan="5"> No record found.</td>';
							html+='</tr>';
							$(window.table).append(html);
					} else {
						$.each(msg['data'],function(index,entry) {
							var html='';
							var sClickImage='';
							var sClickEdit="showEditMenu('";
							var sClickDelete="showDeleteMenu('";
							var sClickRestore="showRestoreMenu('";
							var sCode='';
							sClickEdit+=window.category['bsic_name']+"',"+entry['bsih_id']+');';
							sClickDelete+=window.category['bsic_name']+"',"+entry['bsih_id']+');';
							sClickRestore+=window.category['bsic_name']+"',"+entry['bsih_id']+');';
							if (entry['bsih_code']!==null) {
								sCode=entry['bsih_code'];
							}
							var sName='';
							var sTitle='';
							if (entry['bsih_name'] != null) {
								sName=entry['bsih_name']
							}
							if (entry['bsih_desc'] != null) {
								sTitle=entry['bsih_desc']
							}
							sClass='bg-gray';
							if (entry['bsih_active'] == 0) {
								sClass='bg-warning';
							}
							html+='<tr class="'+sClass+'">';
							html+='<td class="padLR05">'+sCode+'</td>';
							html+='<td class="padLR05"><span title="'+sTitle+'">'+sName+'</span></td>';
							html+='<td><button class="btn btn-sm btn-warning" type="button" onclick="'+sClickEdit+'return false;" title="Edit menu \''+sName+'\'"><i class="fa fa-edit"></i></button></td>';
							if (entry['bsih_active']==1) {
								html+='<td><button class="btn btn-sm btn-danger" type="button" onclick="'+sClickDelete+'return false;" title="Delete menu \''+sName+'\'"><i class="fa fa-times"></i></button></td>';
							} else {
								html+='<td><button class="btn btn-sm btn-info" type="button" onclick="'+sClickRestore+'return false;" title="Restore menu \''+sName+'\'"><i class="fa fa-refresh"></i></button></td>';
							}
							html+='</tr>';
							$(window.table).append(html);
						});
						alert('refresh');
					}
				}
			},
			error: function(msg){
				console.log('[clickReloadMenu] Error');
				console.log(msg.responseText);
//				alert(msg);
			}
		});
	}
	function GetMenu(id) {
		console.log('GetMenu '+id);
		window.mymenu=null;
		$.ajax({
			url: '<?php echo base_url("index.php/admin_panel/menu_category/api_get_menu/");?>',
			global: false,
			type: 'POST',
			data: {'id':id},
			dataType: 'json',
			async: false, //blocks window close
			success: function(data) {
				if (data['result']==true) {
					window.mymenu=data['data'];
				}
			}
		});
	}

	function showAddMenu(title,id) {
		$('#spAddMenuTitle').html(title);
		$('#txtAddCateID').val(id);
		$('#txtAddMenuName').val('');
		$('#txtAddMenuDesc').val('');
		$('#txtAddMenuOrder').val('0');
		$('#txtAddMenuPrice').val('1.00');
		$('#chkDeleteRecommend').prop('checked',false);
		$('#fileAddMenu').val('');
		$('#imgAddMenu').attr('src','<?php echo base_url('/uploads/icon/camera_256.png');?>');
		$('#dvModalAddMenu').modal('show');
	}	
	
	function showEditMenu(title,id) {
		window.mymenu=null;
		GetMenu(id);
		$('#spEditMenuTitle').html(title);
		$('#txtEditMenuID').val(window.mymenu['bsih_id']);
		$('#txtEditMenuName').val(window.mymenu['bsih_name']);
		$('#txtEditMenuDesc').val(window.mymenu['bsih_desc']);
		$('#txtEditMenuOrder').val(window.mymenu['bsih_order']);
		$('#txtEditMenuPrice').val(window.mymenu['bsih_price']);
		$('#fileEditMenu').val('');
		$('#chkEditRecommend').prop('checked',false);
		if (window.mymenu['bsih_recommend']==1) $('#chkEditRecommend').prop('checked',true);
		img_url=(window.mymenu['img_url']!=null)?window.mymenu['img_url']:'<?php echo base_url('/uploads/icon/camera_256.png');?>';
		$('#imgEditMenu').attr('src',img_url);
		$('#dvModalEditMenu').modal('show');
	}	

	function showDeleteMenu(title,id) {
		window.mymenu=null;
		GetMenu(id);
		$('#spDeleteMenuTitle').html(title);
		$('#txtDeleteMenuID').val(window.mymenu['bsih_id']);
		$('#txtDeleteMenuName').val(window.mymenu['bsih_name']);
		$('#txtDeleteMenuDesc').val(window.mymenu['bsih_desc']);
		$('#txtDeleteMenuOrder').val(window.mymenu['bsih_order']);
		$('#txtDeleteMenuPrice').val(window.mymenu['bsih_price']);
		$('#chkDeleteRecommend').prop('checked',false);
		if (window.mymenu['bsih_recommend']==1) $('#chkDeleteRecommend').prop('checked',true);
		img_url=(window.mymenu['img_url']!=null)?window.mymenu['img_url']:'<?php echo base_url('/uploads/icon/camera_256.png');?>';
		$('#imgDeleteMenu').attr('src',img_url);
		$('#dvModalDeleteMenu').modal('show');
	}	

	function showRestoreMenu(title,id) {
		window.mymenu=null;
		GetMenu(id);
		$('#spRestoreMenuTitle').html(title);
		$('#txtRestoreMenuID').val(window.mymenu['bsih_id']);
		$('#txtRestoreMenuName').val(window.mymenu['bsih_name']);
		$('#txtRestoreMenuDesc').val(window.mymenu['bsih_desc']);
		$('#txtRestoreMenuOrder').val(window.mymenu['bsih_order']);
		$('#txtRestoreMenuPrice').val(window.mymenu['bsih_price']);
		$('#chkRestoreRecommend').prop('checked',false);
		if (window.mymenu['bsih_recommend']==1) $('#chkRestoreRecommend').prop('checked',true);
		img_url=(window.mymenu['img_url']!=null)?window.mymenu['img_url']:'<?php echo base_url('/uploads/icon/camera_256.png');?>';
		$('#imgRestoreMenu').attr('src',img_url);
		$('#dvModalRestoreMenu').modal('show');
	}	

	function clickAddMenu() {
		console.log('clickAddMenu');
		var formData=new FormData($('#formAddMenu')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_add_menu/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[clickAddMenu] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Add menu failed.');
				} else {
					$('#dvModalEditMenu').modal('hide');
					alert('Add menu successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('[clickAddMenu] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function clickEditMenu() {
		console.log('clickEditMenu');
		var formData=new FormData($('#formEditMenu')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_edit_menu/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[clickEditMenu] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Edit menu failed.');
				} else {
					$('#dvModalEditMenu').modal('hide');
					alert('Edit menu successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('[clickEditMenu] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function clickDeleteMenu() {
		console.log('clickEditMenu');
		var formData=new FormData($('#formDeleteMenu')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_delete_menu/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[clickDeleteMenu] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Delete menu failed.');
				} else {
					$('#dvModalDeleteMenu').modal('hide');
					alert('Delete menu successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('[clickDeleteMenu] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}

	function clickRestoreMenu() {
		console.log('clickRestoreMenu');
		var formData=new FormData($('#formRestoreMenu')[0]);
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url('index.php/admin_panel/menu_category/api_restore_menu/');?>',
			dataType: 'json', 
			data: formData,
			success: function(msg){
				console.log('[clickRestoreMenu] Success')
				console.log(msg);
//				alert(msg);
				if (msg['result']==false) {
					alert('Restore menu failed.');
				} else {
					$('#dvModalRestoreMenu').modal('hide');
					alert('Restore menu successful.');
					window.location.reload();
				}
			},
			error: function(msg){
				console.log('[clickRestoreMenu] Error');
				console.log(msg.responseText);
//				alert(msg);
			},
			cache: false,
			contentType: false,
			processData: false
		});
	}


/*
(function($) {
	$.fn.checkFileType = function(options) {
		var defaults = {
			allowedExtensions: [],
			DDOM='',
			success: function() {},
			error: function() {}
		};
		options = $.extend(defaults, options);

		return this.each(function() {
			$(this).on('change', function() {
				readURL('imgAddCategory',this);
			});
		});
	};
})(jQuery);
*/
	function readIMG(img,input) {
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
    


	$(document).on('show.bs.modal', '.modal', centerModal);
	$(window).on("resize", function () {
			$('.modal:visible').each(centerModal);

	});

	$("#fileAddCategory").change(function(){
			readURL('imgAddCategory',this);
	});
	$("#fileEditCategory").change(function(){
			readURL('imgEditCategory',this);
	});

	$("#fileAddMenu").change(function(){
			readURL('imgAddMenu',this);
	});
	
	$("#fileEditMenu").change(function(){
			readURL('imgEditMenu',this);
	});
</script>
