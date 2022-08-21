<?php include("./head.inc"); ?>
<!-- ======= Gallery Single Section ======= -->
<section id="gallery-single" class="gallery-single">
      <div class="container">
        <div class="position-relative h-100">
          <div class="slides-1 portfolio-details-slider swiper">
            <div class="swiper-wrapper align-items-center">
           <?php  $single = $page->rep_galery;
                 foreach($single as $sing){ ;?>
                <div class="swiper-slide">
                  <?php $img = $sing->galery_image;
                if($img) {                        
                  echo "<img class='img-fluid details-link' src='$img->url' alt='$img->description'>"; 
                  } ?>
                </div>
            <?php } ?>
            <div class="swiper-pagination"></div>
          </div>
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
        </div>
        <div class="row justify-content-between gy-4 mt-4">
          <div class="col-lg-8">
            <div class="portfolio-description">
            <?php
              echo "<h2>$page->hedline</h2>";
               echo   "<p>$page->body</p>";?>
           </div>
      </div>
    </section><!-- End Gallery Single Section -->
    </main><!-- End #main -->

<?php include("./foot.inc"); ?>
