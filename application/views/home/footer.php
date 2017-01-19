</main>
    <!-- start footer -->
  <footer class="main-footer js-main-footer">
  <div class="main-footer__top">
    <div class="container">
      <div class="main-footer__row">
        <div class="main-footer__item">
          <h3 class="main-footer__header">About us</h3>
          <p class="main-footer__text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in massa vitae eros elementum ullamcorper in quis quam. Integer id magna non tellus consequat rutrum et in sem. Fusce vulputate ornare pulvinar.</p>
        </div>
        <div class="main-footer__item">
          <h3 class="main-footer__header">Contacts</h3>
          <div class="contacts t-in-footer">
            <a class="contacts__link" href="tel:+62 813-7433-7070">+62 813-7433-7070</a>
            <a class="contacts__link" href="mailto:admin@atletnasional.com">admin@atletnasional.com</a>
            <a class="contacts__link" href="addr:">Kompleks PT. Semen Indonesia (Persero) Tbk.,</a>
            <a class="contacts__link" href="addr:">Jl. Veteran, Sidokumpul, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61122, Indonesia.</a>
          </div>
        </div>
        <div class="main-footer__item">
          <h3 class="main-footer__header">Quick Link</h3>
            <a class="main-footer__text" href="#"> About Us</a>
            <a class="main-footer__text" href="#"> Disclaimer</a>
            <a class="main-footer__text" href="#"> Terms & Conditions</a>
            <a class="main-footer__text" href="#"> Privacy Policy</a>
        </div>
        <div class="main-footer__item">
          <h3 class="main-footer__header">Newsletter</h3>
          <p class="main-footer__text">No spam. Only fresh news, awesome offers and information in your mailbox.</p>
          <form id="footerForm" class="main-footer__subscribe-form" action="#" method="get">
            <label for="user-email" class="visuallyhidden">Enter your email</label>
            <input id="user-email" type="email" name="email" value="" placeholder="E-mail" required>
            <label for="submit"></label>
            <input id="submit" type="submit" class="visuallyhidden">
          </form>
        </div>
<!--         <div class="main-footer__item">
          <h3 class="main-footer__header">Consultation</h3>
          <p class="main-footer__text">Want to fix your car? Fill appointment form for free and you’re done!</p>
          <button form="footerForm" class="main-footer__link-button   button button__primary" href="#"><span>BOOK FREE APPOINTMENT</span></button>
        </div> -->
      </div>
    </div>
  </div>
  <hr>
  <div class="main-footer__bottom">
    <div class="container">
      <div class="main-footer__row">
        <p class="main-footer__copyright">ATLET NASIONAL © 2016. All Rights Reserved</p>
        <div class="main-footer__socials">
          <ul class="socials t-in-footer">
            <li class="socials__item"><a href="#" class="socials__link">Fb<i class="mdi mdi-facebook"></i></a></li>
            <li class="socials__item"><a href="#" class="socials__link">Twitter<i class="mdi mdi-twitter"></i></a></li>
            <li class="socials__item"><a href="#" class="socials__link">Google+<i class="mdi mdi-google-plus"></i></a></li>
            <li class="socials__item"><a href="#" class="socials__link">RSS<i class="mdi mdi-rss"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- end footer -->


    <div id="loader-wrapper">
        <div id="loader"></div>
    </div>
    <!-- inject:js -->
    <script src="<?php echo base_url();?>assets/components/jquery.min.js"></script>
    <script src="<?php echo base_url();?>assets/components/approve.js"></script>
    <script src="<?php echo base_url();?>assets/components/bootstrap.min.js"></script>
    <script src="<?php echo base_url();?>assets/components/ev-emitter.js"></script>
    <script src="<?php echo base_url();?>assets/components/imagesloaded.pkgd.min.js"></script>
    <script src="<?php echo base_url();?>assets/components/lightgallery.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/bootstrap-select.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/jquery-ui.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/jquery.mobile.custom.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/jquery.timepicker.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/owl.carousel.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/scripts.js"></script>
    <!-- endinject -->

    <!-- Google map -->
    <script>
      function initMap() {

        var mapDiv = document.getElementById('contacts-map');
        if (!mapDiv) return;

        var locations = [
          ['Here!', -7.175617, 112.649193, 1]
        ];

        var map = new google.maps.Map(mapDiv, {
          zoom: 15,
          center: new google.maps.LatLng(-7.175617, 112.649193),
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          scrollwheel: false
        });

        var infowindow = new google.maps.InfoWindow();

        var marker, i;

        for (i = 0; i < locations.length; i++) {
          marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map
          });

          google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
              infowindow.setContent(locations[i][0]);
              infowindow.open(map, marker);
            }
          })(marker, i));
        }
      }
    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDRUJAkaNcNU-g50mQtp1hzVC90nhT-zcg&amp;callback=initMap">
    </script>

</body>
</html>
