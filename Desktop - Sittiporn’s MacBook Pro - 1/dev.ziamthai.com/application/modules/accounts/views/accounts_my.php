<?php
/* echo '<pre>';
  print_r($this->session->userdata());
  echo '</pre>';
  echo '<pre>';
  print_r($this->session->userdata('memh_pictureUrl'));
  echo '</pre>';
 * Array
  (
  [__ci_last_regenerate] => 1479957197
  [login_status] => 1
  [memh_id] => 42
  [memh_provider] => website
  [memh_fb_id] =>
  [memh_gg_id] => 112324546684249295299
  [memh_email] => worapong@revenue-express.com
  [memh_display] => Worapong Sriwichian
  [memh_firstname] => Worapong
  [memh_lastname] => Sriwichian
  [memh_avatar] =>
  [memh_gender] => Nodefined
  [memh_profileUrl] =>
  [memh_pictureUrl] =>
  [memh_locale] => EN
  [memh_activated] => 1
  [memh_cdate] => 2016-11-22 15:27:44
  [memh_mdate] => 2016-11-23 17:51:05
  [memh_status] => 1
  )
 */
$url_user_photo = site_url('uploads/user_photo/large/' . $access_user['id']);

if (!$url_user_photo) {
    $url_user_photo = base_url('uploads/user_photo/none.png');
}
?>


<style type="text/css">
    #my_picture_preview > img { width:100%;height:auto; }
</style>

<script type="text/javascript">

    $(function () {

        $("#my_picture_browse").change(function () {
            var ddd = img_preview(this, '#my_picture_preview');

            if (!ddd) {
                return;
            }
        });

        $('#my_accounts_form').submit(function (e) {
            e.preventDefault();

            var form_elm = $('#my_accounts_form');
            var form_result = $('#my_accounts_result');

            form_result.html(loading_icon).show();
            form_elm.find('button[type=submit]').prop('disabled', true);
            form_elm.find('[data-toggle="tooltip"]').removeAttr('title').removeAttr('data-original-title');

            $.ajax({
                type: 'POST',
                url: api_url + 'accounts_update/info',
                data: form_elm.serialize(),
                dataType: 'JSON',
                error: function (jqXHR, textStatus, errorThrown) {
                    var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
                    form_result.html(err_display);
                    form_elm.find('button[type=submit]').prop('disabled', false);
                },
                success: function (resp) {
                    form_elm.find('button[type=submit]').prop('disabled', false);
                    form_result.html(resp.message);

                    if (resp.focus) {
                        var focus_elm = form_elm.find('input[name=' + resp.focus + ']');
                        focus_elm
                                .attr('data-toggle', 'tooltip')
                                .attr('data-original-title', resp.message)
                                .attr('title', resp.message);
                        focus_elm.tooltip('show');
                    }

                    if (resp.error) {
                        form_result.removeClass('alert-success').addClass('alert-danger');
                    }

                    if (resp.success) {
                        form_result.removeClass('alert-danger').addClass('alert-success');

                        location.reload();
                    }
                }
            });
        });

        $('#my_picture_form').submit(function () {
            $('#my_picture_result').html(loading_icon).show();
        });

        $('#my_password_form').submit(function (e) {
            e.preventDefault();

            var form_elm = $('#my_password_form');
            var form_result = $('#my_password_result');

            form_result.html(loading_icon).show();
            form_elm.find('button[type=submit]').prop('disabled', true);
            form_elm.find('[data-toggle="tooltip"]').removeAttr('title').removeAttr('data-original-title');

            $.ajax({
                type: 'POST',
                url: api_url + 'accounts_update/pwd',
                data: form_elm.serialize(),
                dataType: 'JSON',
                error: function (jqXHR, textStatus, errorThrown) {
                    var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
                    form_result.html(err_display);
                    form_elm.find('button[type=submit]').prop('disabled', false);
                },
                success: function (resp) {
                    form_elm.find('button[type=submit]').prop('disabled', false);
                    form_result.html(resp.message);

                    if (resp.focus) {
                        var focus_elm = form_elm.find('input[name=' + resp.focus + ']');
                        focus_elm
                                .attr('data-toggle', 'tooltip')
                                .attr('data-original-title', resp.message)
                                .attr('title', resp.message);
                        focus_elm.tooltip('show');
                    }

                    if (resp.error) {
                        form_result.removeClass('alert-success').addClass('alert-danger');
                    }

                    if (resp.success) {
                        form_result.removeClass('alert-danger').addClass('alert-success');
                        form_elm.find('input[type=password]').val('').blur();
                    }

                }
            });
        });

    });


    function member_photo_upload_result(resp) {
        if (resp.error) {
            $('#my_picture_result').html(resp.message);
        }

        if (resp.success) {
            $('#my_picture_result').html(resp.message);

            window.location.reload();
        }
    }
</script>

<script src="<?php echo asset_url('zth-food/js/functions.js'); ?>" type="text/javascript"></script>

<div class="container" style="position:relative;padding-top:40px;min-height:480px;">

    <div class="col-md-3 col-lg-4">
        <form id="my_picture_form" action="<?php echo base_url('api.php/v1/accounts_update/photo'); ?>" class="card" enctype="multipart/form-data" method="POST" target="my_picture_iframe">
            <input id="my_picture_browse" type="file" name="m_picture" style="display:none;">

            <div class="card-header">
                <h5 style="margin:0;"><?php echo $this->lang->line('card_title_picture'); ?></h5>
            </div>

            <div id="my_picture_preview" class="card-block" align="center" onclick="$('#my_picture_browse').trigger('click');">
                <img class="card-img-top img-fluid" src="<?php echo $url_user_photo; ?>">
            </div>

            <div class="card-footer" align="center">

                <div id="my_picture_result" class="alert alert-warning" align="center" style="display:none;"></div>

                <div class="btn-group" role="group" aria-label="Basic example">
                    <button onclick="$('#my_picture_browse').trigger('click');" type="button" class="btn btn-secondary">
                        <i class="fa fa-camera"></i>
                        <?php echo $this->lang->line('btn_picture_browse'); ?>
                    </button>
                    <button type="submit" class="btn btn-success">
                        <?php echo $this->lang->line('btn_upload'); ?>
                    </button>
                </div>
            </div>

            <iframe id="my_picture_iframe" name="my_picture_iframe" style="display:none;"></iframe>
        </form>
    </div>

    <div class="col-md-8 col-lg-8">
        <form id="my_accounts_form" class="card">

            <div class="card-header">
                <h5 style="margin:0;"><?php echo $this->lang->line('card_title_profile'); ?></h5>
            </div>

            <div class="card-block">

                <div class="form-group row">
                    <label for="edip_memh_display" class="col-xs-3 col-form-label">
                        <?php echo $this->lang->line('label_memh_display'); ?>
                    </label>
                    <div class="col-xs-6 col-sm-4">
                        <input class="form-control" type="text" value="<?php echo $access_user['name']; ?>" name="m_display" maxlength="32">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="edip_memh_firstname" class="col-xs-3 col-form-label">
                        <?php echo $this->lang->line('label_memh_firstname'); ?>
                    </label>
                    <div class="col-xs-8 col-sm-6">
                        <input class="form-control" type="text" value="<?php echo $access_user['firstname']; ?>" name="m_firstname">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="edip_memh_lastname" class="col-xs-3 col-form-label">
                        <?php echo $this->lang->line('label_memh_lastname'); ?>
                    </label>
                    <div class="col-xs-8 col-sm-6">
                        <input class="form-control" type="text" value="<?php echo $access_user['lastname']; ?>" name="m_lastname">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="edip_memh_email" class="col-xs-3 col-form-label">
                        <?php echo $this->lang->line('label_memh_email'); ?>
                    </label>
                    <div class="col-xs-8 col-sm-6">
                        <input class="form-control disabled" type="text" value="<?php echo $access_user['email']; ?>" readonly="yes">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="edip_memh_gender" class="col-xs-3 col-form-label">
                        <?php echo $this->lang->line('label_memh_gender'); ?>
                    </label>
                    <div class="col-xs-6">
                        <div class="btn-group" data-toggle="buttons" style="margin-top:6px;">
                            <?php
                            $gender = isset($access_user['gender']) ? $access_user['gender'] : null;
                            ?>
                            <label for="edip_memh_gender_male" class="btn btn-sm btn-outline-primary <?php
                            if ($gender == 'male') {
                                echo 'active';
                            }
                            ?>">
                                <input type="radio" name="m_gender" value="male" id="edip_memh_gender_male" autocomplete="off" <?php
                                if ($gender == 'male') {
                                    echo 'checked';
                                }
                                ?>>
                                       <?php echo $this->lang->line('label_gender_male'); ?>
                            </label>
                            <label for="edip_memh_gender_female" class="btn btn-sm btn-outline-primary <?php
                            if ($gender == 'female') {
                                echo 'active';
                            }
                            ?>">
                                <input type="radio" name="m_gender" value="female" id="edip_memh_gender_female" autocomplete="off" <?php
                                if ($gender == 'female') {
                                    echo 'checked';
                                }
                                ?>>
                                       <?php echo $this->lang->line('label_gender_female'); ?>
                            </label>
                        </div>
                    </div>
                </div>

                <div id="my_accounts_result" class="alert alert-warning" style="display:none;"></div>

            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-success">
                    <?php echo $this->lang->line('btn_save'); ?>
                </button>
            </div>

        </form>

        <form id="my_password_form" class="card" style="margin-top:20px;">

            <div class="card-header">
                <h5 style="margin:0;"><?php echo $this->lang->line('card_title_password'); ?></h5>
            </div>

            <div class="card-block">

                <div class="form-group row">
                    <label for="edip_memh_display" class="col-xs-3 col-form-label">
                        <?php echo $this->lang->line('label_old_pass'); ?>
                    </label>
                    <div class="col-xs-6">
                        <input class="form-control" type="password" name="old_pass">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="edip_memh_firstname" class="col-xs-3 col-form-label">
                        <?php echo $this->lang->line('label_new_pass'); ?>
                    </label>
                    <div class="col-xs-6">
                        <input class="form-control" type="password" name="new_pass">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="edip_memh_firstname" class="col-xs-3 col-form-label">
                        <?php echo $this->lang->line('label_confirm_pass'); ?>
                    </label>
                    <div class="col-xs-6">
                        <input class="form-control" type="password" name="confirm_pass">
                    </div>
                </div>

                <div id="my_password_result" class="alert alert-warning" style="display:none;"></div>

            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-success">
                    <?php echo $this->lang->line('btn_save'); ?>
                </button>
            </div>

        </form>
    </div>

</div>