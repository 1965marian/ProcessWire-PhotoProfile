
 <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>MC</span></strong>. 
      </div>
      <div class="credits">
            Powered by <a href="https://processwire.com/" target="blank">ProcessWire</a>
      <div>
        <?php foreach($opts->rep_media as $key){ 
          echo "<a href='$key->media_url' target='blank' class='media'><i class='{$key->media_icon->title}' ></i></a>";
         } ?>
     </div>
      </div>
    </div>
  </footer><!-- End Footer -->
  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <div id="preloader">
    <div class="line"></div>
  </div>
<!-- Vendor JS Files -->
  <script src="<?php echo $config->urls->templates?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo $config->urls->templates?>assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="<?php echo $config->urls->templates?>assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="<?php echo $config->urls->templates?>assets/vendor/aos/aos.js"></script>
  <script src="<?php echo $config->urls->templates?>assets/vendor/php-email-form/validate.js"></script>
  <!-- Template Main JS File -->
  <script src="<?php echo $config->urls->templates?>assets/js/main.js"></script>
</body>
</html>
