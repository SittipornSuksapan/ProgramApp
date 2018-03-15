
<div class="posts-item-card card">

    <div class="card-block">
        <div class="row">

            <div class="col-xs-2 col-xl-1">
                <i class="writer-picture" style="background-image:url({{writer.photo_thumb}});"></i>
            </div>

            <div class="col-xs-8 col-xl-9">
                <div>
                    <strong class="writer-name">{{writer.name}}</strong>

                    <span style="font-size:0.8em;color:#888;">-- review</span>
                </div>
                <div class="time-update">
                    {{post.created_timeago}}
                </div>
            </div>

            <div class="col-xs-2 col-xl-2 text-xs-right" style="padding:0;overflow:hidden;">
                <b class="btn btn-warning btn-sm active" style="border-radius: 4px 0px 0px 4px;">
                    {{post.review_score}}
                    <i class="fa fa-star"></i>
                </b>
            </div>

        </div>
    </div>

    <div class="card-block">
        <a href="<?php echo site_url($access_module . '/review/show/'); ?>{{post.ref_id}}" title="{{post.title}}" target="_blank">
            <h4>{{post.title}}</h4>
        </a>
        <article>{{{post.highlight}}}</article>
    </div>

    <?php include 'posts_template_media.php'; ?>

    <div class="card-block">
        <div class="card bg-faded" style="margin-bottom:0;padding:5px;text-decoration:none;">
            <div class="row">

                <div class="col-xs-8 text-xs-left">
                    <a href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" target="_blank" style="text-decoration:none;">
                        <h6 style="display:inline-block;font-size:0.9em;">{{shop.name}}</h6>
                        <span class="hidden-sm-down">
                            <span style="color: #888;">-</span>
                            <span style="color: #fa3;">
                                {{{shop.rating_star}}}
                            </span>
                        </span>
                    </a>
                    {{#shop.address}}
                    <div style="font-size:0.8em;color:#444;">
                        <i class="fa fa-map-marker"></i>

                        {{#shop.city}}
                        <span>{{shop.city}}</span>
                        {{/shop.city}}

                        {{#shop.state_code}}

                        {{#shop.city}}
                        <span>,</span>
                        {{/shop.city}}

                        <a href="<?php echo site_url($access_module . '/find/?state='); ?>{{shop.state_code}}">
                            {{shop.state_code}}
                        </a>
                        {{/shop.state_code}}

                    </div>
                    {{/shop.address}}
                </div>

                <div class="col-xs-4 text-xs-right" style="position:relative;">

                    <span class="review-shop-star hidden-md-up">
                        <span style="color: #fa3;">
                            {{{shop.rating_star}}}
                        </span>
                    </span>

                    <a class="review-shop-img" href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" target="_blank">
                        <img src="{{shop.img_logo_thumb}}" class="card-img img-fluid">
                    </a>

                </div>

            </div>
        </div>
    </div>

</div>