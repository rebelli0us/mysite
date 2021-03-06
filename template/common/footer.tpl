<footer class="main-footer">
	<div class="container footer-container">
		<div class="row">
			<div class="col-md-6 first_column">
				<ul class="footer_contact">
					<li class="footer-title first-title">Связаться с нами:</li>
					<li class="footer-email"><a href="mailto:hello@locco.me">hello@locco.me</a></li>
				</ul>
				<div class="locco_wrapper">
					<span class="footer_logo"></span>
					<p>Сервис перевода по запросу для социальных сетей <strong>locco</strong>.me.</p>
				</div>
				<div class="payment_methods">
					<div class="methods_wrapper">
						<img src="catalog/view/theme/mytheme/image/visa.png" alt="Visa" class="visa_card img-responsive">
						<img src="catalog/view/theme/mytheme/image/mastercard.png" alt="MasterCard" class="mastercard img-responsive">
					</div>
					<p>К оплате принимаются международные платежные карты систем Visa и MasterCard любого банка</p>
				</div>					
			</div>
			<div class="col-md-3 second_column">
				
				<ul>
					<li class="footer-title">Полезные ссылки:</li>
					<?php foreach ($informations as $information) { ?>
					<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
					<?php } ?>
					<li><a href="/locco/index.php?route=product/category&path=59">Планы подписки</a></li>
					<li><a href="/locco/index.php?route=newsblog/category&newsblog_path=9">Блогго</li>
					<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></li>
					<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
					<li><a href="<?php echo $sitemap; ?>">Карта сайтa</a></li>
				</ul>
			</div>
			<div class="col-md-3">				
				<ul>
					<li class="footer-title">F.A.Q.:</li>
					<li><a href="/locco/index.php?route=extension/module/faq#collapse1" target="_blank">Что такое локализация?</a></li>
					<li><a href="/locco/index.php?route=extension/module/faq#collapse2" target="_blank">Что такое перевод по запоросу?</a></li>
					<li><a href="/locco/index.php?route=extension/module/faq#collapse3" target="_blank">Как оформить подписку на сервис?</a></li>
					<li><a href="/locco/index.php?route=extension/module/faq#collapse4" target="_blank">Как оплатить услугу?</a></li>
					<li><a href="/locco/index.php?route=extension/module/faq#collapse5" target="_blank">Кто делает перевод?</a></li>
					<li><a href="/locco/index.php?route=extension/module/faq#collapse6" target="_blank">На какие языки есть перевод?</a></li>
					<li><a href="/locco/index.php?route=extension/module/faq#collapse7" target="_blank">Как попасть в команду locco.me?</a></li>
				</ul>
			</div>
		</div>
		<p class="copyright">© 2017 locco.me - Cервис переводчик для социальных сетей | Все права защищены</p>
	</div>
</footer>
<a href="#top_section" class="scroll_btn animated"></a>
</body>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js"></script>
</html>