<?php echo $header; ?>
<div class="container blog_category">
  <div class="category_bg" style="background-image: url('<?php echo $original; ?>')"></div>

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="category_desc">
        <h1 class="focused text-center"><span><?php echo $heading_title; ?></span></h1>
        <?php if ($thumb || $description) { ?>
        <div class="row">
          <?php if ($description) { ?>
          <div class="col-sm-12 description"><?php echo $description; ?></div>
          <?php } ?>
        </div>
      </div>
      <?php } ?>
      <?php if ($categories) { ?>
      <div class="row">
        <div class="col-sm-12">
          <ul class="list-inline text-center blog_categories">
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } ?>
      <?php if ($articles) { ?>
      <div class="row">
        <?php foreach ($articles as $article) { ?>
        <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12">
          <div class="product-thumb transition bloggo">
            <?php if ($article['thumb']) { ?>
              <div class="image" ><a href="<?php echo $article['href']; ?>" style="background-image: url('<?php echo $article['original']; ?>')"></a></div>
            <?php } ?>
            <div class="caption">
                <h4><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h4>
                <div class="text_wrapper"><?php echo $article['preview']; ?></div>                
            </div>
            <div class="button_wrapper">
              <div class="button-group pull-right">
                <a href="<?php echo $article['href']; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_more; ?></span></a>
                <?php if ($article['date']) { ?>
                <button type="button" data-toggle="tooltip" title="<?php echo $article['date']; ?>"><i class="fa fa-clock-o"></i></button>
                <?php } ?>
                <button type="button" data-toggle="tooltip" title="<?php echo $article['viewed']; ?>"><i class="fa fa-eye"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
        <div class="col-sm-12 text-right pages_result"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$articles) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php if ($comments_vk) { ?>
      <div class="row">
        <div class="col-md-12">
      <div id="vk_comments"></div>
      <script type="text/javascript">
      VK.init({apiId: <?php echo $comments_vk; ?>, onlyWidgets: true});
      VK.Widgets.Comments("vk_comments", {limit: 10, attach: "*"});
      </script>
        </div>
      </div>
      <?php } ?>

      <?php if ($comments_fb) { ?>
      <div class="row">
        <div class="col-md-12">
            <div id="fb-root"></div>
      <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.10";
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>
      <div class="fb-comments" data-href="<?php echo $canonical; ?>" data-width="100%" data-numposts="10"></div>
        </div>
      </div>
      <?php } ?>

      <?php if ($comments_dq) { ?>
      <div class="row">
        <div class="col-md-12">
          <div id="disqus_thread"></div>
      <script>
      var disqus_config = function () {
        this.page.url = "<?php echo $canonical; ?>";
      };

      (function() { // DON'T EDIT BELOW THIS LINE
      var d = document, s = d.createElement('script');
      s.src = 'https://<?php echo $comments_dq; ?>.disqus.com/embed.js';
      s.setAttribute('data-timestamp', +new Date());
      (d.head || d.body).appendChild(s);
      })();
      </script>
      <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
        </div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>