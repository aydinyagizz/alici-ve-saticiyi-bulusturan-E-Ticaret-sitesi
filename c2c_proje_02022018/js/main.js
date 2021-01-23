(function ($) {

    "use strict";

    // Document ready function 
    $(function () {

        /* Fixing for hover effect at IOS */
        $('*').on('touchstart', function () {
            $(this).trigger('hover');
        }).on('touchend', function () {
            $(this).trigger('hover');
        });

        // Tooltips
        $(document).on('mouseover', '.trending-sign',
            function () {
                var self = $(this),
                    tips = self.attr('data-tips');
                $tooltip = '<div class="fox-tooltip">' +
                    '<div class="fox-tooltip-content">' + tips + '</div>' +
                    '<div class="fox-tooltip-bottom"></div>' +
                    '</div>';
                $('body').append($tooltip);
                var $tooltip = $('body > .fox-tooltip');
                var tHeight = $tooltip.outerHeight();
                var tBottomHeight = $tooltip.find('.fox-tooltip-bottom').outerHeight();
                var tWidth = $tooltip.outerWidth();
                var tHolderWidth = self.outerWidth();
                var top = self.offset().top - (tHeight + tBottomHeight);
                var left = self.offset().left;
                $tooltip.css({
                    'top': top + 'px',
                    'left': left + 'px',
                    'opacity': 1
                }).show();
                if (tWidth <= tHolderWidth) {
                    var itemLeft = (tHolderWidth - tWidth) / 2;
                    left = left + itemLeft;
                    $tooltip.css('left', left + 'px');
                } else {
                    var itemLeft = (tWidth - tHolderWidth) / 2;
                    left = left - itemLeft;
                    if (left < 0) {
                        left = 0;
                    }
                    $tooltip.css('left', left + 'px');
                }
            })
            .on('mouseout', '.trending-sign', function () {
                $('body > .fox-tooltip').remove();
            });

        /*-------------------------------------
         Booking dates and time
         -------------------------------------*/
        var datePicker = $('.rt-date');
        if (datePicker.length) {
            datePicker.datetimepicker({
                format: 'Y-m-d',
                timepicker: false
            });
        }

        // Price range slider
        var priceSlider = document.getElementById('price-range-filter');
        if (priceSlider) {
            noUiSlider.create(priceSlider, {
                start: [20, 80],
                connect: true,
                /*tooltips: true,*/
                range: {
                    'min': 0,
                    'max': 100
                },
                format: wNumb({
                    decimals: 0
                }),
            });
            var marginMin = document.getElementById('price-range-min'),
                marginMax = document.getElementById('price-range-max');

            priceSlider.noUiSlider.on('update', function (values, handle) {
                if (handle) {
                    marginMax.innerHTML = "$" + values[handle];
                } else {
                    marginMin.innerHTML = "$" + values[handle];
                }
            });
        }

        // Gallery popup
        if ($('.gallery-wrapper').length) {
            $('.gallery-wrapper').magnificPopup({
                type: 'image',
                delegate: 'a',
                gallery: {
                    enabled: true
                }
            });
        }

    });

    /*-------------------------------------
     jQuery MeanMenu activation code
     --------------------------------------*/
    $('nav#dropdown').meanmenu({siteLogo: "<a href='index.html' class='logo-mobile-menu'><img src='img/mobile-logo.png' /></a>"});

    /*-------------------------------------
     Wow js Active
     -------------------------------------*/
    new WOW().init();

    /*-------------------------------------
     Jquery Scollup
     -------------------------------------*/
    $.scrollUp({
        scrollText: '<i class="fa fa-arrow-up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });

    /*-------------------------------------
     Window load function
     -------------------------------------*/
    $(window).on('load', function () {

        // Page Preloader
        $('#preloader').fadeOut('slow', function () {
            $(this).remove();
        });

        /*-------------------------------------
         jQuery for Isotope initialization
         -------------------------------------*/
        var $container = $('#isotope-container');
        if ($container.length > 0) {

            // Isotope initialization
            var $isotope = $container.find('.featuredContainer').isotope({
                filter: '*',
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });

            // Isotope filter
            $container.find('.isotope-classes-tab').on('click', 'a', function () {

                var $this = $(this);
                $this.parent('.isotope-classes-tab').find('a').removeClass('current');
                $this.addClass('current');
                var selector = $this.attr('data-filter');
                $isotope.isotope({
                    filter: selector,
                    animationOptions: {
                        duration: 750,
                        easing: 'linear',
                        queue: false
                    }
                });
                return false;

            });
        }
    });// end window load function


    /* login pop up foem */
    $('#login-button').on('click', function (e) {
        e.preventDefault();
        var self = $(this),
            target = self.next('#login-form');
        if (self.hasClass('open')) {
            target.slideUp('slow');
            self.removeClass('open');
        } else {
            target.slideDown('slow');
            self.addClass('open');
        }
        return false;
    });

    $('#login-form').on('click', '.form-cancel', function (e) {
        e.preventDefault();
        var self = $(this),
            parent = self.parents('#login-form'),
            loginButton = parent.prev('#login-button');
        parent.slideUp('slow');
        loginButton.removeClass('open');
        return false;
    });

     /*-------------------------------------
     Select2 activation code
     -------------------------------------*/
    if ($('#personal-info-form  select.select2').length) {
        $('#personal-info-form select.select2').select2({
            theme: 'classic',
            dropdownAutoWidth: true,
            width: '100%'
        });
    }

    // Gridrotator
    var riGrid = $('#ri-grid');
    if (riGrid.length) {
        riGrid.gridrotator({
            rows: 4,
            columns: 14,
            animType: 'random',
            animSpeed: 1000,
            interval: 600,
            step: 1,
            w1024: {
                rows: 4,
                columns: 8
            },
            w768: {
                rows: 4,
                columns: 6
            },
            w480: {
                rows: 4,
                columns: 4
            },
            w320: {
                rows: 4,
                columns: 4
            },
            w240: {
                rows: 4,
                columns: 4
            }
        });
    }

    /*-------------------------------------
     Contact Form processing
     -------------------------------------*/
    var contactForm = $('#contact-form');
    if (contactForm.length) {
        contactForm.validator().on('submit', function (e) {
            var _this = $(this),
                target = contactForm.find('.form-response');
            if (e.isDefaultPrevented()) {
                target.html("<div class='alert alert-danger'><p>Please select all required field.</p></div>");
            } else {
                $.ajax({
                    url: "vendor/php/form-process.php",
                    type: "POST",
                    data: contactForm.serialize(),
                    beforeSend: function () {
                        target.html("<div class='alert alert-info'><p>Loading ...</p></div>");
                    },
                    success: function (text) {
                        if (text === "success") {
                            _this[0].reset();
                            target.html("<div class='alert alert-success'><p><i class='fa fa-check' aria-hidden='true'></i>Message has been sent successfully.</p></div>");
                        } else {
                            target.html("<div class='alert alert-danger'><p>" + text + "</p></div>");
                        }
                    }
                });
                return false;
            }
        });
    }

    /*-------------------------------------
     Carousel slider initiation
     -------------------------------------*/
    $('.fox-carousel').each(function () {
        var carousel = $(this),
            loop = carousel.data('loop'),
            items = carousel.data('items'),
            margin = carousel.data('margin'),
            stagePadding = carousel.data('stage-padding'),
            autoplay = carousel.data('autoplay'),
            autoplayTimeout = carousel.data('autoplay-timeout'),
            smartSpeed = carousel.data('smart-speed'),
            dots = carousel.data('dots'),
            nav = carousel.data('nav'),
            navSpeed = carousel.data('nav-speed'),
            rXsmall = carousel.data('r-x-small'),
            rXsmallNav = carousel.data('r-x-small-nav'),
            rXsmallDots = carousel.data('r-x-small-dots'),
            rXmedium = carousel.data('r-x-medium'),
            rXmediumNav = carousel.data('r-x-medium-nav'),
            rXmediumDots = carousel.data('r-x-medium-dots'),
            rSmall = carousel.data('r-small'),
            rSmallNav = carousel.data('r-small-nav'),
            rSmallDots = carousel.data('r-small-dots'),
            rMedium = carousel.data('r-medium'),
            rMediumNav = carousel.data('r-medium-nav'),
            rMediumDots = carousel.data('r-medium-dots'),
            rLarge = carousel.data('r-large'),
            rLargeNav = carousel.data('r-large-nav'),
            rLargeDots = carousel.data('r-large-dots'),
            center = carousel.data('center');

        carousel.owlCarousel({
            loop: (loop ? true : false),
            items: (items ? items : 4),
            lazyLoad: true,
            margin: (margin ? margin : 0),
            autoplay: (autoplay ? true : false),
            autoplayTimeout: (autoplayTimeout ? autoplayTimeout : 1000),
            smartSpeed: (smartSpeed ? smartSpeed : 250),
            dots: (dots ? true : false),
            nav: (nav ? true : false),
            navText: ["<i class='fa fa-angle-left' aria-hidden='true'></i>", "<i class='fa fa-angle-right' aria-hidden='true'></i>"],
            navSpeed: (navSpeed ? true : false),
            center: (center ? true : false),
            responsiveClass: true,
            responsive: {
                0: {
                    items: ( rXsmall ? rXsmall : 1),
                    nav: ( rXsmallNav ? true : false),
                    dots: ( rXsmallDots ? true : false)
                },
                480: {
                    items: ( rXmedium ? rXmedium : 2),
                    nav: ( rXmediumNav ? true : false),
                    dots: ( rXmediumDots ? true : false)
                },
                768: {
                    items: ( rSmall ? rSmall : 3),
                    nav: ( rSmallNav ? true : false),
                    dots: ( rSmallDots ? true : false)
                },
                992: {
                    items: ( rMedium ? rMedium : 5),
                    nav: ( rMediumNav ? true : false),
                    dots: ( rMediumDots ? true : false)
                },
                1199: {
                    items: ( rLarge ? rLarge : 6),
                    nav: ( rLargeNav ? true : false),
                    dots: ( rLargeDots ? true : false)
                }
            }
        });

    });

    /*-------------------------------------
     Window onLoad and onResize event trigger
     -------------------------------------*/
    $(window).on('load resize', function () {
        //Define the maximum height for mobile menu
        var wHeight = $(window).height(),
            mLogoH = $('a.logo-mobile-menu').outerHeight();
        wHeight = wHeight - 50;
        $('.mean-nav > ul').css('height', wHeight + 'px');

    });

    /*-------------------------------------
     Jquery Stiky Menu at window Load
     -------------------------------------*/
    $(window).on('scroll', function () {

        var s = $('#sticker'),
            w = $('.wrapper'),
            h = s.outerHeight(),
            windowpos = $(window).scrollTop(),
            windowWidth = $(window).width(),
            h1 = s.parent('#header1'),
            h2 = s.parent('#header2'),
            topBar = h2.find('.header-top-bar');

        if (windowWidth > 767) {
            w.css('padding-top', '');
            var topBarH, mBottom = 0;
            if (h1.length) {
                topBarH = h1.find('.main-menu-area').outerHeight();
            } else if (h2.length) {
                mBottom = h2.find('.main-menu-area').outerHeight();
                topBarH = topBar.outerHeight();
            }
            if (windowpos >= topBarH) {
                if (h1.length) {
                    s.addClass('stick');
                }
                if (h2.length) {
                    s.addClass('stick');
                    topBar.css('margin-bottom', mBottom + 'px');
                }
            } else {
                s.removeClass('stick');
                if (h2.length) {
                    topBar.css('margin-bottom', 0);
                }
            }
        }

    });

    /* Rating selection*/
    $('#review-form').on('click', '.rate-wrapper .rate .rate-item', function () {
        var self = $(this),
            target = self.parent('.rate');
        target.addClass('selected');
        target.find('.rate-item').removeClass('active');
        self.addClass('active');
    });

    /*-------------------------------------
     Google Map
     -------------------------------------*/
    if ($('#googleMap').length) {

        //Map initialize
        var initialize = function () {
            var mapOptions = {
                zoom: 15,
                scrollwheel: false,
                center: new google.maps.LatLng(-37.81618, 144.95692),
                styles: [{
                    stylers: [{
                      saturation: -100
                    }]
                }]
            };
            var map = new google.maps.Map(document.getElementById("googleMap"),
                mapOptions);
            var marker = new google.maps.Marker({
                position: map.getCenter(),
                animation: google.maps.Animation.BOUNCE,
                icon: 'img/map-marker.png',
                map: map
            });
        }

        // Add the map initialize function to the window load function
        google.maps.event.addDomListener(window, "load", initialize);
    }

})(jQuery);