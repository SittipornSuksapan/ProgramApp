<script>
	var DEBUG='';
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

$(function () {
		$('select#member_combobox').select2({
			maximumSelectionLength: 1,
			minimumInputLength: 3,
			allowClear: true,
			ajax: {
					dataType: 'json',
					quietMillis: 100,
					url: api_url + 'accounts_finder/search_combobox',
					data: function (params) {
							var get_q = params.term || 'Select Member';

							return {
									q: get_q
							};
					},
					processResults: function (data) {
							return {
									results: data
							};
					}
			},
			templateResult: set_select2_member_list,
			templateSelection: set_select2_member_select
		});

		function set_select2_member_list(data) {
			var id = parseInt(data.id) || false;
			if (!id) {
				return '';
			}

			var set_photo = '';
			var set_email = '';

			if (data.photo) {
				set_photo = '<div class="col-xs-4 col-md-3 col-lg-2" style="padding:0;padding-left:5px;padding-right:5px;"><i style="display:block;margin:auto;width:48px;height:48px;border-radius:50%;background-repeat:no-repeat;background-position:center;background-size:cover;background-image:url(' + data.photo + ');"></i></div>';
			}

			if (data.email) {
				set_email = '<div style="padding:5px 0px;font-size:0.8em;color:#f60;">' + data.email + '</div>';
			}

			var $content = $('<div class="container"><div class="row">' + set_photo + '<div class="col-xs-8 col-md-9 col-lg-10"><strong>' + data.name + '</strong>' + set_email + '</div></div></div>');

			return $content;
		}

		function set_select2_member_select(data) {
			var placeholder = $('#member_combobox').data('placeholder') || 'Search member';

			var display = data.name || placeholder;

			if (data.id) {
				member_search_set_data(data);
			}

			return display;
		}
		function member_search_set_data(data) {
			//console.log(data);

			if (!data.id) {
					return;
			}

			$('#member_photo').attr('src', base_url + 'index.php/uploads/user_photo/large/' + data.id);
			$('#formAddMember').find('input[name=member_id]').val(data.id);
			$('#formAddMember').find('input[name=member_name]').val(data.name);
			$('#formAddMember').find('input[name=member_email]').val(data.email);
			$('#formAddMember').fadeIn();
/*
			$('select#member_combobox').empty().trigger("change");

			$('#member_photo').attr('src', base_url + 'index.php/uploads/user_photo/large/' + data.id);

			$('#member_points_active').html(data.reward_points);

			$('#formAddMember').find('input[name=member_id]').val(data.id);
			$('#formAddMember').find('input[name=member_name]').val(data.name);
			$('#formAddMember').find('input[name=member_email]').val(data.email);
			$('#formAddMember').fadeIn();
*/
		}
			$('#formAddMember').submit(function (e) {
        e.preventDefault();

//        $('#gen_points_form').slideUp();
//        $('#gen_points_result').removeClass('alert-success').addClass('alert-danger').html(loading_icon).show();

        $.ajax({
            type: 'POST',
            url: api_url + 'client_member/add_member/',
            data: $(this).serialize(),
            dataType: 'JSON',
            success: function (resp) {
								console.log(resp);
								if (resp.result==true) {
									alert('Add Member Success.');
									window.history.back();
								} else {
									var sMember='';
									$.each(resp.message,function(index,value) {
										sMember+='\n';	sMember+=value;
									});
									alert('Cannot Add Member cause '+sMember);
								}
            }
        });
    });
		$('#formEditMember').submit(function (e) {
        e.preventDefault();

//        $('#gen_points_form').slideUp();
//        $('#gen_points_result').removeClass('alert-success').addClass('alert-danger').html(loading_icon).show();

        $.ajax({
            type: 'POST',
            url: api_url + 'client_member/edit_member/',
            data: $(this).serialize(),
            dataType: 'JSON',
            success: function (resp) {
								console.log(resp);
								if (resp.result==true) {
									alert('Edit Member Success.');
									window.location.href='<?php echo base_url('index.php/client/customer_member/');?>';
								} else {
									var sMember='';
									$.each(resp.message,function(index,value) {
										sMember+='\n';	sMember+=value;
									});
									alert('Cannot Add Member cause '+sMember);
								}
            },
						error: function (resp) {
								console.log(resp);
						}
        });
    });


});

	function showPolicy(shopID,memID) {
				console.log('showPolicy');
        $.ajax({
            type: 'POST',
            url: api_url + 'client_member/list_policy/',
            data: {'shopID':shopID,'memID':memID},
            dataType: 'JSON',
            success: function (resp) {
								console.log(resp);
								var sMesg='';
								$.each(resp.data,function(index,value) {
									sMesg+='\n';
									sMesg+='menu "'+value.head_name+'" =>'+value.detail;
								});
								alert(sMesg);
            },
						error: function (resp) {
							console.log(resp);
						}
        });
	}
	
	function delMember(shopID,memID,memName) {
				console.log('delMember');
				var sMesg="Do you want to delete '"+memName+"' ?";
				if (confirm(sMesg)) {
					$.ajax({
							type: 'POST',
							url: api_url + 'client_member/delete_member/',
							data: {'shopID':shopID,'memID':memID},
							dataType: 'JSON',
							success: function (resp) {
								console.log(resp);
								if (resp.result) {
									alert('Delete completed.');
									window.location.reload();
								} else {
									var sMesg='';
									$.each(resp.data,function(index,value) {
										sMesg+='\n';
										sMesg+='menu "'+value.head_name+'" =>'+value.detail;
									});
									alert('Delete failed.'+sMesg);
								}
									
							},
							error: function (resp) {
								console.log(resp);
							}
					});
				}
	}
	
</script>