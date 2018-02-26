<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> account_wrapper"><?php echo $content_top; ?>
      <div class="col-md-6">
        <div class="ul_header">
          <i class="fa fa-user hidden-xs"></i><h3><?php echo $text_my_account; ?></h3>
        </div>
        <ul class="custom_ul">
          <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
          <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
        </ul>
        <?php if ($credit_cards) { ?>
        <div class="ul_header">        
          <i class="fa fa-credit-card hidden-xs"></i><h3><?php echo $text_credit_card; ?></h3>
        </div>
        <ul class="custom_ul">
          <?php foreach ($credit_cards as $credit_card) { ?>
          <li><a href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a></li>
          <?php } ?>
        </ul>
        <?php } ?>
        <div class="ul_header">
          <i class="fa fa-rss hidden-xs"></i><h3><?php echo $text_my_newsletter; ?></h3>
        </div>
        <ul class="custom_ul">
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      <div class="col-md-6">
        <div class="ul_header">
          <i class="fa fa-shopping-cart hidden-xs"></i><h3><?php echo $text_my_orders; ?></h3>
        </div>
        <ul class="custom_ul">
          <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
          <?php if ($reward) { ?>
          <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
          <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
        </ul>
      <div>      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<?php echo $footer; ?> 