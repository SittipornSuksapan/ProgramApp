
<style type="text/css">
    .review_photo_item { display:block;width:100%;height:120px;background-repeat:no-repeat;background-position:center;background-size:cover; }
</style>

<div class="card-block">
    <div class="row">

        <?php foreach ($review_photo as $photo) { ?>
            <div class="col-xs-6 col-lg-4 col-xl-3">
                <div class="review_photo_item" style="background-image:url(<?php echo site_url('uploads/reviews_img/thumb/' . $photo['bsri_id']); ?>);">
                    &nbsp;
                </div>
            </div>
        <?php } ?>

    </div>
</div>