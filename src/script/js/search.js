;
(function($) {
    $(function() {
        var search = $('.header_search_bar');
        $(window).scroll(function() {
            if ($(window).scrollTop() >= 800) { //滚动条大于等于800显示搜索条
                search.slideDown(300, 'linear');
            } else {
                search.slideUp(300, 'linear');
            }
        });
        var hi = $('.uname span')
            // var names = cookie.get('UserName');


        if (cookie.get('UserName')) {
            $('.uname ').css({ 'display': 'block', 'position': 'absolute', 'left': '0', 'top': '0', 'width': '130px' });
            hi.html(hi.html() + cookie.get('UserName'));
            $('.un_hide').hide();
        }
        $('.uname a').on('click', function() {
            cookie.remove('UserName');
            $('.uname').css('display', 'none');
            hi.html('hi~');
            $('.un_hide').show();
        })
    })
})(jQuery);