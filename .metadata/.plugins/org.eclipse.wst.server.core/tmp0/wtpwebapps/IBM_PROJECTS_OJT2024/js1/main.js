(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    
    
    // Initiate the wowjs
    new WOW().init();


    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 200) {
            $('.sticky-top').addClass('shadow-sm').css('top', '0px');
        } else {
            $('.sticky-top').removeClass('shadow-sm').css('top', '-100px');
        }
    });
    
    // Voice Search
    document.addEventListener('DOMContentLoaded', function () {
        const searchForm = document.getElementById('search-form');
        const searchInput = document.getElementById('search-input');
        const voiceSearchButton = document.getElementById('voice-search-button');
    
        // Handle form submission
        searchForm.addEventListener('submit', function (event) {
            event.preventDefault();
            performSearch(searchInput.value);
        });
    
        // Voice search functionality
        voiceSearchButton.addEventListener('click', function () {
            const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();
            recognition.lang = 'en-US';
            recognition.interimResults = false;
            recognition.maxAlternatives = 1;
    
            recognition.start();
    
            recognition.onresult = function (event) {
                const speechResult = event.results[0][0].transcript;
                searchInput.value = speechResult;
                performSearch(speechResult);
            };
    
            recognition.onspeechend = function () {
                recognition.stop();
            };
    
            recognition.onerror = function (event) {
                console.error('Speech recognition error detected: ' + event.error);
            };
        });
    
        function performSearch(query) {
            console.log('Performing search for: ' + query);
            // Implement your search functionality here
            // Example: Redirect to a search results page
            window.location.href = `index.html?s=${encodeURIComponent(query)}`;
        }
    });
    
      
      
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 500, 'easeInOutExpo');
        return false;
    });


    // Facts counter
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 2000
    });


    // Header carousel
    $(".header-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        items: 1,
        dots: true,
        loop: true,
        nav : true,
        navText : [
            '<i class="bi bi-chevron-left"></i>',
            '<i class="bi bi-chevron-right"></i>'
        ]
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        center: true,
        dots: false,
        loop: true,
        nav : true,
        navText : [
            '<i class="bi bi-arrow-left"></i>',
            '<i class="bi bi-arrow-right"></i>'
        ],
        responsive: {
            0:{
                items:1
            },
            768:{
                items:2
            }
        }
    });
	
	
	

})(jQuery);




