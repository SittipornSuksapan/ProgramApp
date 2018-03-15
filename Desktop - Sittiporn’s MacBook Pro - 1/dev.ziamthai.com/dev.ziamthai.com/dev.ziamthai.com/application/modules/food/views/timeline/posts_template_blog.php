
<div class="posts-item-card card" style="border-top-color:#3b5998;">

    <div class="card-block">
        <div class="row">

            <div class="col-xs-2 col-xl-1">
                <a href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" target="_blank">
                    <i class="writer-picture" style="background-image:url({{writer.photo_thumb}});"></i>
                </a>
            </div>

            <div class="col-xs-5 col-xl-6">
                <a href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" target="_blank">
                    <strong class="writer-name">{{writer.name}}</strong>
                </a>

                <div class="time-update">{{post.created_timeago}}</div>
            </div>

            <div class="col-xs-5 col-xl-5 text-xs-right">
                {{#post.author_name}}
                <div style="display:block;color:#f60;">
                    <i class="fa fa-pencil-square-o"></i>
                    <span>{{post.author_name}}</span>
                </div>

                <a href="{{#post.author_url}}{{post.author_url}}{{/post.author_url}}{{^post.author_url}}#{{/post.author_url}}" target="_blank" style="font-size:0.8em;text-decoration: none;">
                    <i class="fa fa-globe"></i>
                    <span>{{post.author_domain}}</span>
                </a>
                {{/post.author_name}}
            </div>

        </div>
    </div>

    <div class="card-block">
        <div class="card" style="margin-bottom:0;">

            {{#post.img_cover}}
            <div class="text-xs-center">
                <a href="<?php echo site_url($access_module . '/blog/show/'); ?>{{post.ref_id}}" style="text-decoration:none;" target="_blank"><img src="{{post.img_cover}}" class="card-img img-fluid"></a>
            </div>
            {{/post.img_cover}}

            <div class="card-footer">
                <a href="<?php echo site_url($access_module . '/blog/show/'); ?>{{post.ref_id}}" style="text-decoration:none;" target="_blank">
                    <h4 style="margin:0;">{{post.title}}</h4>
                </a>
                <article style="color:#666;">{{{post.highlight}}}</article>
            </div>

        </div>
    </div>

</div>
