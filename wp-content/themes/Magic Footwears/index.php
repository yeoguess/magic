<?php get_header('home'); ?>
	
	<section class="section-collection" id="sec-col">
		<div class="row">
			<div class="mcol col-md-12">
				<p class="collection men">Men's <br>Collection</p>
				<a href="mens.html" class="mbutton">View All</a>
			</div>
			<div class="fcol col-md-8">
				<p class="collection women">Women's <br>Collection</p>
				<a href="womens.html" class="fbutton">View All</a>
			</div>
			<div class="kcol col-md-4">
				<p class="collection kids">Kid's <br>Collection</p>
				<a href="kids.html" class="kbutton">View All</a>
			</div>
		</div>
	</section>
	
	<div class="container">
		<div class="row">
			<section class="section-boxes">
				<div class="box"></div>
			</section>
		</div>
	</div>
	

	<div class="on-sale">
		<section><p class="lets-discuss">Now On Sale</p></section>
			<div class="row">
				<?php $new = new WP_Query(array(
					'post_type'			=> 'product',
					'posts_per_page'	=> '10',
				)); ?>

				<?php if($new->have_posts() ) : while ($new->have_posts() ) : $new->the_post(); 

					$img = get_field('upload_image');

				?>

				<div class="col-md-3">
					<img src="<?php echo $img['url']?>" alt="Flip Flop 1" class="product-image center-block">
					<p class="product-title"><?php the_title();  ?></p>
					<p class="product-price"><?php echo get_field('price'); ?></p>
					<a href="#"><button class="btn view center-block">View</button></a>
				</div>

			<?php endwhile; endif; wp_reset_query(); ?>
		</div>
	</div>





<button id="modalBtn" class="button">Click here</button>

<div id="simpleModal" class="modal">
	<div class="modal-content">
		<div class="modal-header">
			<span class="closeBtn">&times;</span>
			<h2>Career</h2>	
		</div>
		<div class="modal-body">
			<div class="container">
		<!-- <h1 class="brand"><span class="white">Career</span> @ <span class="red">Social</span> <span class="green">Aves</span></h1> -->
		<div class="wrapper animated bounceInLeft">
			<div class="company-info">
				<!-- <h3>Acme Web Design</h3>
				<ul>
					<li><i class="fa fa-road"></i> 44 London Street</li>
					<li><i class="fa fa-phone"></i> 01 - 4355678</li>
					<li><i class="fa fa-envelope"></i> test@acme.test</li>
				</ul> -->
				<div class="col-md-4 location-wrap">
                  <div class="location-block">
                        <div class=" location-box">
                        	<i class="fa fa-home"></i>
                        	<p>
                          		<a href="https://www.google.com.np/maps/place/Social+Aves/@27.67184,85.308628,17z/data=!3m1!4b1!4m5!3m4!1s0x39eb1834531b4c81:0x518579b3717c7755!8m2!3d27.6718353!4d85.3108167?hl=en" target="_blank">Jawlakhel Chowk, GPO BOX No. 8354, Lalitpur, Nepal</a>
                        	</p>
                        </div>
                        <div class=" location-box mid">
                          <i class="fa fa-phone"></i>
                          <p>
                            <a href="callto:+977-1-5537595">+977-1-5537595</a>
                          </p>
                        </div>
                        <div class=" location-box">
                          <i class="fa fa-envelope"></i>
                          <p>
                            <a href="mailto:info@socialaves.com">info@socialaves.com</a>
                          </p>
                        </div>
                    </div>
                  </div>
			</div>
			<div class="contact">
				
				<form>
					<p>
						<label>Name</label>
						<input type="text" name="name">
					</p>
					<p>
						<label>Company</label>
						<input type="text" name="company">
					</p>
					<p>
						<label>Email Address</label>
						<input type="email" name="email">
					</p>
					<p>
						<label>Phone Number</label>
						<input type="text" name="phone">
					</p>
					<p class="full">
						<label>Message</label>
						<textarea name="message" rows="5"></textarea>
					</p>
					<p>
                    	<label>Upload your CV</label>
                    	<input type="file" name"upload" required="required">
                    </p>
					<p class="full">
						<button>Submit</button>
					</p>
				</form>
			</div>
		</div>	
	</div>
		</div>
		<div class="modal-footer">
			<h3>Modal Footer</h3>
		</div>
	</div>
</div>

	


	<div class="main app form" id="main"><!-- Main Section-->
	    <div class="hero-section-1">
	      <div class="container nopadding">
	        <div class="col-md-12">
	          <div class="hero-content text-center">
	            <a href="#sec-col" class="circle" style="visibility: visible; animation-name: fadeInUp;">View All Footwear</a>
	          </div>
	        </div>
	      </div>
	    </div>
  	</div><!-- End Main Section -->

  	<div class="container">
  		<div class="row">
		<section class="section-contact">
			<p class="lets-discuss">Let's Discuss</p>
			<!-- <img src="heart.png" alt=""> -->
			<div class="col-md-3 col1">
				<h1>Connect Us</h1>
				<p>161, Santushti, Samjhana Chowk <br> Biratnagar, Nepal</p>
				<br>+(977) 98520 28083
				<br>info@magicfootwear.com.np
				<br>www.magicfootwear.com.np
			</div>
			<div class="col-md-6">
				<h1>Say hello!</h1>
				<form>
					<div class="form-row">
					    <div class="col">
					      <input type="text" class="form-control" placeholder="First name">
					    </div>
					    <div class="col">
					      <input type="text" class="form-control" placeholder="Last name">
					    </div>
				 	</div>
				</form>
			</div>
			<div class="col-md-3">
				<nav class="social">
					<ul>
						<li>
							<a href="#"><i class="fa fa-twitter"></i></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-facebook"></i></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-youtube"></i></a>
						</li>
					</ul>
				</nav>
			</div>
		</section>
		</div>
	</div>


	<div class ="acf-map">	
		<?php
			while (have_posts()) {
				the_post();
				$mapLocation = get_field( 'map_location' );
			?>
			<div class="marker" data-lat="<?php echo $mapLocation['lat']?>" data-lng="<?php echo $mapLocation['lng']; ?>"></div>
		<?php }
		echo paginate_links();
		?>
	</div><!-- End acf-map -->

<?php get_footer(); ?>