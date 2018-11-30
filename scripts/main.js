// Toggle Menu Mobile
let toggleMenu = () => {
  x.toggle("active");
};
let x = document.getElementById("vhs_header").classList;
document.getElementById("vhs_toggleNavbar").onclick = toggleMenu;
// End Toggle Menu

$(document).ready(function () {

	$('.canhcam-header-1 .search .mdi').on('click', function(e){
		e.stopPropagation();
		$('.Module-141').slideToggle(300);
	})
	// Home - Banner
	$('.vhs-banner-1 .owl-carousel').owlCarousel({
		items: 1,
		loop: true,
		dots: false,
		autoplay: true,
		smartSpeed: 1000,
		autoplaySpeed: 1000,
		autoplayTimeout: 3000,
		nav: false,
		navText: ['<img src="/Data/Sites/1/skins/default/img/sl_prev.png">','<img src="/Data/Sites/1/skins/default/img/sl_next.png">'],
		responsive: {
			992 : {
				nav: true,
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
		navText: ['<img src="/Data/Sites/1/skins/default/img/arrow-left.png">','<img src="/Data/Sites/1/skins/default/img/arrow-right.png">'],
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
		loop: true,
		dots: false,
		autoplay: true,
		smartSpeed: 1000,
		autoplaySpeed: 1000,
		autoplayTimeout: 3000,
	})



	// Gallery Side menu
	$('.gallery-side-menu .level-2 .active').parents('.has-child').addClass('active')
	// Gallery slide
	$('.vhs-gallery-1 .slide-nav .owl-carousel').owlCarousel({
		items: 2,
		margin: 20,
		URLhashListener: true,
		startPosition: 'URLHash',
		loop: true,
		dots: true,
		dotsEach: 1,
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
			992: {
				items: 3,
			}
		}
	})

	// Slide Trang Our Brand
	$(".vhs-brand-2 .brand-detail .owl-carousel").owlCarousel({
		items: 1,
		animateIn: 'fadeIn',
		animateOut: 'fadeOut',
		mouseDrag: false,
		dots: false,
		// rewind: true,
		URLhashListener: true,
	}).on('changed.owl.carousel', function(e){
		var current = e.item.index;
		$(".vhs-brand-2 .brand-nav .owl-carousel").trigger("to.owl.carousel", current);
	});

	$(".vhs-brand-2 .brand-nav .owl-carousel").owlCarousel({
		items: 3,
		center: true,
		loop: true,
		dots: false,
		nav: true,
		navText: ['<span class="lnr lnr-chevron-left"></span>','<span class="lnr lnr-chevron-right"></span>'],
		URLhashListener: true,
		smartSpeed: 500,
		autoplayTimeout: 4000,
		autoplaySpeed: 500,
		margin: 30,
		responsive: {
			576: {
				items: 3
			},
			992: {
				items: 5,
			}
		}
	}).on('click','owl-item', function(e){
		var n = e.item.index;
		$(".vhs-brand-2 .brand-nav .owl-carousel").trigger("to.owl.carousel", n);
	})
	// .on('changed.owl.carousel', function(e){
	// 	var current = e.item.index;
	// 	console.log(current)
	// 	$(".vhs-brand-2 .brand-detail .owl-carousel").trigger("to.owl.carousel", current);
	// })
	


	// Slide Trang Testimonial
	$(".vhs-testimonial-1 .owl-carousel").owlCarousel({
		items: 1,
		autoplay: true,
		autoplaySpeed: 1000,
		autoplayTimeout: 4000,
		smartSpeed: 300,
		loop: true,
		nav: true,
		navText: ['<span class="lnr lnr-arrow-left"></span>','<span class="lnr lnr-arrow-right"></span>'],
		responsive: {
			768: {
				items: 3,
				margin: -50,
				mouseDrag: false,
				center: true,
			},
			992: {
				items: 3,
				center: true,
				margin: -125,
				smartSpeed: 700,
			}
		}
	})
});