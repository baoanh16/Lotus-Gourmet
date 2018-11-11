// Toggle Menu Mobile
let toggleMenu = () => {
  x.toggle("active");
};
let x = document.getElementById("vhs_header").classList;
document.getElementById("vhs_toggleNavbar").onclick = toggleMenu;
// End Toggle Menu

$(document).ready(function () {
	// Home Banner
	$('.vhs-home-1 .owl-carousel').owlCarousel({
		items: 1,
		dots: true,
	})
});