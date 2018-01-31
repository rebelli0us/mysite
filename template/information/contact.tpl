<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1 class="text-center focused get_in_touch_text"><span><?php echo $heading_title; ?></span></h1>

      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <div class="form-group required row get_in_touch">
            <div class="col-sm-6">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"  placeholder="Вопрос / комментарий / предложение"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
            <div class="col-sm-6">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" placeholder="Как Вас зовут?"/>
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control"  placeholder="Адрес email"/>
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
              <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
            </div>
          </div>
          <?php echo $captcha; ?>
        </fieldset>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
