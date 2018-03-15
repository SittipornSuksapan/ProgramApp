


<div class="container" style="margin-top:20px;">
    <ol class="breadcrumb bg-faded">
        <li class="breadcrumb-item"><a href="<?php echo site_url('community'); ?>">Home</a></li>
        <?php
        if (empty($cate_title)) {
            $cate_title = 'News';
            echo '<li class="breadcrumb-item active">News</li>';
        } else {
            echo '<li class="breadcrumb-item"><a href="' . site_url('community/news/find') . '">News</a></li>';
            echo '<li class="breadcrumb-item active">' . $cate_title . '</li>';
        }
        ?>
    </ol>
</div>


<div class="container" style="margin-top:5px;">

    <div class="col-md-8 col-lg-9" style="padding:0;">
        <div class="card" style="padding:15px;">

            <h1>
                <?php echo $cate_title; ?>
            </h1>

            <hr size="1" color="#ccc">

            <?php for ($news_i = 0; $news_i < 6; $news_i++) { ?>
                <div class="container-fluid" style="margin-bottom:20px;">
                    <div class="col-lg-4" style="max-height:160px;overflow:hidden;">
                        <a href="<?php echo site_url('community/news/read'); ?>">
                            <img src="<?php echo base_url('asset/zth-marketing/news/0' . ($news_i + 2) . '.jpg'); ?>" class="img-fluid" style="width:100%;height:auto;">
                        </a>
                    </div>
                    <div class="col-md-8 col-lg-6" style="max-height:160px;overflow:hidden;">
                        <a href="<?php echo site_url('community/news/read'); ?>">
                            <h2 style="font-size:1.3em;height:20px;overflow:hidden;">
                                News header
                            </h2>
                        </a>
                        <div style="font-size:0.9em;color:#222;">
                            โทรโข่งป๋า มิวสิคจิตเภทเทียมทานขั้นตอน เหี่ยวย่นตุ๋ยมาเฟียศิลปวัฒนธรรมเซรามิก ออร์เดอร์ ปัจฉิมนิเทศคีตปฏิภาณ ดิสเครดิตทัวร์ภควัมบดีฮิบรู บึ้มใช้งาน ซิมโฟนี่เช็งเม้งคัตเอาต์บอมบ์ซูชิ แฟรนไชส์อาร์พีจีสเตริโอ
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-2" style="font-size:0.8em;color:#666;">
                        <div style="display:inline-block;">
                            <i class="fa fa-clock-o"></i>
                            <span>25 Nov 2016</span>
                        </div>
                        <div style="display:inline-block;">
                            <i class="fa fa-eye"></i>
                            <span>1,250</span>
                        </div>
                        <div style="display:inline-block;">
                            <i class="fa fa-share"></i>
                            <span>250</span>
                        </div>
                        <div style="display:inline-block;">
                            <i class="fa fa-comment"></i>
                            <span>5</span>
                        </div>
                    </div>
                </div>
            <?php } ?>

        </div>
    </div>

    <div class="col-md-4 col-lg-3 ads_sidebar">

        <div class="card">
            <img src="<?php echo base_url('asset/zth-marketing/ads/a1.png'); ?>" class="img-fluid">
        </div>

        <div class="card" style="margin-top:20px;">
            <img src="<?php echo base_url('asset/zth-marketing/ads/a2.PNG'); ?>" class="img-fluid">
        </div>

    </div>

</div>