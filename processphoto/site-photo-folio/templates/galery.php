<?php include("./head.inc"); ?>

    <!-- ======= Gallery Section ======= -->
<section id="gallery" class="gallery">
      <div class="container-fluid">
          <div class="row gy-4 justify-content-center">
                  <?php $gale = $pages->get("/galery/")->children->find("limit=8");
                    foreach ($gale as $key) {
                    $image = $key->images;
                    if($image) {
                    $thumb = $image;?>
                <div class="col-xl-3 col-lg-4 col-md-6 text-center">
                     <?php echo "<a href=' {$key->url}' class='details-link titlu'><i class='bi bi-link-45deg'></i>  $key->title</a>"; ?>
                <div class="gallery-item h-100">
                
                      <?php echo "<img  class='img-fluid' src='$thumb->url' alt='$image->description'>";   ?>
                <div class="gallery-links d-flex align-items-center justify-content-center">
                      <?php echo "<a href='$image->url'><img  src='$thumb->url' class='glightbox preview-link' alt='$image->description'><i class='bi bi-arrows-angle-expand'></i></a>"; }  ?>
              </div>
            </div>
          </div><!-- End Gallery Item -->
        <?php } ?>
      </div>
    </div>
   </section><!-- End Gallery Section -->
   </main><!-- End #main -->
    <?php include("./foot.inc"); ?>