<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php wp_head(); ?>
</head>
<body>

<div class="wrapper">
	<div class="container">
	    <nav class="navbar navbar-default navbar-fixed-top">
	      <div class="container"> 
		        <div class="navbar-header page-scroll">
		          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
		          <a class="navbar-brand page-scroll" href="#main"><img src="<?php echo get_theme_file_uri('/img/logo.png'); ?>" width="80" height="30" alt="iLand" /></a>
		      	</div><!-- End navbar-header page-scroll -->
		        
		        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
		        	<!-- Collect the nav links, forms, and other content for toggling -->
	                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                    <ul class="nav navbar-nav navbar-right">
	                        <?php wp_nav_menu( array(
	                            'menu'              => 'primary',
	                            'theme_location'    => 'primary',
	                            'depth'             => 2,
	                            'container'         => 'div',
	                            'container_class'   => 'collapse navbar-collapse',
	                            'container_id'      => 'bs-example-navbar-collapse-1',
	                            'menu_class'        => 'nav navbar-nav',
	                            'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
	                            'walker'            => new wp_bootstrap_navwalker())
	                            );
	                        ?>
	                    </ul>
	                </div>
		        </div><!-- End collapse navbar-collapse navbar-right -->
	      </div><!-- End container -->
	    </nav><!-- End navbar navbar-default navbar-fixed-top -->
	</div><!-- End Container -->
  
	<!-- Main Section -->
	<div class="main app form" id="main">
    	<div class="hero-section">
      		<div class="container nopadding">
        		<div class="col-md-12">
          			<div class="hero-content text-center">
            			<a href="#sec-col" class="btn btn-action wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">View All</a>
          			</div><!-- End hero-content text-center -->
       			</div><!-- End col-md-12 -->
      		</div><!-- End container nopadding -->
    	</div><!-- End hero-section -->
	</div><!-- End Main Section -->
</div><!-- End Wrapper--> 