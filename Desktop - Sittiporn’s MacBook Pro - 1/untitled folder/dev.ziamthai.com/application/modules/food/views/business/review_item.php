<div class="col-lg-6 col-xl-4" style="margin-bottom:15px;">
    <div class="review-card">

        <div class="nav navbar">
            
            <div class="col-xs-2 col-md-2 col-lg-2 text-xs-center" style="padding:0;">
                <img src="{{writer.photo}}" class="writer-photo">
            </div>

            <div class="col-xs-7 col-md-7 col-lg-7">
                <h4 class="writer-name">{{writer.name}}</h4>
                <div class="create-timeago">{{review.created_timeago}}</div>
            </div>

            <div class="col-xs-3 col-md-3 text-xs-right" style="padding:0;color:#f60;">
                {{review.score}}
                <i class="fa fa-star"></i>
            </div>
        </div>

        <div class="review-quote contain-fluid">
            <i class="fa fa-quote-left" style="color:#aaa;"></i>
            <a class="review-title" href="<?php echo site_url($access_module . '/review/show/'); ?>{{review.id}}" target="_blank">{{review.title}}</a>
        </div>

        <div onclick="window.open('<?php echo site_url($access_module . '/review/show/'); ?>{{review.id}}','_blank');" class="review-container contain-fluid">

            <div class="review-content">
                {{review.description}}
            </div> 

            <div style="position:relative;">
                <i class="fa fa-quote-right" style="color:#aaa;"></i>

                <a href="<?php echo site_url($access_module . '/review/show/'); ?>{{review.id}}" target="_blank" style="position:absolute;right:0px;top:0px;">
                    <?php echo $this->lang->line('link_read_more'); ?>
                </a>
            </div>
            
            {{#photo.length}}
            <div class="review-photos row">
                {{#photo}}
                <div class="col-xs-6">
                    <i class="review-photo-item" style="background-image:url({{img_thumb}}});"></i>
                </div>
                {{/photo}}
            </div>
            {{/photo.length}}

        </div>

    </div>
</div>