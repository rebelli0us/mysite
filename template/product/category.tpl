<?php echo $header; ?>
<div class="container">
  <div class="subscribe_bg"></div>
  <div class="row">
    <div id="content" class="col-md-12"><?php echo $content_top; ?>
      <div class="preview_text text-center"> 
        <h1 class="focused"><span><?php echo $heading_title; ?></span></h1>
        <?php if ($description) { ?>
          <?php echo $description; ?> 
        <?php } ?>
      </div>
      
      <?php if ($products) { ?>
      
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-sm-4">
          <div class="product-thumb subscribe_me">             
            <div class="caption text-center">
              <div class="subscribe_image">
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
              </div>
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>                  
              </p>
              <?php } ?>
              <ul>
              <?php foreach ($product['attribute_groups'] as $attribute_group) { ?>                      
                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>     
                  <li class="option"><i class="fa fa-check"></i> <?php echo $attribute['name']; ?></li>
                <?php } ?>                 
              <?php } ?>
              </ul>
              <a onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="cart_btn "><?php echo $button_cart; ?></a>
            </div>
          </div>          
        </div>
        <?php } ?>
      </div>

      <?php } ?>
   
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
