<?php echo $header; ?>

<div class="container">
  <div class="subscribe_plan_bg"></div>
  <section class="subscribe_top">
    <div class="row">        
      <div class="col-md-3 caption">
        <div class="subscribe_image">     
          <?php if ($thumb) { ?>
          <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"  class="img-responsive" />
          <?php } ?>
        </div>
        <h1><?php echo $heading_title; ?></h1>
        <?php if ($price) { ?> 
        <p class="subscribe_price price">
          <?php if (!$special) { ?>
          <?php echo $price; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $special; ?></span> <span class="price-old"><?php echo $price; ?></span>
          <?php } ?>                  
        </p>
        <?php } ?>
      </div> 
      <?php if ($attribute_groups) { ?>
      <div class="col-md-9">
        <div class="specification">
          <h4 class="text-center"><?php echo $tab_attribute; ?> "<?php echo $heading_title; ?>"</h4>
          <table class="table custom_table">
            <tbody>
              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <tr>
                <td><?php echo $attribute_group['name']; ?>:</td>
                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                <td class="fa_relative"><i class="fa fa-check fa_cicrled"></i> <?php echo $attribute['name']; ?></td>
                <?php } ?>
              </tr>          
              <?php } ?>
              <?php if ($price) { ?> 
              <?php if (!$special) { ?>
              <tr>                
                <td class="td-price">Стандартная цена:</td>
                <td class="td-price-old fa_relative"><i class="fa fa-check fa_cicrled"></i> <?php echo $price; ?></td>
              </tr>                
              <?php } else { ?>
              <tr>                
                <td class="td-price">Стандартная цена:</td>
                <td class="td-price-old fa_relative"><i class="fa fa-check fa_cicrled"></i> <?php echo $price; ?></td>
              </tr>
              <tr>                
                <td class="td-price-new-heading">Цена со скидкой:</td>
                <td class="td-price-new fa_relative"><i class="fa fa-check fa_cicrled"></i> <?php echo $special; ?></td>
              </tr>                
              <?php } ?>                  
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
      <?php } ?>
    </div>
  </section>
  <div class="row options_wrapper breadcrumb"">
    <div class="col-md-8 product">
      <div id="product">  
        <?php if ($options) { ?>
        <h3 class="text-center"><?php echo $text_option; ?></h3>
        <div id="accordion" role="tablist">
          <?php foreach ($options as $option) { ?>        
            <?php if ($option['type'] == 'select') { ?>
            <div class="card">
              <div class="card-header" role="tab" id="dataOne<?php echo $option['product_option_id']; ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><a data-toggle="collapse" href="#collapseOne<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseOne<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseOne<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataOne<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                    <option value=""><?php echo $text_select; ?></option>
                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                    <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                    </option>
                    <?php } ?>
                    </select>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="card">
              <div class="card-header" role="tab"  id="dataTwo<?php echo $option['product_option_id']; ?>">
                <label class="control-label"><a class="collapsed" data-toggle="collapse" href="#collapseTwo<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseTwo<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseTwo<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataTwo<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <div class="radio">
                        <label>
                          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                          <?php if ($option_value['image']) { ?>
                          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                          <?php } ?>                    
                          <?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="card">
              <div class="card-header" role="tab" id="dataThree<?php echo $option['product_option_id']; ?>">
                <label class="control-label"><a class="collapsed" data-toggle="collapse" href="#collapseThree<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseThree<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseThree<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataThree<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                          <?php if ($option_value['image']) { ?>
                          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                          <?php } ?>
                          <?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="card">
              <div class="card-header" role="tab" id="dataFour<?php echo $option['product_option_id']; ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><a class="collapsed" data-toggle="collapse" href="#collapseFour<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseFour<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseFour<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataFour<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="card">
              <div class="card-header" role="tab" id="dataFive<?php echo $option['product_option_id']; ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><a class="collapsed" data-toggle="collapse" href="#collapseFive<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseFive<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseFive<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataFive<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="card">
              <div class="card-header" role="tab" id="dataSix<?php echo $option['product_option_id']; ?>">
                <label class="control-label"><a class="collapsed" data-toggle="collapse" href="#collapseSix<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseSix<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseSix<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataSix<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                    <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="card">
              <div class="card-header" role="tab" id="dataSeven<?php echo $option['product_option_id']; ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><a class="collapsed" data-toggle="collapse" href="#collapseSeven<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseSeven<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseSeven<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataSeven<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <div class="input-group date">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                      <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                      </span></div>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="card">
              <div class="card-header" role="tab" id="dataEight<?php echo $option['product_option_id']; ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><a class="collapsed" data-toggle="collapse" href="#collapseEight<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseEight<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseEight<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataEight<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <div class="input-group datetime">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                      <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                      </span></div>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="card">
              <div class="card-header" role="tab" id="dataNine<?php echo $option['product_option_id']; ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><a class="collapsed" data-toggle="collapse" href="#collapseNine<?php echo $option['product_option_id']; ?>" role="button" aria-expanded="false" aria-controls="collapseNine<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></a></label>
              </div>
              <div id="collapseNine<?php echo $option['product_option_id']; ?>" class="collapse" role="tabpanel" aria-labelledby="dataNine<?php echo $option['product_option_id']; ?>" data-parent="#accordion">
                <div class="card-body">
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <div class="input-group time">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                      <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                      </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
          <?php } ?>
        </div> <!-- END ACCORDION -->
        <?php } ?>
        <?php if ($recurrings) { ?>
        <hr>
        <h3><?php echo $text_payment_recurring; ?></h3>
        <div class="form-group required">
          <select name="recurring_id" class="form-control">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($recurrings as $recurring) { ?>
            <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
            <?php } ?>
          </select>
          <div class="help-block" id="recurring-description"></div>
        </div>
        <?php } ?>
        <div class="form-group">
          <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
          <br />
          <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
        </div>
      </div>
    </div>
    <div class="col-md-4 description"><?php echo $description; ?></div>

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
          <h4><?php echo $product['name']; ?></h4>
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
            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <li class="option"><i class="fa fa-check"></i> <?php echo $attribute['name']; ?></td>
            <?php } ?>
            <?php } ?>
          </ul>
          <a onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="cart_btn"><?php echo $button_cart; ?></a>
        </div>
      </div>          
    </div>
    <?php } ?>
  </div>
  <?php } ?>

  <?php if ($tags) { ?>
  <p class="article_tags text-right"><?php echo $text_tags; ?>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </p>
  <?php } ?>
  
  <?php echo $content_bottom; ?>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
  $.ajax({
    url: 'index.php?route=product/product/getRecurringDescription',
    type: 'post',
    data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
    dataType: 'json',
    beforeSend: function() {
      $('#recurring-description').html('');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();

      if (json['success']) {
        $('#recurring-description').html(json['success']);
      }
    }
  });
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
    dataType: 'json',
    beforeSend: function() {
      $('#button-cart').button('loading');
    },
    complete: function() {
      $('#button-cart').button('reset');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      $('.form-group').removeClass('has-error');

      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            var element = $('#input-option' + i.replace('_', '-'));

            if (element.parent().hasClass('input-group')) {
              element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            } else {
              element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            }
          }
        }

        if (json['error']['recurring']) {
          $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
        }

        // Highlight any found errors
        $('.text-danger').parent().addClass('has-error');
      }

      if (json['success']) {
        $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

        $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

        // $('html, body').animate({ scrollTop: 0 }, 'slow');

        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
  });
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
  pickTime: false
});

$('.datetime').datetimepicker({
  pickDate: true,
  pickTime: true
});

$('.time').datetimepicker({
  pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
  var node = this;

  $('#form-upload').remove();

  $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

  $('#form-upload input[name=\'file\']').trigger('click');

  if (typeof timer != 'undefined') {
      clearInterval(timer);
  }

  timer = setInterval(function() {
    if ($('#form-upload input[name=\'file\']').val() != '') {
      clearInterval(timer);

      $.ajax({
        url: 'index.php?route=tool/upload',
        type: 'post',
        dataType: 'json',
        data: new FormData($('#form-upload')[0]),
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {
          $(node).button('loading');
        },
        complete: function() {
          $(node).button('reset');
        },
        success: function(json) {
          $('.text-danger').remove();

          if (json['error']) {
            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
          }

          if (json['success']) {
            alert(json['success']);

            $(node).parent().find('input').val(json['code']);
          }
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    }
  }, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: $("#form-review").serialize(),
    beforeSend: function() {
      $('#button-review').button('loading');
    },
    complete: function() {
      $('#button-review').button('reset');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }

      if (json['success']) {
        $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').prop('checked', false);
      }
    }
  });
    grecaptcha.reset();
});

$(document).ready(function() {
  $('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});

$(document).ready(function() {
  var hash = window.location.hash;
  if (hash) {
    var hashpart = hash.split('#');
    var  vals = hashpart[1].split('-');
    for (i=0; i<vals.length; i++) {
      $('#product').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
      $('#product').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
      $('#product').find('input[type="checkbox"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
    }
  }
})
//--></script>
<?php echo $footer; ?>