;
(function() {
    $(document).ready(function() {
        var spic = $('.proImg');
        var sf = $('.zoomCursor');
        var bpic = $('.J_zoom img')
        var bf = $('.J_zoom');
        spic.hover(function() {
            sf.css('display', 'block');
            bf.css('display', 'block');

            bpic.css({ 'width': bf.width() * spic.width() / sf.width(), 'height': bf.height() * spic.height() / sf.height() });

            var bili = bpic.outerWidth() / spic.outerWidth();
            $(this).on('mousemove', function(e) {
                var l = e.pageX - spic.offset().left - sf.width() / 2;
                var t = e.pageY - spic.offset().top - sf.height() / 2;
                if (l <= 0) {
                    l = 0;
                } else if (l >= spic.width() - sf.width()) {
                    l = spic.width() - sf.width();
                }

                if (t <= 0) {
                    t = 0;
                } else if (t >= spic.height() - sf.height()) {
                    t = spic.height() - sf.height();
                }

                sf.css({ 'left': l, 'top': t });

                bpic.css({ 'left': -l * bili, 'top': -t * bili });
            })
        }, function() {
            sf.css('display', 'none');
            bf.css('display', 'none');
        })
        var simg = $('.proImg img');
        $('.mBox').on('mouseover', 'b', function() {
            var src = $(this).find('img').attr('src');
            simg.attr('src', src);
            bpic.attr('src', src);
            $(this).addClass('cur').siblings().removeClass('cur');
        })
    })
})();;
(function($) {
    $(document).ready(function() {
        var picid = location.search.substring(1).split('=')[1];
        $.ajax({
            type: "get",
            url: "http://10.31.161.19:8080/yihaodian/php/details.php",
            data: {
                sid: picid
            },
            dataType: "json",
            success: function(data) {
                console.log(data);
                var arr = data.src.split(',');
                var simg = $('.proImg img');
                var bpic = $('.J_zoom img');
                simg.attr('src', data.img);
                bpic.attr('src', data.img);

                var biaoti = `
                <h1 class="mh" id="productMainName" title="${data.title}">${data.title}</h1>
                `
                $('.mod_detailInfo_proName').append(biaoti);

                var jiage = `
                    <span id="current_price">
                        <i>¥</i>
                        <em>${data.price}</em>   
                    </span>
                `
                $('.number.inte_check').append(jiage);

                $.each(arr, function(index, value) {
                    console.log(value);
                    var str = `
                        <b>
                            <img style="width:50px;height:50px" class="detail_main_pic_class" src=${value}>
                        </b>
                    `
                    $('.mBox').append(str).parents('body').find('.buy_btn6').on('click', function() {
                        addShopCar(data.sid, data.price, $('.num').val())
                    });


                });
                $($('.mBox b')[0]).addClass('cur');

                //存cookit
                function addShopCar(id, price, num) {
                    var shop = cookie.get('shop'); //从cookie获取shop
                    var product = {
                        "id": id,
                        "price": price,
                        "num": num
                    };

                    if (shop) {
                        shop = JSON.parse(shop); // cookie中如果有数据 这个数据是json字符串 转成对象
                        if (shop.some(elm => elm.id == id)) {
                            shop.forEach(function(elm, i) {
                                elm.id == id ? elm.num = num : null;
                            });
                        } else {
                            shop.push(product);
                        }
                        cookie.set('shop', JSON.stringify(shop), 1);
                    } else {
                        shop = [];
                        shop.push(product);
                        cookie.set('shop', JSON.stringify(shop), 1);
                    }
                }
            }
        });
    })
})(jQuery);;
(function() {
    $(function() {
        $('.next').on('click', function() {
            var result = $('.mBox b');
            var rightBtn = -$(result[0]).outerWidth(true) * (result.length - 5);
            if (result.length > 5) {
                $('.mBox').animate({ left: rightBtn }, 1000);
            }
        })
        $('.prev').on('click', function() {
            var result = $('.mBox b');
            var rightBtn = -$(result[0]).outerWidth(true) * (result.length - 5);
            if (rightBtn < 0) {
                $('.mBox').animate({ left: 0 }, 1000);
            }
        })
        var num = $('.num');
        var add = $('.computing_act input').eq(0);
        var reduce = $('.computing_act input').eq(1);
        add.on('click', function() {
            num.val(function(index, value) {
                return Number(value) + 1;
            })
            if (num.val() > 1) {
                reduce.removeClass().addClass('reduce');
            } else {
                reduce.removeClass().addClass('no_reduce');
            }
        })
        num.on('keyup', function() {
            $(this).val($(this).val().replace(/\D|^0/g, ''));
            if (num.val() > 1) {
                reduce.removeClass().addClass('reduce');
            } else {
                reduce.removeClass().addClass('no_reduce');
                num.val(1);
            }
        });
        reduce.on('click', function() {
            if (num.val() > 1) {
                num.val(function(index, value) {
                    return Number(value) - 1;
                })
                if (num.val() <= 1) {
                    reduce.removeClass().addClass('no_reduce');
                }
            } else {
                reduce.removeClass().addClass('no_reduce');
            }
        })
    })
})();