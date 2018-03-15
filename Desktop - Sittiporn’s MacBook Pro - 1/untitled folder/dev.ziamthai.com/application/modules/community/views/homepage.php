

<div id="hl_box" class="container">
    <div class="col-sm-9 col-lg-9">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#home" role="tab" aria-controls="home">Daily</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#profile" role="tab" aria-controls="profile">Business</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#messages" role="tab" aria-controls="messages">Spports</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#settings" role="tab" aria-controls="settings">Entertainment</a>
            </li>
        </ul>

        <div class="tab-content" style="background:#fff;">
            <div class="tab-pane active" id="home" role="tabpanel" style="padding-top:20px;padding-bottom:20px;">
                <?php echo $this->load->view('hl_content_1', true); ?>
            </div>
            <div class="tab-pane" id="profile" role="tabpanel" style="padding-top:20px;padding-bottom:20px;">
                <?php echo $this->load->view('hl_content_2', true); ?>
            </div>
            <div class="tab-pane" id="messages" role="tabpanel" style="padding-top:20px;padding-bottom:20px;">
                <?php echo $this->load->view('hl_content_3', true); ?>
            </div>
            <div class="tab-pane" id="settings" role="tabpanel" style="padding-top:20px;padding-bottom:20px;">
                <?php echo $this->load->view('hl_content_4', true); ?>
            </div>
        </div>

        <div style="margin-top:10px;">
            <h5 style="margin:0;">
                Tags Hitz:
            </h5>
            <div class="btn-group">
                <a href="<?php echo site_url('community/news/find/thai lottory'); ?>" class="btn btn-link">thai lotto</a>
                <a href="<?php echo site_url('community/news/find/horoscope'); ?>" class="btn btn-link">horoscope</a>
                <a href="<?php echo site_url('community/news/find/thai league'); ?>" class="btn btn-link">thai league</a>
                <a href="<?php echo site_url('community/news/find/donald trump'); ?>" class="btn btn-link">donald trump</a>
                <a href="<?php echo site_url('community/news/find/prayut'); ?>" class="btn btn-link">prayut</a>
            </div>
        </div>
    </div>

    <div class="col-sm-3 col-lg-3">

        <div class="card">
            <img src="<?php echo base_url('asset/zth-marketing/ads/a1.png'); ?>" class="img-fluid">
        </div>

        <div class="card" style="margin-top:20px;">
            <img src="<?php echo base_url('asset/zth-marketing/ads/a2.PNG'); ?>" class="img-fluid">
        </div>

    </div>

</div>

<?php for ($cat_i = 0; $cat_i < 4; $cat_i++) { ?>
    <div class="container" style="margin-top:30px;">
        <div class="card" style="border-radius: 10px 0px 0px 0px;">
            <div class="card-header bg-primary" style="position:relative;height:50px;border-radius: 10px 0px 0px 0px;">
                <h3 class="bg-pink" style="position:absolute;top:0;left:0;height:50px;margin:0;display:inline-block;padding:10px 20px 0px 20px;color:#ac1354;border-radius: 10px 0px 0px 0px;box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);">Category</h3>
                <div style="position:absolute;top:8px;right:10px;">
                    <a href="<?php echo site_url('community/news/find'); ?>" style="color:#fff">
                        <span style="font-size:1.3em;">View all</span>
                        <i class="fa fa-2x fa-chevron-right" style="vertical-align:middle;"></i>
                    </a>
                </div>
            </div>

            <div class="card-block">

                <?php for ($news_i = 0; $news_i < 12; $news_i++) { ?>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <div style="height:90px;overflow:hidden;">
                            <a href="<?php echo site_url('community/news/read'); ?>">
                                <img src="<?php echo base_url('asset/zth-marketing/news/0' . ($news_i + $cat_i + 1) . '.jpg'); ?>" class="img-fluid" style="width:100%;height:auto;">
                            </a>
                        </div>
                        <div class="card-title" style="height:30px;overflow:hidden;">
                            <a href="<?php echo site_url('community/news/read'); ?>">
                                <h2 class="card-title" style="font-size:1.1em;">
                                    News header Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum Lorem ibsum
                                </h2>
                            </a>
                        </div>
                    </div>
                <?php } ?>

            </div>

        </div>
    </div>
<?php } ?>