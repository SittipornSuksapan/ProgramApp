
<script src="<?php echo asset_url('ckeditor/ckeditor.js'); ?>" type="text/javascript"></script>
<!--script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script-->

<link href="<?php echo asset_url('select2/css/select2.min.css'); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('select2/js/select2.full.min.js'); ?>" type="text/javascript"></script>

<style type="text/css">
    #blog_img_cover_preview { max-height:260px;overflow-x:hidden;overflow-y:auto;text-align:center; }
    #blog_img_cover_preview img { width:100%; }
</style>

<h1 style="padding:15px;">
    <?php
    echo $this->lang->line('page_title');
    if (!empty($blog_data['title'])) {
        echo ': <span style="font-size:0.8em;color:#666;">' . $blog_data['title'] . '</span>';
    }
    ?>
</h1>

<form action="<?php echo base_url('api.php/v1_client/blog/writing_save'); ?>" id="blog_form" class="container-fluid" style="margin-top:15px;margin-bottom:15px;" method="POST" enctype="multipart/form-data" target="blog_iframe">
    <div class="row">

        <div class="col-md-8 col-lg-9">

            <div class="form-group">
                <?php
                if (!empty($blog_data['id'])) {
                    echo '<input type="hidden" name="id" value="' . $blog_data['id'] . '">';
                }
                ?>
                <input class="form-control form-control-lg" type="text" name="title" placeholder="<?php echo $this->lang->line('form_label_title'); ?>" <?php
                if (!empty($blog_data['title'])) {
                    echo 'value="' . $blog_data['title'] . '"';
                }
                ?>>
            </div>

            <div class="form-group">
                <textarea id="blog_content" name="content"><?php
                    if (!empty($blog_data['content'])) {
                        echo $blog_data['content'];
                    }
                    ?></textarea>
            </div>

        </div>

        <div class="col-md-4 col-lg-3">

            <div class="form-group">
                <label><?php echo $this->lang->line('form_label_author'); ?></label>
                <div>
                    <div class="btn-group" data-toggle="buttons" style="background:#fff;border-radius:6px;">
                        <label for="blog_author_false" class="btn btn-outline-success <?php
                        if (empty($blog_data['author_name'])) {
                            echo 'active';
                        }
                        ?>">
                            <input type="radio" id="blog_author_false" name="author_credit" value="0" <?php
                            if (empty($blog_data['author_name'])) {
                                echo 'checked';
                            }
                            ?>>
                                   <?php echo $this->lang->line('form_label_author_false'); ?>
                        </label>
                        <label for="blog_author_true" class="btn btn-outline-success  <?php
                        if (!empty($blog_data['author_name'])) {
                            echo 'active';
                        }
                        ?>">
                            <input type="radio" id="blog_author_true" name="author_credit" value="1" <?php
                            if (!empty($blog_data['author_name'])) {
                                echo 'checked';
                            }
                            ?>>
                                   <?php echo $this->lang->line('form_label_author_true'); ?>
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group form-author-info" <?php
            if (empty($blog_data['author_name'])) {
                echo 'style="display:none;"';
            }
            ?>>
                <label><?php echo $this->lang->line('form_label_author_name'); ?></label>
                <input class="form-control" name="author_name" value="<?php
                if (!empty($blog_data['author_name'])) {
                    echo $blog_data['author_name'];
                }
                ?>">
            </div>

            <div class="form-group form-author-info" <?php
            if (empty($blog_data['author_name'])) {
                echo 'style="display:none;"';
            }
            ?>>
                <label><?php echo $this->lang->line('form_label_author_url'); ?></label>
                <input class="form-control" name="author_url" value="<?php
                if (!empty($blog_data['author_url'])) {
                    echo $blog_data['author_url'];
                }
                ?>">
            </div>

            <div class="form-group">
                <label><?php echo $this->lang->line('form_label_tags'); ?></label>
                <div>
                    <?php
                    if (!empty($blog_data['tags'])) {
                        echo '<input type="hidden" id="blog_tags_list" value="' . $blog_data['tags'] . '">';
                    }
                    ?>
                    <select id="blog_tags" name="tags[]" multiple="multiple" style="min-width:100%;">
                        <?php
                        if (!empty($blog_data['tags'])) {
                            $tags_list_arr = explode('||', $blog_data['tags']);

                            foreach ($tags_list_arr as $tags) {
                                echo sprintf('<option value="%s">%s</option>', $tags, $tags);
                            }
                        }
                        ?>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label><?php echo $this->lang->line('form_label_highlight'); ?></label>
                <textarea class="form-control" id="blog_highlight" name="highlight"><?php
                    if (!empty($blog_data['highlight'])) {
                        echo $blog_data['highlight'];
                    }
                    ?></textarea>
            </div>

            <div class="form-group">
                <label><?php echo $this->lang->line('form_label_img_cover'); ?></label>
                <input class="form-control" id="blog_img_cover" name="img_cover" type="file">
                <?php
                if (!empty($blog_data['img_cover'])) {
                    echo '<input type="hidden" name="img_cover_old" value="' . $blog_data['img_cover'] . '">';
                }
                ?>
                <div id="blog_img_cover_preview">
                    <?php
                    if (!empty($blog_data['img_cover'])) {
                        $img_cover_url = base_url(UPLOADS_CLIENT . intval($access_workspace['id']) . '/blog/' . $blog_data['img_cover']);
                        echo '<img class="img-fluid" src="' . $img_cover_url . '">';
                    }
                    ?>
                </div>
            </div>

        </div>

        <div class="col-xs-12">

            <div class="form-group">
                <label><?php echo $this->lang->line('form_label_public'); ?></label>
                <div>
                    <div class="btn-group" data-toggle="buttons" style="background:#fff;border-radius:6px;">
                        <label for="blog_public_false" class="btn btn-outline-success <?php
                        if (empty($blog_data['public'])) {
                            echo 'active';
                        }
                        ?>">
                            <input type="radio" name="public" id="blog_public_false" value="0"  <?php
                            if (empty($blog_data['public'])) {
                                echo 'checked';
                            }
                            ?>>
                                   <?php echo $this->lang->line('form_label_public_false'); ?>
                        </label>
                        <label for="blog_public_true" class="btn btn-outline-success  <?php
                        if (!empty($blog_data['public'])) {
                            echo 'active';
                        }
                        ?>">
                            <input type="radio" name="public" id="blog_public_true" value="1" <?php
                            if (!empty($blog_data['public'])) {
                                echo 'checked';
                            }
                            ?>>
                                   <?php echo $this->lang->line('form_label_public_true'); ?>
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <button id="blog_btn_submit" type="submit" class="btn btn-lg btn-primary">
                    <i class="fa fa-save"></i>
                    <span><?php echo $this->lang->line('form_btn_submit'); ?></span>
                </button>
                <button id="blog_btn_indicator" type="button" class="btn btn-lg btn-outline-primary"style="display:none;">
                    <i class="fa fa-circle-o-notch fa-spin fa-fw"></i>
                </button>
            </div>

        </div>

    </div>
</form>

<iframe id="blog_iframe" name="blog_iframe" style="display:none;"></iframe>

<script src="<?php echo asset_url('zth-client/js/blog/writing.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>
