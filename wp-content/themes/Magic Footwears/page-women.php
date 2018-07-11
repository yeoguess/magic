<?php get_header(); ?>

	<div class="womens-banner">
		<img src="<?php echo get_theme_file_uri('/img/woman-banner.jpg'); ?>" alt="Mens Footwear" style="width:100%">
		<p class="Mens">Women's <br>Collection</p>
	</div>
	
	<div class="main-tagline">
		<div class="before-tagline1"></div>

		<div class="before-tagline"></div>

		<div class="tagline">Bringing it since the 80's</div>
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
	
	<div class="magical-summer">
		<img src="<?php echo get_theme_file_uri('/img/sumer-magical.png'); ?>" alt="Magical Summer" style="width:100%">
		<div class="heading">Magical Summer</div>
		<div class="info">Don't let your summer pass without Magic Footwear</div>
	</div>

	<div class="on-sale">
		<section><p class="lets-discuss">You May Also Like</p></section>
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
	

<?php get_footer(); ?>