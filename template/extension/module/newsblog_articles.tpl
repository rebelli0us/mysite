<?php if ($heading_title) { ?>
<h3><?php echo $heading_title; ?></h3>
<?php } ?>
<?php if ($html) { ?>
<?php echo $html; ?>
<?php } ?>
<div class="row">
  <?php foreach ($articles as $article) { ?>
  <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="product-thumb transition bloggo">
      <?php if ($article['thumb']) { ?>
        <div class="image"><a href="<?php echo $article['href']; ?>" style="background-image: url('<?php echo $article['thumb']; ?>')"></a></div>
      <?php } ?>
      <div class="caption">
        <h4><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h4>
        <p><?php echo $article['preview']; ?></p>
      </div>
      <div class="button-group pull-right">
    		<a href="<?php echo $article['href']; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_more; ?></span></a>
    		<?php if ($article['date']) { ?>
        <button type="button" data-toggle="tooltip" title="<?php echo $article['date']; ?>"><i class="fa fa-clock-o"></i></button>
        <?php } ?>
    		<button type="button" data-toggle="tooltip" title="<?php echo $article['viewed']; ?>"><i class="fa fa-eye"></i></button>
    	</div>
    </div>
  </div>
  <?php } ?>
</div>
<?php if ($link_to_category) { ?>
<a href="<?php echo $link_to_category; ?>"><?php echo $text_more; ?> <?php echo $heading_title; ?></a>
<?php } ?>