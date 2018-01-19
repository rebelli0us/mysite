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
      <a class="logo_sm" href="#top_section"><h1>locco.me - переводчик для instagram, facebook, twitter, youtube</h1></a>
      <span></span>
    </div>
    <div class="nav_wrapper">
      <a class="toggle_btn"><span></span></a>
      <nav class="site_nav">
        <li><a href="#">О Проекте</a></li>
        <li><a href="#">Тарифы</a></li>
        <li><a href="#">Контакты</a></li>
        <li><a href="#">Блогго</a></li>
        <li><a href="#">Личный Кабинет</a></li>
      </nav>
    </div>
    <div class="social_nav_wrapper">
      <span class="follow-us">Следите за нами в:</span>
      <nav class="social_nav">
        <li class="fb_link"><a href="#"><span>Facebook</span><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
        <li class="vk_link"><a href="#"><span>ВКонтакте</span><i class="fa fa-vk" aria-hidden="true"></i></a></li>
        <li class="ins_link"><a href="#"><span>Instagram</span><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
        <li class="you_link"><a href="#"><span>YouTube</span><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
        <li class="tw_link"><a href="#"><span>Twitter</span><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
        <li class="lin_link"><a href="#"><span>LinkedIn</span><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
        <li class="gp_link"><a href="#"><span>Google+</span><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>  
        <li class="tel_link"><a href="#"><span>Telegram</span><i class="fa fa-telegram" aria-hidden="true"></i></a></li>  
      </nav>
    </div>
  </header>