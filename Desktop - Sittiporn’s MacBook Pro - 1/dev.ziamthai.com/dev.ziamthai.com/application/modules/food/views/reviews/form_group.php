

<div class="form-group">
    <label class="form-control-label">
        <?php echo $this->lang->line('label_title'); ?>
    </label>
    <div class="row">
        <div class="col-md-12">
            <input class="form-control" type="text" name="title" />
        </div>
    </div>
</div>

<div class="form-group">
    <label class="form-control-label">
        <?php echo $this->lang->line('label_desc'); ?>
    </label>
    <div class="row">
        <div class="col-md-12">
            <textarea class="form-control" name="desc" rows="4"></textarea>
        </div>
    </div>
</div>

<div class="form-group row">
    <div class="col-md-6">
        <label class="form-control-label">
            <?php echo $this->lang->line('label_score'); ?>
            <div id="rateYo_counter" style="display:inline-block;vertical-align:middle;font-size:1.6em;font-weight:bold;"><?php echo $bssh_score_rating; ?></div>
        </label>
        <div class="row">
            <div class="col-md-6">
                <div id="rateYo_reviews"></div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <label class="form-control-label">
            <?php echo $this->lang->line('label_price'); ?>
            <div id="rateYo_price_rate" style="display:inline-block;vertical-align:middle;font-size:1.6em;font-weight:bold;">1-10$</div>
        </label>
        <div class="row">
            <div class="col-md-12">
                <div id="rateYo_price"></div>
            </div>
        </div>
    </div>
</div>

<div class="form-group">
    <label class="form-control-label">
        <?php echo $this->lang->line('label_recommend'); ?>
    </label>
    <div class="row">
        <div class="col-md-12">
            <select id="reviews_menu_list" multiple="multiple" name="menu[]" style="width:100%;"></select>
        </div>
    </div>
</div>
