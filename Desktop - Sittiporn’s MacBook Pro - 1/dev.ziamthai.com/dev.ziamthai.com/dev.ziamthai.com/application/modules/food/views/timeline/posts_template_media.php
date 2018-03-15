{{#media.length}}
<div class="card-block">
    <div class="{{grid_class}}">
        {{#media}}

        {{#media_photo}}
        <div class="grid-item {{item_class}}">
            <a href="{{file_url}}" class="fancybox2-gallery" rel="feed-id-{{post.id}}">
                <i class="photo" style="background-image:url({{file_url}});"></i>
            </a>

            {{#media_overlay}}
            <div class="photo-overlay">
                <label>+{{media_more}}</label>
            </div>
            {{/media_overlay}}
        </div>
        {{/media_photo}}

        {{#media_video}}
        <div class="grid-item {{item_class}}">
            <a href="javascript:void(0);" rel="feed-id-{{post.id}}" class="fancybox2-videos" data-url="{{file_url}}" data-id="{{file_id}}" data-img="{{img_url}}">
                <span class="photo" style="background-image:url({{img_url}});">
                    <i class="fa fa-play"></i>
                </span>
            </a>
            
            {{#media_overlay}}
            <div class="photo-overlay">
                <label>+{{media_more}}</label>
            </div>
            {{/media_overlay}}
        </div>

        <!--div class="grid-item {{item_class}} video-player" data-video="{{file_id}}">
            <video class="video-embed" poster="{{#img_url}}{{img_url}}{{/img_url}}" preload="auto" style="display:none;">
                <source src="{{file_url}}">
            </video>
            
            <div class="video-controls">
                <div class="fullscreen"><i class="fa fa-expand"></i></div>
                <div class="play-pause"><i class="fa fa-play"></i></div>
            </div>

            {{#media_overlay}}
            <div class="photo-overlay">
                <label>+{{media_more}}</label>
            </div>
            {{/media_overlay}}
        </div-->
        {{/media_video}}

        {{/media}}

        <div class="grid-sizer"></div>
    </div>
</div>
{{/media.length}}