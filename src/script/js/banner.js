;
(function($) {
    $(document).ready(function() {
        var oLi = $('.banner_img ul li');
        var oUl = $('.banner_img ul');
        var btn = $('.banner_menu ul li');
        var $i = 1;
        var time = setInterval(function() {
            if ($i == 3) {
                $i = 0;
            }
            oLi.eq($i).fadeIn().siblings().fadeOut();
            btn.eq($i).addClass('active').siblings().removeClass('active');
            $i++;
        }, 3000);
        // 鼠标滑动图片停止轮播
        oUl.hover(function() {
            clearInterval(time);
        }, function() {
            time = setInterval(function() {
                if ($i == 3) {
                    $i = 0;
                }
                oLi.eq($i).fadeIn().siblings().fadeOut();
                btn.eq($i).addClass('active').siblings().removeClass('active');
                $i++;
            }, 3000);
        });
        // 鼠标滑动小盒子停止轮播
        btn.hover(function() {
                oLi.eq($(this).index()).stop(true).fadeIn().siblings().fadeOut();
                $(this).addClass('active').siblings().removeClass('active');
                clearInterval(time);
                $i = $(this).index();
                $i++;
            },
            function() {
                time = setInterval(function() {
                    if ($i == 3) {
                        $i = 0;
                    }
                    oLi.eq($i).fadeIn().siblings().fadeOut();
                    btn.eq($i).addClass('active').siblings().removeClass('active');
                    $i++;
                }, 3000);
            });
    })

})(jQuery);