<?php get_header(); ?>

	<div class="container" id="about-main">
	<section class="about">
		<h1 class="about-h1">About Us</h1>
		<div class="col-md-9 about-us">	
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure repellat consequuntur dolorum, magnam alias aperiam ex doloremque itaque nulla quae aspernatur nam ipsa neque officiis officia id possimus distinctio est temporibus atque, beatae! Molestiae odit quibusdam nihil, labore nisi pariatur, accusamus vitae facere ipsa earum repellendus rem rerum officia ea quia eum quam quisquam. Magnam quod dolor voluptatem ipsa doloribus illum aliquid officia blanditiis cumque harum animi suscipit alias, dolore est iusto eligendi eius? Nemo alias molestias ipsum aperiam maiores consectetur labore beatae in asperiores voluptatum omnis eius ea quas veniam accusamus optio, possimus distinctio hic magnam illo non assumenda, porro. Necessitatibus, tempora. Laudantium velit quasi quos expedita mollitia, perferendis voluptas inventore accusantium excepturi. Amet, ea numquam autem accusamus in aut illo? Soluta, earum enim!</p>
		</div>
		<div class="col-md-3">
			<img src="<?php echo get_theme_file_uri('/img/about.png'); ?>" alt="" class="about-img">
		</div>
		<div class="col-md-12 social-media-icons clearfix">
			<i class="fa fa-facebook" aria-hidden="true"></i>
			<i class="fa fa-twitter" aria-hidden="true"></i>
			<i class="fa fa-instagram" aria-hidden="true"></i>
			<i class="fa fa-youtube" aria-hidden="true"></i>
			<p class="footerheading">Available On</p>
			<img src="<?php echo get_theme_file_uri('/img/googlePlay.png'); ?>" class="g-play"><br>
		</div>
		<div class="col-md-12">
			<img src="<?php echo get_theme_file_uri('/img/phone.png'); ?>" alt="" class="phone-img">
		</div>
	</section>
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


<?php get_footer(); ?>