<div id="finder-bssh-item-{{id}}" class="finder-bssh-item col-xs-12">
    <div class="row" style="position:relative;">

        {{#work_hour_today}}
        <div style="z-index:100;position:absolute;background:rgba(0,0,0,0.6);padding:5px;border-radius:4px;top:-5px;right:5px;font-size:0.8em;color:#fff;text-align:center;line-height:14px;">
            {{#work_hour_today.now_opening}}
            {{#work_hour_today.upcoming_close}}
            <button class="btn btn-block btn-success blink" style="margin-bottom:4px;padding:2px 4px;background:#0c0;">
                Open
            </button>
            <div>
                Closing on<br>{{work_hour_today.upcoming_close}}
            </div>
            {{/work_hour_today.upcoming_close}}
            {{/work_hour_today.now_opening}}

            {{^work_hour_today.now_opening}}
            {{#work_hour_today.upcoming_open}}
            <div>
                Opening on
                {{#work_hour_today.next_day_open}}
                <br>(Next day)
                {{/work_hour_today.next_day_open}}
            </div>
            <button class="btn btn-block btn-secondary" style="margin-top:4px;padding:2px 4px;color:#f00;">
                <strong>{{work_hour_today.upcoming_open}}</strong>
            </button>
            {{/work_hour_today.upcoming_open}}
            {{/work_hour_today.now_opening}}
        </div>
        {{/work_hour_today}}

        <div class="col-md-4 col-lg-3">
            <a class="item-thumb" target="_blank" style="background-image: url({{img_logo_thumb}});" href="<?php echo site_url($access_module . '/'); ?>{{link_show}}"></a>
        </div>

        <div class="col-md-8 col-lg-9 text-xs-center text-md-left">
            <a href="<?php echo site_url($access_module . '/'); ?>{{link_show}}" target="_blank" title="{{name}}" style="color:#333;">
                <h4 class="item-headline">{{name}}</h4>
            </a>
            <div style="padding:4px 8px;height:28px;overflow:hidden;">
                <i class="fa fa-map-marker"></i>
                {{#link_state}}
                <a href="<?php echo site_url($access_module . '/'); ?>{{link_state}}">{{state_code}}</a>
                {{/link_state}}
                {{^link_state}}{{state_code}}{{/link_state}}
                {{{show_distance}}}
            </div>
            <div class="bssh-rateyo" data-rate="{{score_rate}}"></div>
            <div style="padding:4px 8px;">
                <a href="javascript:foods_store_mapview('{{id}}','{{map_position}}',true);" style="font-size:0.8em;color:#f60;text-decoration:none;">
                    <i class="fa fa-map"></i>
                    {{address}},{{zipcode}}
                    <?php //echo $this->lang->line('finder_on_map'); ?>
                </a>
            </div>
        </div>

    </div>
</div>