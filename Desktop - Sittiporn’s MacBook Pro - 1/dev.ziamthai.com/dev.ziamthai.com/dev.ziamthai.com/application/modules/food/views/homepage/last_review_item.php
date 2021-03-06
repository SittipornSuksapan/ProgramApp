<div class="last-review-item">

    <div class="row">
        
        <div class="col-xs-2 col-md-1" style="padding-right:0;">
            <i style="background-image:url({{writer.photo_thumb}});background-repeat:no-repeat;background-position:center;background-size:cover;display:block;margin:auto;width:48px;height:48px;border-radius:24px;"></i>
        </div>
        
        <div class="col-xs-10 col-md-11">

            <div>
                <span style="font-size:0.9em;">{{writer.name}}</span>
                <span style="font-size:0.7em;color:#666;">-</span>
                <span style="font-size:0.7em;color:#f60;">{{{post.review_score_star}}}</span>
                <div class="hidden-md-up" style="height:0px !important;"></div>
                <span class="hidden-sm-down" style="font-size:0.7em;color:#666;">-</span>
                <span style="font-size:0.7em;color:#060;">{{post.created_timeago}}</span>
                <span style="font-size:0.7em;color:#666;">-</span>
                <a href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" style="font-size:0.8em;" target="_blank">
                    {{shop.name}}
                </a>
            </div>

            <div>
                <i class="fa fa-quote-left" style="color:#aaa;vertical-align:top;"></i>
                <a href="<?php echo site_url($access_module . '/review/show/'); ?>{{post.ref_id}}" target="_blank" style="color:#000;font-weight:bold;text-decoration:none;vertical-align:top;">{{post.title}}</a>
                <i class="fa fa-quote-right" style="color:#aaa;vertical-align:top;"></i>
                <span onclick="window.open('<?php echo site_url($access_module . '/review/show/'); ?>{{post.ref_id}}', '_blank');" style="display:inline-block;padding-left:6px;font-size:0.8em;">{{{post.highlight}}}</span>
            </div>

        </div>
        
    </div>

</div>