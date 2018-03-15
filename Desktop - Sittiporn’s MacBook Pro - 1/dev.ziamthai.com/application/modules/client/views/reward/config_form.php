

<script src="<?php echo base_url('asset/zth-client/js/reward/config_form.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>


<div class="row">
    <div class="col-lg-6">
        <form id="exchange_rate_form" class="card">

            <div class="card-header">
                <?php echo $this->lang->line('label_config_title'); ?>
            </div>

            <div class="card-block">

                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-dollar"></i>
                        </div>
                        <input class="form-control" type="number" step="any" value="<?php echo $exchange_rate; ?>" name="exchange_rate" onfocus="this.select();" onclick="this.select();">     
                        <div class="input-group-addon">
                            <i class="fa fa-exchange"></i>
                            <span>1 points</span>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                            <button type="submit" class="btn btn-primary">
                                <i class="fa fa-save"></i>
                                <span>Update</span>
                            </button> 
                </div>

                <div class="form-group">
                    <div id="exchange_rate_result" class="alert alert-warning" style="display:none;"></div>
                </div>

            </div>

        </form>
    </div>
</div>
