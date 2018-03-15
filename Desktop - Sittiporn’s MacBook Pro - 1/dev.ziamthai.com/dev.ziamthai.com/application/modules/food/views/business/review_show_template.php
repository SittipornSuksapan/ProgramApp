
<div style="border:solid 1px #ccc;background:#fff;border-radius:4px;">

    <div class="nav navbar" style="padding:8px;background:#eef;border-radius:4px 4px 0px 0px;border-bottom:solid 1px #ccc;">
        <div class="col-xs-2 col-md-2 col-lg-1 text-xs-center" style="padding:0;padding-bottom:5px;">
            <img src="{{writer.photo}}" class="img-fluid" style="max-height:48px;border-radius:50%;">
        </div>

        <div class="col-xs-7 col-md-7 col-lg-8">
            <h4 style="margin:0;font-size:1.2em;font-weight:bold;">{{writer.name}}</h4>
            <span>
                <i style="display:inline-block;background:url(<?php echo base_url('asset/ziamthai/img/icon-diamon.png'); ?>) 0px -8px;height:20px;width:20px;vertical-align:middle;"></i>
                <label style="font-size:0.9em;color:#036"><?php echo $this->lang->line('member_level_diamond'); ?></label>
            </span>
        </div>

        <div class="col-xs-3 col-md-3" style="padding:0;text-align:right;color:#f60;">
            <div>
                {{review.score}}
                <i class="fa fa-star"></i>
            </div>
            <div style="font-size:0.9em;color:#888;">
                {{review.created_timeago}}
            </div>
        </div>
    </div>

    <div class="container" style="padding:15px 20px;color:#444;">
        <h1 style="margin-bottom:20px;">
            <a href="<?php echo site_url($access_module . '/review/show/'); ?>{{review.id}}" target="_blank" style="color:#000;font-weight:bold;text-decoration:none;">{{review.title}}</a>
        </h1>

        <div>
            {{review.description}}
        </div> 
    </div>

    {{#recommend_menu.length}}
    <div class="container" style="margin-top:10px;padding:15px 20px;min-height:48px;">
        <h5 style="margin-bottom:15px;">Recommend Menu</h5>
        {{#recommend_menu}}
        <button type="button" class="btn btn-secondary" style="margin-bottom:5px;">
            <i style="vertical-align:middle;display:inline-block;width:48px;height:48px;border-radius:24px;background-repeat:no-repeat;background-position:center;background-size:cover;background-image:url({{photo_thumb}});">&nbsp;</i>
            <strong>{{name}}</strong>
        </button>
        {{/recommend_menu}}
    </div>
    {{/recommend_menu.length}}

    {{#photo.length}}
    <div class="container" style="margin-top:10px;padding:15px 20px;min-height:60px;">
        <h5 style="margin-bottom:15px;">Share Photos</h5>
        {{#photo}}
        <div class="col-xs-6 text-xs-center">
            <a href="{{img}}" class="fancybox2-gallery" rel="review-gallery-show">
                <img class="img-fluid" src="{{img_thumb}}">
            </a>
            {{#caption}}
            <div style="margin-top:10px;">
                <i class="fa fa-quote-left"></i>
                {{caption}}
                <i class="fa fa-quote-right"></i>
            </div>
            {{/caption}}
        </div>
        {{/photo}}
    </div>
    {{/photo.length}}

</div>