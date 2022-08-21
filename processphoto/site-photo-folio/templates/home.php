<?php

include("./head.inc"); ?>
<div class="page-header d-flex align-items-center">
      <div class="container position-relative">
        <div class="row d-flex justify-content-center">
          <div class="col-lg-6 text-center">
            <p><?php echo $page->summary;  ?></p>
            <a class="cta-btn" href="<?php echo $config->urls->contat?>contact">Available for hire</a>
          </div>
        </div>
      </div>
    </div><!-- End Page Header -->
<!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container-fluid">
          <div class="row gy-4 justify-content-center">
                  <?php $gale = $pages->get("/galery/")->children->find("limit=8");
                    foreach ($gale as $key) {
                    $image = $key->images;
                    if($image) {
                    $thumb = $image;?>
                  <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="gallery-item h-100">
                      <?php echo "<img  class='img-fluid' src='$thumb->url' alt='$image->description'>";   ?>
                      <div class="gallery-links d-flex align-items-center justify-content-center">
                        <?php echo "<a href='$image->url'><img  class='glightbox preview-link' src='$thumb->url' alt='$image->description' title='Gallery 1'><i class='bi bi-arrows-angle-expand'></i></a>"; } ?>
                        <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
                      </div>
                  </div>
            </div><!-- End Gallery Item -->
          <?php } ?>
        </div>
      </div>
    </section><!-- End Gallery Section -->
  </main><!-- End #main -->
<?php include("./foot.inc"); ?>

