	<footer class="footer">
	<div class="row">
		<div class="col-md-3 footer-1">
			<img src="<?php echo get_theme_file_uri('/img/logo.png'); ?>" >
		
			<p class="about-magic">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum necessitatibus ut sed nemo deserunt iste ullam quia, voluptas architecto accusamus. Libero molestiae ipsam omnis, suscipit similique numquam eaque quibusdam nihil.
			</p>
		</div>

		<div class="col-md-3 footer-2">
			<p class="footerheading">Subscribe</p>
			<input type="text">
			<p class="subscribe">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam quos aliquam debitis ipsa ducimus culpa cum nostrum voluptatem vero.</p>
		</div>

		<div class="col-md-3 footer-3">
			<p class="footerheading">Explore</p>
			<!-- <ul class="footer-list">
				<li>Home</li>
				<li>Men</li>
				<li>Women</li>
				<li>Kid</li>
				<li>Contact Us</li>
			</ul> -->
			<?php if(is_active_sidebar('footer3')) : ?>
                            <?php dynamic_sidebar('footer3'); ?>
                        <?php endif; ?>
		</div>

		<div class="col-md-3 footer-4">
			<p class="footerheading">Available On</p>
			<img src="<?php echo get_theme_file_uri('/img/googlePlay.png'); ?>" style="height: 40px; width: 110px"><br>
			<p class="footerheading">&copy; 2018 Social Aves. All Rights Reserved.</p> 
		</div>
	</div>
</footer>

<script>
	function initMap() {
		// Map options
		var options = {
			zoom: 13,
			center: {lat:27.6644,lng:85.3188}
		}

		// New Map
			var map = new
			google.maps.Map(document.getElementById('map'),options);

		// Listen for click on map
		google.maps.event.addListener(map, 'click',
			function(event) {
			// Add marker
			addMarker({coords:event.latLng});
		});

		// Array of markers

		var markers = [{
					coords:{lat:27.6660,lng:85.3227},
					iconImage:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
					content:'<h1>Magic Ko Pasal</h1>'
				},
				{
					coords:{lat:27.6791,lng:85.3214},
					content:'<h1>Patan</h1>'
				},
				{
					coords:{lat:27.6744,lng:85.3123}
				}
			];

		// Loop through markers
		for(var i = 0; i < markers.length; i++) {
			// Add marker
			addMarker(markers[i]);
		}

		// Add Marker Function
		function addMarker(props) {
				var marker = new google.maps.Marker({
				position:props.coords,
				map:map,
				// icon:props.iconImage
			});

				// Check custom icon
				if(props.iconImage) {
					// Set icon image
					marker.setIcon(props.iconImage);
				}

				// Check content 
				if(props.content) {
					var infoWindow = new google.maps.InfoWindow({
					content:props.content
				});

					marker.addListener('click', function() {
					infoWindow.open(map, marker)
				});
				}
		}
	}
</script>





<?php wp_footer(); ?>

</body>
</html>