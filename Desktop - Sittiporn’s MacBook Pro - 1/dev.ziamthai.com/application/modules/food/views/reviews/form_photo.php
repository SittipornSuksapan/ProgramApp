
<style type="text/css">
    #reviews_photo_iframe,
    #reviews_photo_result { display:none; }

    #reviews_photo_preview { position:relative;margin:auto;width:75%;max-height:240px;overflow:hidden;overflow-y: auto;margin-bottom:15px; }
    #reviews_photo_preview img { width:100%;height:auto;border-radius:6px; }

    .photo_item { position:relative;margin-bottom:20px; }
    .photo_item_add,
    .photo_item_btn { display:inline-block;text-align:center;vertical-align:middle;width:100%;height:75px;line-height:70px;padding:0px;overflow:hidden; }
    .photo_item_btn img { width:100%;height:auto; }
    .photo_item_del { position:absolute;top:0;right:16px;padding:4px 8px; }
</style>

<div class="container">
    <div class="form-group">
        <div id="reviews_photo_list" class="row">

            <div class="col-xs-6 col-md-3" rel="0">
                <a onclick="$('#reviews_photo_browse').trigger('click');" href="javascript:void(0);" class="photo_item_add btn btn-secondary">
                    <i class="fa fa-camera"></i>
                </a>
            </div>

        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="reviews_photo_modal" tabindex="-1" role="dialog">
    <form id="reviews_photo_form" class="modal-dialog" role="document" action="<?php echo site_url('api/reviews/photo_upload'); ?>" target="reviews_photo_iframe" method="POST" enctype="multipart/form-data">
        <div class="modal-content">
            <div class="modal-header" style="position:relative;">
                <h5 class="modal-title">Photo Preview</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="position:absolute;right:16px;top:16px;">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input id="reviews_photo_shop" type="hidden" name="shop" value="<?php echo $bssh_info['bssh_id']; ?>">
                <input id="reviews_photo_edit" type="hidden" name="photo">
                <input id="reviews_photo_old" type="hidden" name="photo_old">

                <div id="reviews_photo_preview" onclick="$('#reviews_photo_browse').trigger('click');" style="cursor:pointer;"></div>

                <div class="form-group row">
                    <div class="col-md-6">
                        <label>Caption</label>
                        <input id="reviews_photo_caption" type="text" class="form-control" name="caption">
                    </div>
                    <div class="col-md-6">
                        <label>Image Type</label>
                        <select id="reviews_photo_type" class="form-control" name="type">
                            <option value="0">-- Select --</option>
                            <option value="101">Front store</option>
                            <option value="102">Environment</option>
                            <option value="103">Menu</option>
                            <option value="104">Foods & Drink</option>
                            <option value="105">Others</option>
                        </select>
                    </div>
                </div>

                <div id="reviews_photo_result" class="form-group alert alert-warning" style="display:none;margin:10px;"></div>

                <input id="reviews_photo_browse" class="form-control" type="file" name="photo" style="display:none;" />

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" onclick="$('#reviews_photo_form').submit();">Upload</button>
            </div>
        </div>
    </form>
</div>

