$(document).ready(function() {
    // $("[rel='tooltip']").tooltip();

    $('.thumbnail').hover(
        function() {
            $(this).find('.cap-1').slideDown(250); //.fadeIn(250)
        },
        function() {
            $(this).find('.cap-1').slideUp(250); //.fadeOut(205)
        }
    );
});

// owl - carousel
$('.owl-carousel').owlCarousel({
    autoplay: true,
    items: 4,
    nav: true,
    dots: true,
    loop: true,
    margin: 10,
    stagePadding: 5,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 2
        },
        1000: {
            items: 3
        }
    }
});

//smooth scrolling the page
$('.navbar a').on('click', function(e) {
    if (this.hash !== '') {
        e.preventDefault();

        const hash = this.hash;

        $('html, body').animate({
            scrollTop: $(hash).offset().top
        }, 800);
    }
});

   function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        }
        function closeNav() {
          document.getElementById("mySidenav").style.width = "0";
          document.getElementById("main").style.marginLeft= "0";
        }