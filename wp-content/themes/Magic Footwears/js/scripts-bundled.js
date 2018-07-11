
		function initMap() {
			var location = {lat: 23.849325, lng: 72.126626};
			var map = new google.maps.Map(document.getElementById("map"), {
				zoom: 4,
				center: location 
			});
			var marker = new google.maps.Marker({
				position: location,
				map: map
			});
		}


		// Our modules / classes
// import GoogleMap from './modules/GoogleMap';

// Instantiate a new object using our modules / classes
// var googleMap = new GoogleMap();



// Get modal element
var modal = document.getElementById('simpleModal');

// Get open modal button
var modalBtn = document.getElementById('modalBtn');

// Get close button
var closeBtn = document.getElementsByClassName('closeBtn')[0];

// Listen for open click
modalBtn.addEventListener('click', openModal);

// Listen for close click
closeBtn.addEventListener('click', closeModal);

// Listen for outside click
window.addEventListener('click', outsideClick);

// Function to open modal
function openModal() {
	modal.style.display = 'block';
}

// Function to close modal
function closeModal() {
	modal.style.display = 'none';
}

// Function to close modal if clicked outside
function outsideClick(e) {
	if(e.target == modal) {
		modal.style.display = 'none';
	}
}


