<div class="container-fluid" style="padding:0;">

    <div class="col-lg-5">
        <div class="card bg-faded">
            <a href="<?php echo site_url('community/news/read'); ?>">
                <img src="<?php echo base_url('asset/zth-marketing/news/02.jpg'); ?>" class="img-fluid" style="width:100%;height:auto;box-shadow: 0 6px 12px -6px #222;">
                <h1 class="card-title bg-primary" style="font-size:1.3em;line-height:1.3em;margin:0;padding:10px;max-height:60px;color:#fff;text-shadow:0 1px 2px #222;overflow:hidden;box-shadow: 0 6px 12px -6px #222;">
                    News header Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum
                </h1>
            </a>
        </div>
    </div>

    <div class="col-lg-7" style="padding:0;">
        <div class="container-fluid" style="padding:0;">

            <?php for ($news_i = 0; $news_i < 4; $news_i++) { ?>
                <div class="col-xs-6">
                    <div style="height:90px;overflow:hidden;margin-bottom:10px;">
                        <a href="<?php echo site_url('community/news/read'); ?>">
                            <img src="<?php echo base_url('asset/zth-marketing/news/0' . ($news_i + 3) . '.jpg'); ?>" class="img-fluid" style="width:100%;height:auto;">
                        </a>
                    </div>
                    <div class="card-title" style="height:32px;overflow:hidden;">
                        <a href="<?php echo site_url('community/news/read'); ?>">
                            <h2 class="card-title" style="font-size:1.1em;">
                                News header Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum
                            </h2>
                        </a>
                    </div>
                </div>
            <?php } ?>

        </div>
    </div>

</div>