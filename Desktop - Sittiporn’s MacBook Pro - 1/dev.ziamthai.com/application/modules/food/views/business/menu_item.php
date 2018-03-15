
<div class="foods-menu-item-list row">

    <div class="col-xs-4 col-md-4 col-lg-3">
        {{#online_order}}
        <img onclick="store_order_select('{{id}}');" src="{{photo_thumb}}" class="photo img-fluid" draggable="true" ondragstart="store_menu_item_drag(event)" ondragend="store_menu_item_dragleave(event)" rel="{{id}}">
        {{/online_order}}
        {{^online_order}}
        <img src="{{photo_thumb}}" class="photo img-fluid" draggable="true" ondragstart="store_menu_item_drag(event)" ondragend="store_menu_item_dragleave(event)" rel="{{id}}">
        {{/online_order}}
    </div>

    <div class="col-xs-8 col-md-8 col-lg-9">
        <div class="row">
            <div class="col-lg-8">
                {{#online_order}}
                <h5 class="headline" onclick="store_order_select('{{id}}');">{{name}}</h5>
                {{/online_order}}
                {{^online_order}}
                <h5 class="headline">{{name}}</h5>
                <div style="font-size:0.8em;color:#f60;">Unavailable for online order.</div>
                {{/online_order}}
                {{#description}}<div class="description">{{description}}</div>{{/description}}
            </div>
            <div class="col-lg-4">
                <?php if (!empty($access_user['id'])) { ?>
                    {{#online_order}}
                    <div class="btn-group" draggable="true" ondragstart="store_menu_item_drag(event)" ondragend="store_menu_item_dragleave(event)" rel="{{id}}">
                        <button type="button" class="btn-price btn btn-sm btn-outline-primary" onclick="store_order_select('{{id}}');">
                            <span>$</span>
                            {{price}}
                        </button>
                        <button type="button" class="btn btn-sm btn-primary" onclick="store_order_table_add('{{id}}');">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                    {{/online_order}}
                    {{^online_order}}
                    <div>
                        <button type="button" class="btn btn-sm btn-outline-secondary no-hover" style="color:#666;">
                            {{price}}
                            <span>$</span>
                        </button>
                    </div>
                    {{/online_order}}
                <?php } else { ?>
                    <div>
                        <button type="button" class="btn btn-sm btn-outline-secondary no-hover" style="color:#666;">
                            {{price}}
                            <span>$</span>
                        </button>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>

</div>
