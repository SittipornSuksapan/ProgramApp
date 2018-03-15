

<link href="<?php echo base_url('asset/select2/css/select2.min.css'); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo base_url('asset/select2/js/select2.full.min.js'); ?>" type="text/javascript"></script>

<link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script src="<?php echo base_url('asset/zth-client/js/reward/gen_points.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>


<style type="text/css">
    .select2-container { margin-left:-1px; }
    .select2-selection { min-height: 38px; }
    .select2-selection__rendered { margin-top:4px !important;min-height: 36px !important; }
    .select2-selection__arrow { margin-top:5px !important; }
</style>


<h1>
    <?php echo $this->lang->line('page_title_generate'); ?>
</h1>


<!-- Member Search Form -->
<form id="member_barcode_form" class="row">

    <div class="col-md-6 col-xl-4">

        <div class="form-group">
            <div class="input-group">
                <div class="input-group-btn">
                    <button type="submit" class="btn btn-secondary">
                        <i class="fa fa-barcode"></i>
                    </button>
                </div>
                <input id="member_barcode_input" class="form-control" name="keyword" type="text" placeholder="<?php echo $this->lang->line('pholder_search_barcode'); ?>" autofocus="on" autocomplete="off">
            </div>
        </div>

        <div class="form-group">
            <div id="member_barcode_result" class="alert alert-danger" style="display:none;padding:5px;text-align:center;"></div>
        </div>

    </div>

    <div class="col-md-6 col-xl-4">

        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">
                    <i class="fa fa-user-circle-o"></i>
                </div>
                <select id="member_combobox" data-placeholder="<?php echo $this->lang->line('pholder_search_combobox'); ?>" style="width:100%;"></select>
            </div>
        </div>

    </div>

    <br class="clearfix">

</form>

<!-- Generate Point Form -->

<div id="gen_points_result" class="alert alert-danger" style="display:none;text-align:center;"></div>

<form id="gen_points_form" class="card" style="display:none;" data-shop="<?php echo intval($access_workspace['id']); ?>">
    <input type="hidden" name="member_id">

    <div class="card-header">
        <?php echo $this->lang->line('label_points_title'); ?>
    </div>

    <div class="card-block">
        <div class="row">

            <div class="col-lg-6">

                <p align="center">
                    <img id="member_photo" class="img-fluid" style="max-height:140px;border-radius:50%;" src="<?php echo site_url('uploads/user_photo/large/0'); ?>">
                </p>

                <div class="form-group">
                    <label class="form-control-label"><?php echo $this->lang->line('label_member_name'); ?></label>
                    <input class="form-control disabled" name="member_name" readonly>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group">
                                <div id="member_points_active" class="form-control"></div>
                                <div class="input-group-addon">
                                    <?php echo $this->lang->line('label_points'); ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <button type="button" class="btn btn-link btn-block" data-toggle="modal" data-target="#modal_reward_history">
                                <i class="fa fa-clock-o"></i>
                                <span><?php echo $this->lang->line('reward_history_title'); ?></span>
                            </button>
                        </div>
                    </div>
                </div>

                <div class="form-group" style="display:none;">
                    <label class="form-control-label"><?php echo $this->lang->line('label_member_email'); ?></label>
                    <input class="form-control disabled" name="member_email" readonly>
                </div>

            </div><!--//member block-->

            <div class="col-lg-6">

                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <div class="input-group-addon">
                            <i class="fa fa-dollar"></i>
                            <span><?php echo $exchange_rate; ?></span>
                        </div>   
                        <div class="input-group-addon">
                            <i class="fa fa-exchange"></i>
                        </div>   
                        <div class="input-group-addon">
                            <span>1 <?php echo $this->lang->line('label_points'); ?></span>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><?php echo $this->lang->line('label_order_amount'); ?></label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-dollar"></i>
                                </div>
                                <input id="input_order_amount" name="order_amount" class="form-control" type="number" step="any" value="0" onfocus="this.select();" onclick="this.select();" onkeyup="exchange_rate_cal_points(<?php echo floatval($exchange_rate); ?>);" onchange="exchange_rate_cal_points(<?php echo floatval($exchange_rate); ?>);" style="text-align:center;">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><?php echo $this->lang->line('label_points_receive'); ?></label>
                            <div class="input-group">

                                <div class="input-group-addon">
                                    <i class="fa fa-gift"></i>
                                </div>

                                <input id="input_points_amount" name="points_amount" class="form-control" type="number" step="1" style="text-align:center;background-color:#fff;color:#3b5998;" value="0" onfocus="this.select();" onclick="this.select();">

                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input id="input_order_no" name="order_no" class="form-control" type="text" placeholder="<?php echo $this->lang->line('label_order_no'); ?>">
                        </div>
                    </div>
                </div>

                <div class="note_option_form form-group" style="display:none;">
                    <textarea class="form-control" rows="2" name="detail" placeholder="<?php echo $this->lang->line('label_detail'); ?>"></textarea>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-success">
                        <?php echo $this->lang->line('label_points_submit'); ?>
                        <i class="fa fa-arrow-circle-right"></i>
                    </button>
                    <button id="note_option_btn" type="button" class="btn btn-secondary">
                        <i class="fa fa-square-o"></i>
                        <?php echo $this->lang->line('label_note_option'); ?>
                    </button>
                </div>

            </div><!--//point block-->

        </div>
    </div><!--//card block-->

</form>



<!-- Modal -->
<div class="modal fade" id="modal_reward_history" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="position:relative;">
                <h5 class="modal-title"><?php echo $this->lang->line('reward_history_title'); ?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="position:absolute;top:16px;right:16px;">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="overflow:auto;">
                <div id="reward_history_error" class="aler alert-danger"></div>
                <table id="reward_history_datatable" class="display" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>&nbsp;</th>
                            <th><?php echo $this->lang->line('th_history_point'); ?></th>
                            <th><?php echo $this->lang->line('th_history_date'); ?></th>
                            <th><?php echo $this->lang->line('th_history_staff'); ?></th>
                            <th><?php echo $this->lang->line('th_history_paid'); ?></th>
                            <th><?php echo $this->lang->line('th_history_ref'); ?></th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>&nbsp;</th>
                            <th><?php echo $this->lang->line('th_history_point'); ?></th>
                            <th><?php echo $this->lang->line('th_history_date'); ?></th>
                            <th><?php echo $this->lang->line('th_history_staff'); ?></th>
                            <th><?php echo $this->lang->line('th_history_paid'); ?></th>
                            <th><?php echo $this->lang->line('th_history_ref'); ?></th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
