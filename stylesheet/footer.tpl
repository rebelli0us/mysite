<footer class="main-footer">
  <div class="container">
    <div class="row">      
      <div class="col-sm-4">
        <ul>
          <li class="footer-title">Зв'язатися з нами</li>
          <li class="footer-phone">т. +380931539000</li>
          <li class="footer-phone">т. +380968176691</li>
          <li class="footer-email"><a href="mailto:info@feet.in.ua">info@feet.in.ua</a></li>
          <li><a href="#callback" class="callback">Замовити дзвінок</a></li>
          <li><a href="#ask-us" class="ask-us">Задати питання</a></li>
          <li class="footer-title">Ми працюємо</li>
          <li>пн - пт з 9:00 до 17:00</li>
          <li>сб - нд з 10:00 до 17:00</li>
          <li>Замовлення онлайн приймаються цілодобово</li>
          <li class="footer-title">Соціальні мережі</li>
          <ul class="social-top social-bottom">
            <li class="social">
              <a href="https://www.instagram.com/feet.in.ua/?hl=ru" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </li>          
            <li class="social">
              <a href="https://www.facebook.com/groups/135667733889772/?source=create_flow" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            </li>
          </ul>
        </ul>
      </div>
      <div class="col-md-4">
        <ul>
          <li class="footer-title">Корисна інформація</li>
          <li><a href="http://feet.in.ua/about-us">Про нас</a></li>
          <li><a href="http://feet.in.ua/dostavka-ta-oplata">Доставка та оплата</a></li>
          <li><a href="http://feet.in.ua/obmin">Повернення та обмін</a></li>
          <li><a href="http://feet.in.ua/spivpracja">Співпраця</a></li>
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>">Карта сайту</a></li>
        </ul>
      </div>
      <div class="col-md-4">
        <ul>
          <li class="footer-title">Питання та відповіді </li>
          <li><a href="http://feet.in.ua/jak-zamovyty-tovar/">Як замовити товар на сайті?</a></li>
          <li><a href="http://feet.in.ua/dostavka-ta-oplata/">Як оплатити замовлення?</a></li>
          <li><a href="http://feet.in.ua/rozmir-odjagu/">Як правильно обрати розмір одягу?</a></li>
          <li><a href="http://feet.in.ua/rozmir-vzuttja/">Як правильно обрати розмір взуття?</a></li>
          <li class="footer-title">Ми приймаємо</li>
          <li class="methods"><img src="catalog/view/theme/sundel/image/pay.png" alt="Методи оплати замовлення на саті"></li>
        </ul>
      </div>

    </div>
    <p class="copy text-center">Інтернет-магазин одягу та взуття feet.in.ua © 2017 | Всі права захищено</p>
  </div>
</footer>
  
<div class="hidden">
  <div id="callback" class="callback-form product-popup">
    <h2>Замовити дзвінок</h2>
    <p>Вкажіть номер телефону і ми Вам зателефонуємо!</p>
    <form class="ajax-form">
      <input type="hidden" name="project_name" value="feet.in.ua">
      <input type="hidden" name="admin_email" value="info@feet.in.ua">
      <input type="hidden" name="form_subject" value="Перезвоните мне!">
      <input class="form-control" type="tel" pattern="[0-9]{10,12}" name="Телефон" placeholder="Вкажіть номер телефону..." required>
      <button class="btn btn-primary">Передзвоніть мені!</button>
    </form>
    <div class="success">Дякуємо!<br>Очікуйте дзвінок нашого менеджера</div>
  </div>
  <div id="ask-us" class="ask-us-form product-popup">
    <h2></h2>
    <p>Будь ласка, опишіть своє питання і наш менеджер відповість Вам протягом <strong>15 хвилин</strong>.</p>      
    <form class="ajax-form">      
      <input type="hidden" name="project_name" value="feet.in.ua">
      <input type="hidden" name="admin_email" value="info@feet.in.ua">
      <input type="hidden" name="form_subject" value="Форма на сайте">      
      <input class="form-control" type="email" name="Email" placeholder="Ваш email..." required>
      <div class="form-group">
        <textarea name="text" class="form-control" id="user-comment" rows="3" placeholder="Будь ласка, опишіть своє питання..." required></textarea>
      </div>
      <button class="btn btn-primary">Відправити</button>
    </form>
    <div class="success">Дякуємо!<br>Очікуйте відповідь на вказаний Вами email</div>
  </div>
</div> 
</body>
<script src="catalog/view/theme/sundel/libs/equalheights/equalheights.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>
<script src="catalog/view/theme/sundel/js/theme.js" type="text/javascript"></script>
</html>