
<div style="border:solid 1px #ccc;background:#fff;border-radius:4px;">

    <div class="nav navbar" style="padding:8px;background:#eef;border-radius:4px 4px 0px 0px;border-bottom:solid 1px #ccc;">

        <div class="col-xs-9 col-md-9">
            <h1 style="margin:0px;">
                <a href="<?php echo site_url($access_module . '/blog/show/'); ?>{{id}}" style="color:#000;font-weight:bold;text-decoration:none;">{{title}}</a>
            </h1>
            <div style="font-size:0.9em;color:#888;">
                {{c_date}}
            </div>
        </div>

        <div class="col-xs-3 col-md-3" style="padding:0;text-align:right;color:#f60;">
            {{#author_name}}
            <div>
                <div style="display:block;color:#f60;">
                    <i class="fa fa-pencil-square-o"></i>
                    <span>{{author_name}}</span>
                </div>

                <a href="{{#author_url}}{{author_url}}{{/author_url}}{{^author_url}}#{{/author_url}}" target="_blank" style="font-size:0.8em;text-decoration: none;">
                    <i class="fa fa-globe"></i>
                    <span>{{author_domain}}</span>
                </a>
            </div>
            {{/author_name}}
        </div>

    </div>

    {{^public}}
    <div class="container" style="padding:15px 20px;color:#444;">
        <div class="alert alert-warning" style="margin:15px;text-align:center;">This article unpublished.</div>
        {{#img_cover}}
        <p align="center">
            <img class="img-fluid" src="<?php echo base_url('uploads/client/35/blog/'); ?>{{img_cover}}"
        </p>
        {{/img_cover}}
    </div>
    {{/public}}

    {{#public}}

    <div class="container" style="padding:15px 20px;color:#444;">
        {{{content}}}
    </div>

    {{#tags.length}}
    <div class="container" style="margin-top:10px;padding:15px 20px;min-height:48px;">
        {{#tags}}
        <a href="#{{.}}" class="btn btn-secondary" style="margin-bottom:5px;">
            <strong>{{.}}</strong>
        </a>
        {{/tags}}
    </div>
    {{/tags.length}}
    
    {{/public}}

</div>