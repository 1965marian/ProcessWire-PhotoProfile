<?php
/**
 * Demo site header include file (HTML5)
 *
 * Note that this file has nothing to do with ProcessWire. We just split our common 
 * header and footer markup into separate files (head.inc and foot.inc) like this, 
 * since it was common to all of our templates. 
 *
 */
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />

	<title><?php echo $page->get("headline|title"); ?></title>

	<meta name="description" content="<?php echo $page->summary; ?>" />

	<meta name="generator" content="ProcessWire <?php echo $config->version; ?>" />
     <?php echo $page->seo;?>
	 
	 <?php $opts = $pages->get("/option/");?>
	
		<!-- Favicons -->
		<link rel="shortcut icon" href="<?=$opts->favicon->url?>" rel="icon">

		<link href="<?php echo $config->urls->templates?>assets/img/apple-touch-icon.png" rel="apple-touch-icon">

		<!-- Google Fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

		<!-- Vendor CSS Files -->
		<link href="<?php echo $config->urls->templates?>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="<?php echo $config->urls->templates?>assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
		<link href="<?php echo $config->urls->templates?>assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
		<link href="<?php echo $config->urls->templates?>assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
		<link href="<?php echo $config->urls->templates?>assets/vendor/aos/aos.css" rel="stylesheet">

		<!-- Template Main CSS File -->
		<link href="<?php echo $config->urls->templates?>assets/css/main.css" rel="stylesheet">

        <?php 
	    // JS SCRIPTS AND STYLE CSS WILL ONLY LOADED ON THE CONTACT PAGE
	         if ($page->template->name == 'contact'): ?>

           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
           <link href="<?php echo $config->urls->templates?>styles/form-style.css" rel="stylesheet">

           <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
           <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>

           <script type="text/javascript">
           //VALIDATION
           $(function () {
                 $.validate({
                   lang: 'en'
                 });
           })

           // input
            $(".input-contact input, .textarea-contact textarea").focus(function () {
                $(this).next("span").addClass("active");
            });
            $(".input-contact input, .textarea-contact textarea").blur(function () {
                if ($(this).val() === "") {
                    $(this).next("span").removeClass("active");
                }
           });
           </script>

  <?php endif; ?>


</head>
<body>

	<a href="#bodycopy" class="visually-hidden element-focusable bypass-to-main">Skip to content</a>

	<p id='bgtitle'><?php 

		// print the section title as big faded text that appears near the top left of the page
		echo $page->rootParent->title; 

	?></p>	
 <!-- ======= Header ======= -->
 <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <a href="<?=$config->urls->root?>" class="logo d-flex align-items-center  me-auto me-lg-0">
        
		<?php if ($opts->logo): ?>
           <img src="<?=$opts->logo->url?>" alt="logo">
                 <?php else: ?>
             <h1><?=$opts->text_logo?></h1>
        <?php endif; ?>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
		<?php
			
			// Create the top navigation list by listing the children of the homepage. 
			// If the section we are in is the current (identified by $page->rootParent)
			// then note it with <a class='on'> so we can style it differently in our CSS
			// and add a text that is visually hidden, but available for screen readers.
			// In this case we also want the homepage to be part of our top navigation, 
			// so we prepend it to the pages we cycle through:
			
			$homepage = $pages->get("/"); 
			$children = $homepage->children;
			$children->prepend($homepage); 
	
			foreach($children as $child) {
				if ($child === $page->rootParent) {
					$class = " class='on'";
					$indicator = "<span class='visually-hidden'>Current page: </span>";
					$ariaState = " aria-current='true' ";
				}
			$class = $child === $page->rootParent ? " class='on'" : '';
				echo "<li><a  href='{$child->url}'>{$child->title}</a></li>";
			}
          if($page->editable()) {
		echo "<li><a class='nav text-center' id='editpage' href='{$config->urls->admin}page/edit/?id={$page->id}'>Edit</a></li>"; 
	}
		?>
        </ul>
      </nav><!-- .navbar -->
     

      <div class="header-social-links">
	  <?php foreach($opts->rep_media as $key){ 
       echo "<a href='$key->media_url' target='blank'><i class='{$key->media_icon->title}' ></i></a>";
        
		} ?>
      </div>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
    </div>
  </header><!-- End Header -->
	
	<!-- ======= Hero Section ======= -->
	<section id="hero" class="hero d-flex flex-column justify-content-center align-items-center" data-aos="fade" data-aos-delay="1500">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6 text-center">
          <h2><?php echo $page->title;?></h2>
          <p><?php echo $page->headline;?></p>
          
        </div>
      </div>
    </div>
	
  </section><!-- End Hero Section -->

  <main id="main" data-aos="fade" data-aos-delay="1500">

