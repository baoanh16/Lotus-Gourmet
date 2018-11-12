// Toggle Menu Mobile
let toggleMenu = () => {
  x.toggle("active");
};
let x = document.getElementById("vhs_header").classList;
document.getElementById("vhs_toggleNavbar").onclick = toggleMenu;
// End Toggle Menu

$(document).ready(function () {
	// Home - Banner
	$('.vhs-banner-1 .owl-carousel').owlCarousel({
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
	$('.vhs-home-3 .owl-carousel').owlCarousel({
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
	// Home - Partners
	$('.vhs-home-5 .owl-carousel').owlCarousel({
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
	// Banner trang con

	$('.vhs-banner-2 .owl-carousel').owlCarousel({
		items: 1,
		loop: false,
		dots: false,
		autoplay: true,
		smartSpeed: 1000,
		autoplaySpeed: 1000,
		autoplayTimeout: 3000,
	})

	// Gallery slide
	$('.vhs-gallery-1 .slide-nav .owl-carousel').owlCarousel({
		items: 2,
		margin: 20,
		URLhashListener: true,
		startPosition: 'URLHash',
		loop: true,
		responsive: {
			576: {
				items: 3,
			}
		}
	})
	$('.vhs-gallery-1 .slide-for .owl-carousel').owlCarousel({
		items: 1,
		animateIn: 'fadeIn',
		animateOut: 'fadeOut',
		mouseDrag: false,
		touchDrag: false,
		dots: false,
		nav: false,
	})
	$('.vhs-gallery-1 .slide-nav .item').each(function() {
		$(this).on('click', function(){
			$('.vhs-gallery-1 .slide-nav .item').not(this).removeClass('active')
			$(this).addClass('active')
		})
	});

	// Gallery toggle Side Menu
	$('.vhs-gallery-1 .main-title').on('click', () =>{
		$('.vhs-gallery-1 .gallery-side-menu').toggleClass('active')
	})

	$('.vhs-gallery-1 .gallery-side-menu .has-child').on('click', function(e){
		e.stopPropagation()
		$(this).toggleClass('active')
		$('.vhs-gallery-1 .gallery-side-menu .has-child').not(this).removeClass('active')
		$('.vhs-gallery-1 .gallery-side-menu .has-child').not(this).children('.level-2').slideUp()
	})


	//Slide trang news
	$('.vhs-news-1 .owl-carousel').owlCarousel({
		items: 1,
		dots: true,
		loop: true,
		dotsEach: 1,
		margin: 20,
		responsive: {
			500:{
				items: 2
			},
			768: {
				items: 3,
			}
		}
	})
});