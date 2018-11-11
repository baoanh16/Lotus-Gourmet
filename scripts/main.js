// Toggle Menu Mobile
let toggleMenu = () => {
  x.toggle("active");
};
let x = document.getElementById("vhs_header").classList;
document.getElementById("vhs_toggleNavbar").onclick = toggleMenu;
// End Toggle Menu

$(document).ready(function () {
	// Home - Banner
	$('.vhs-home-1 .owl-carousel').owlCarousel({
		items: 1,
		loop: true,
		dots: false,
		autoplay: true,
		smartSpeed: 1000,
		autoplaySpeed: 1000,
		autoplayTimeout: 3000,
		responsive: {
			992 : {
				dots: true,
			}
		}
	})
	// Home - Lastest News
	$('.vhs-home-4 .owl-carousel').owlCarousel({
		items: 1,
		dots: true,
		margin: 20,
		nav: true,
		navText: ['<img src="../img/arrow-left.png">','<img src="../img/arrow-right.png">'],
		loop: true,
		dots: false,
		autoplay: true,
		smartSpeed: 1000,
		autoplaySpeed: 1000,
		autoplayTimeout: 3000,
		responsive: {
			576 : {
				items: 2,
			},
			768: {
				items: 3,
			}
		}
	})
	$('.vhs-home-6 .owl-carousel').owlCarousel({
		items: 2,
		margin: 20,
		responsive: {
			530: {
				items: 3
			},
			768 : {
				items: 4
			},
			992: {
				items: 5
			}
		}
	})
});