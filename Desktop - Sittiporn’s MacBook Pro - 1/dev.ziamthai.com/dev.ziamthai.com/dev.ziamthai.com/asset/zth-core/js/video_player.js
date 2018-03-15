

var $_video_player_elm = null;
var $_video_player_emb = null;
var $_video_player_key = null;
var $_video_player_ctrl = null;

$(function () {

    $('body').on('mouseenter mouseover', '.video-player', function () {
        $(this).find('.video-controls').fadeIn();

        var v_player = $(this).find('video') || null;

        var video = v_player.get(0) || false;

        if (!video) {
            return;
        }
    });

    $('body').on('mouseleave', '.video-player', function () {
        var v_player = $(this).find('video') || null;
        var v_controls = $(this).find('.video-controls') || null;

        var video = v_player.get(0) || false;

        if (!video) {
            return;
        }

        if (!video.paused) {
            v_controls.fadeOut();
        }
    });

    $('body').on('click touchend', '.video-player > .video-embed', function (e) {
        if (e.type === "click") {
            touchClick = true;
        }

        if (!touchClick) {
            return;
        }

        $_video_player_key = $(this).parents('.video-player').data('video') || null;
        $_video_player_elm = $('body').find('.video-player[data-video="' + $_video_player_key + '"]') || null;
        $_video_player_ctrl = $_video_player_elm.children('.video-controls') || null;
        $_video_player_emb = $_video_player_elm.children('.video-embed') || null;

        video_play_pause();
    });

    $('body').on('click touchend', '.video-player > .video-controls > .play-pause', function (e) {
        if (e.type === "click") {
            touchClick = true;
        }

        if (!touchClick) {
            return;
        }

        $_video_player_key = $(this).parents('.video-controls').parents('.video-player').data('video') || null;
        $_video_player_elm = $('body').find('.video-player[data-video="' + $_video_player_key + '"]') || null;
        $_video_player_ctrl = $_video_player_elm.children('.video-controls') || null;
        $_video_player_emb = $_video_player_elm.children('.video-embed') || null;

        video_play_pause();
    });

    $('body').on('click touchend', '.video-player > .video-controls > .fullscreen', function (e) {
        if (e.type === "click") {
            touchClick = true;
        }

        if (!touchClick) {
            return;
        }

        $_video_player_key = $(this).parents('.video-controls').parents('.video-player').data('video') || null;
        $_video_player_elm = $('body').find('.video-player[data-video="' + $_video_player_key + '"]') || null;
        $_video_player_ctrl = $_video_player_elm.children('.video-controls') || null;
        $_video_player_emb = $_video_player_elm.children('.video-embed') || null;

        var video = $_video_player_emb.get(0) || false;

        if (!video) {
            return;
        }

        if (video.requestFullscreen) {
            video.requestFullscreen();
        } else if (video.mozRequestFullScreen) {
            video.mozRequestFullScreen(); // Firefox
        } else if (video.webkitRequestFullscreen) {
            video.webkitRequestFullscreen(); // Chrome and Safari
        }
    });

    $(window).scroll(function () {
        //--video pause on scroll out
        if ($_video_player_emb) {
            var chk_scroll_point = ($(document).height() - $(window).height());
            var end_scroll_point = ($(window).scrollTop() + ($_video_player_emb.height() * 2)) + ($_video_player_emb.offset().top * 2);

            if (chk_scroll_point < end_scroll_point) {
                var video = $_video_player_emb.get(0);

                video.pause();
            }
        }
    });

});

function video_play_pause() {
    var video = $_video_player_emb.get(0) || false;

    if (!video) {
        return;
    }

    if (video.paused === true) {
        video_stop_all();

        video.play();

        video_play_event();
    } else {
        $_video_player_emb.removeAttr('controls');

        video.pause();
    }
}

function video_stop_all() {
    var videos = $('body').find('video');

    videos.each(function () {
        $(this).get(0).pause();
        $(this).removeAttr('controls');

        var cc_controls = $(this).parents('.video-player').find('.video-controls');
        cc_controls.show();

        var cc_play_pause = cc_controls.find('.play-pause').find('.fa');
        cc_play_pause.removeClass('fa-pause').addClass('fa-play');

        var v_index = $(this).data('video') || false;

        if (v_index.length > 1) {
            var v_player = $('body').find('.video-player[data-video="' + v_index + '"]');
            var v_controls = v_player.find('.video-controls');
            var play_pause_fa = v_controls.find('.play-pause').find('.fa');

            play_pause_fa.removeClass('fa-pause').addClass('fa-play');
        }
    });

}

function video_play_event() {
    var play_pause_fa = $_video_player_ctrl.find('.play-pause').find('.fa');

    $_video_player_emb.on("play", function (e) {
        play_pause_fa.removeClass('fa-play').addClass('fa-pause');
        $_video_player_emb.attr('controls', '');
        $_video_player_ctrl.hide();
    });

    $_video_player_emb.on("playing", function (e) {
        play_pause_fa.removeClass('fa-play').addClass('fa-pause');
        $_video_player_emb.attr('controls', '');
        $_video_player_ctrl.hide();
    });

    $_video_player_emb.on("pause", function (e) {
        play_pause_fa.removeClass('fa-pause').addClass('fa-play');
        $_video_player_ctrl.find('.play-pause').show();
        $_video_player_ctrl.show();
    });

    $_video_player_emb.on("ended", function (e) {
        play_pause_fa.removeClass('fa-pause').addClass('fa-play');
        $_video_player_emb.removeAttr('controls');
        $_video_player_ctrl.show();

        var fancybox_gallery = $_video_player_emb.data('fancybox-gallery') || false;
        
        if (fancybox_gallery == true && $('body').find('.fancybox-next').length > 0) {
            $('body').find('.fancybox-next').trigger('click');
        }
    });
}
