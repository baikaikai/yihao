;
(function($) {
    $(document).ready(function() {
        var stairs = $('.stairs');
        var top = $('.stairs_top');
        $(window).scroll(function() {
            if ($(window).scrollTop() >= 625) {
                stairs.css({ 'position': 'fixed', 'top': '156px' })
            } else {
                stairs.css({ 'position': 'absolute', 'top': 0 })
            };
            if ($(window).scrollTop() >= 2300) {
                top.fadeIn(1000);
            } else {
                top.fadeOut(1000);
            };

        });
        top.click(function() {
            $('html,body').animate({
                scrollTop: 0
            }, 1000);
        });
    });
})(jQuery);