<div class="masonry-grid-review-item col-sm-6 col-md-4 col-lg-3">
    <div style="border:solid 1px #ccc;background:#fff;margin:5px;border-radius:4px;">

        <div class="nav navbar" style="padding:8px;background:#eef;border-radius:4px 4px 0px 0px;border-bottom:solid 1px #ccc;">
            <div class="col-xs-2 col-md-2" style="padding:0;padding-bottom:5px;">
                <img src="{{writer.photo}}" class="img-fluid" style="max-height:48px;border-radius:50%;">
            </div>

            <div class="col-xs-7 col-md-7">
                <h4 style="margin:0;font-size:1.2em;font-weight:bold;">{{writer.name}}</h4>
                <span>
                    <i style="display:inline-block;background:url(<?php echo base_url('asset/ziamthai/img/icon-diamon.png'); ?>) 0px -8px;height:20px;width:20px;vertical-align:middle;"></i>
                    <label style="font-size:0.9em;color:#036"><?php echo $this->lang->line('member_level_diamond'); ?></label>
                </span>
            </div>

            <div class="col-xs-3 col-md-3" style="padding:0;text-align:right;color:#f60;">
                {{review.score}}
                <i class="fa fa-star"></i>
            </div>
        </div>

        <div class="contain-fluid" style="padding:10px 20px;padding-bottom:0;font-size:1.1em;color:#444;">
            <i class="fa fa-quote-left" style="color:#aaa;"></i>
            <a href="<?php echo site_url($access_module . '/review/show/'); ?>{{review.id}}" target="_blank" style="color:#000;font-weight:bold;text-decoration:none;">{{review.title}}</a>
        </div>

        <div onclick="window.open('<?php echo site_url($access_module . '/review/show/'); ?>{{review.id}}','_blank');" class="contain-fluid" style="padding:10px 20px;padding-top:0;color:#444;font-size:0.9em;">

            <div style="max-height:240px;overflow:hidden;overflow-y:auto;">
                {{review.description}}
            </div> 

            <div style="position:relative;">
                <i class="fa fa-quote-right" style="color:#aaa;"></i>

                <a href="<?php echo site_url($access_module . '/reviews/show/'); ?>{{review.id}}" target="_blank" style="position:absolute;right:0px;top:0px;">
                    <?php echo $this->lang->line('link_read_more'); ?>
                </a>
            </div>

            {{#photo.length}}
            <div class="row" style="margin-top:10px;min-height:60px;text-align:center;">
                {{#photo}}
                <div class="col-xs-4"><img class="img-fluid" src="{{img_thumb}}" style="max-height:48px;"></div>
                {{/photo}}
            </div>
            {{/photo.length}}

        </div>

        <div class="nav navbar bg-faded {{bssh_show_data}}" style="padding:8px;border-radius:0px 0px 4px 4px;border-top:solid 1px #ccc;">

            <div class="col-xs-9 col-md-9">
                <a href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" style="color:#444;font-size:0.8em;font-weight:bold;" target="_blank">
                    {{shop.name}}
                </a>
                <div style="font-size:0.7em;color:#888;">
                    <i class="fa fa-map-marker"></i>
                    <span>{{shop.state_code}}</span>
                </div>
            </div>

            <div class="col-xs-3 col-md-3" style="padding:0;">
                <a href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" target="_blank">
                    <img src="{{shop.img_logo_thumb}}" class="img-fluid" style="max-height:64px;border-radius:2px;">
                </a>
            </div>

        </div>
    </div>
</div>