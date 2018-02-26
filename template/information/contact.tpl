<?php echo $header; ?>
<div id="map" class="contact_page_map"></div>
<div class="container contact_page">
  <div class="row">
    <div id="content" class="col-md-10 col-md-offset-1"><?php echo $content_top; ?>
      <h1 class="text-center"><span><?php echo $heading_title; ?></span></h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <div class="form-group required">
            <input type="text" name="name" autocomplete="off" value="<?php echo $name; ?>" id="input-name" class="form-control" required/>
            <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>            
            <?php if ($error_name) { ?>
            <div class="text-danger"><?php echo $error_name; ?></div>
            <?php } ?>           
          </div>
          <div class="form-group required">            
            <input type="text" name="email" autocomplete="off" value="<?php echo $email; ?>" id="input-email" class="form-control" required/>
            <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
            <?php if ($error_email) { ?>
            <div class="text-danger"><?php echo $error_email; ?></div>
            <?php } ?>           
          </div>
          <div class="form-group required textarea">
            <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control" required><?php echo $enquiry; ?></textarea>
            <label class="control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>        
            <?php if ($error_enquiry) { ?>
            <div class="text-danger"><?php echo $error_enquiry; ?></div>
            <?php } ?>          
          </div>
          <?php echo $captcha; ?>
        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
 


<?php echo $footer; ?>

<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyChZM6lGUltpvmNkDEpLU3M_dsIIQ1ZsA0&callback=initMap&language=en">
</script>
