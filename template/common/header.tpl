<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<link href="catalog/view/theme/mytheme/libs/animate.css" rel="stylesheet">
<link href="catalog/view/theme/mytheme/libs/owlcarousel/owl.carousel.min.css" rel="stylesheet">
<link href="catalog/view/theme/mytheme/libs/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link href="catalog/view/theme/mytheme/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/theme/mytheme/js/theme.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
  <header>
    <div class="logo_wrapper">
      <div class="logo_sm"><h1><?php echo $name; ?></h1></div>
      <span><a href="<?php echo $home; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"></a></span>
    </div>
    <div class="nav_wrapper">
      <a class="toggle_btn"><span></span></a>
      <nav class="site_nav">
        <li><a href="/locco/index.php?route=information/information&information_id=4">О проекте</a></li>
        <li><a href="/locco/index.php?route=product/category&path=59">Планы подписки</a></li>
        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        <li><a href="/locco/index.php?route=newsblog/category&newsblog_path=9">Блогго</a></li>
        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      </nav>
    </div>
    <div class="social_nav_wrapper">
      <span class="follow-us">Следите за нами в:</span>
      <nav class="social_nav">
        <li class="fb_link"><a href="#" rel="nofollow" target="_blank"><span>Facebook</span><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
        <li class="vk_link"><a href="#" rel="nofollow" target="_blank"><span>ВКонтакте</span><i class="fa fa-vk" aria-hidden="true"></i></a></li>
        <li class="ins_link"><a href="#" rel="nofollow" target="_blank"><span>Instagram</span><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
        <li class="you_link"><a href="#" rel="nofollow" target="_blank"><span>YouTube</span><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
<!--         <li class="tw_link"><a href="#" rel="nofollow" target="_blank"><span>Twitter</span><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
        <li class="lin_link"><a href="#" rel="nofollow" target="_blank"><span>LinkedIn</span><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
        <li class="gp_link"><a href="#" rel="nofollow" target="_blank"><span>Google+</span><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>  
        <li class="tel_link"><a href="#" rel="nofollow" target="_blank"><span>Telegram</span><i class="fa fa-telegram" aria-hidden="true"></i></a></li> -->
      </nav>
    </div>
  </header>