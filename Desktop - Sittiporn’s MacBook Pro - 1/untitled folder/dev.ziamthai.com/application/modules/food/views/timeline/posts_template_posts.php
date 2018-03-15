

<div class="posts-item-card card">

    <div class="card-block">
        <div class="row">

            <div class="col-xs-2 col-xl-1">

                <a href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" target="_blank">
                    <i class="writer-picture" style="background-image:url({{writer.photo_thumb}});"></i>
                </a>

            </div>

            <div class="col-xs-10 col-xl-11">
                <a href="<?php echo site_url($access_module . '/store/show/'); ?>{{shop.id}}" target="_blank">
                    <strong class="writer-name">{{writer.name}}</strong>
                </a>

                <div class="time-update">{{post.created_timeago}}</div>
            </div>

        </div>
    </div>

    <div class="card-block">
        <h4>{{post.title}}</h4>
        <article>{{{post.highlight}}}</article>
    </div>

    <?php include 'posts_template_media.php'; ?>

</div>


