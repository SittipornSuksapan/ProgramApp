<?php

date_default_timezone_set('Europe/London'); //--set +00:00

define('SERVER_NAME', isset($_SERVER['SERVER_NAME']) ? $_SERVER['SERVER_NAME'] : 'www.ziamthai.com');

define('ROOT_PATH', dirname(__FILE__));

define('TIME_NOW', time());

define('UPLOADS_CLIENT', 'uploads/client/');
define('UPLOADS_MEMBER', 'uploads/member/');

/* ---- */

define('PATH_ITEM_PHOTO', 'uploads/biz_item_photo/');
define('PATH_ITEM_CATEGORY', 'uploads/biz_item_cate/');

define('PATH_BLOG_PHOTO', 'uploads/biz_blog_photo/');
define('PATH_BLOG_VIDEO', 'uploads/biz_blog_video/');

define('PATH_REVIEW_IMG', 'uploads/reviews_img/');

define('PATH_USER_PHOTO', 'uploads/user_photo/');
define('PATH_USER_BARCODE', 'uploads/user_barcode/');

define('PATH_BIZ_IMGFRONT', 'uploads/front/'); //req
define('PATH_BIZ_IMGHEAD', 'uploads/header/'); //req
define('PATH_BIZ_IMGFOOD', 'uploads/food/');
define('PATH_BIZ_IMGMENU', 'uploads/menu/');
define('PATH_BIZ_IMGENV', 'uploads/environment/');
define('PATH_BIZ_IMGOTHER', 'uploads/others/');
define('PATH_BIZ_CATEGORY', 'uploads/biz_category/');
