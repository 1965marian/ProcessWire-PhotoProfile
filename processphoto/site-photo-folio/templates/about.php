<?php

include("./head.inc"); ?>

<!-- ======= About Section ======= -->
<section id="about" class="about">
      <div class="container">

        <div class="row gy-4 justify-content-center">
          <div class="col-lg-4">
            <?php
            $image = $page->images;
            if($image) {
            $thumb = $image;
            echo "<a href='$image->url'><img class='img-fluid' src='$thumb->url' alt='$image->description'></a>";} ?>
          </div>
          <div class="col-lg-5 content">
            <h2><?php echo $page->headline;?></h2>
            <p class="fst-italic py-3">
            <?php echo $page->summary;?>
            </p>
            <div class="row">
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Birthday:</strong> <span><?php echo $page->birthday;?></span></li>
                  
                  <li><i class="bi bi-chevron-right"></i> <strong>Phone:</strong> <span><?php echo $page->phone;?></span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>City:</strong> <span><?php echo $page->city;?></span></li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>PhEmailone:</strong> <span><?php echo $page->email;?></span></li>
                  
                </ul>
              </div>
            </div>
            <p class="py-3">
            <?php echo $page->body;?>
            </p>
          </div>
        </div>
      </div>
    </section><!-- End About Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="section-header">
          <h2>Testimonials</h2>
          <p>What they are saying</p>
        </div>
        
        <div class="slides-3 swiper">
          <div class="swiper-wrapper">
                        <?php
                        $tests = $page->rep_testimonial;
                        foreach($tests as $test){ ;?>
               <div class="swiper-slide">            
                     <div class="testimonial-item">
                    <p><?php echo $test->text_testimonial; ?></p>

                     <div class="profile mt-auto">
                        <?php $img = $test->testimonial_image;
                        if($img) {
                        
                        echo "<a href='$img->url'><img class='testimonial-img' src='$img->url' alt='$img->description'></a>"; 
                        } ?>
                       <h3><?php echo $test->name_testimonial; ?></h3>                   
                    </div>
                </div>
               </div><!-- End testimonial item -->
            <?php }; ?>
         </div>
        <div class="swiper-pagination"></div>
    </div>

    </div>
</section><!-- End Testimonials Section -->
</main><!-- End #main --> 
<?php include("./foot.inc"); ?>