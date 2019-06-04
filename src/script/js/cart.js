;
(function() {
    $(function() {
        var shop = cookie.get('shop');
        if (shop) {
            $('.empty').css('display', 'none');
            $('.wrap').eq(-1).css('display', 'block');
            $('.none').css('display', 'block');
            shop = JSON.parse(shop);
            var idList = shop.map(elm => elm.id).join();

            $.ajax({
                type: "get",
                url: "http://10.31.161.19:8080/yihaodian/php/cart.php",
                data: {
                    "idList": idList
                },
                dataType: "json",
                success: function(response) {

                    var template = "";

                    var zong = 0;
                    shop.forEach(function(elm, i) {

                        zong = zong + (elm.price * elm.num);
                    })

                    $('.rpt_count b').html(zong.toFixed(2));


                    response.forEach(function(elm) {

                        var pic = elm.img;

                        var arr = shop.filter((val, i) => {
                            return val.id === elm.sid;
                        });

                        template = `
                        <div class="cart_list">
                            <div class="cart_tit clearbox">
                                <span class="checkbox">
                                    <a href="javascript:;" class="check check_list checked">
                                        <i class="iconfont icon-icon"></i>
                                    </a>
                                </span>
                                <a href="javascript:;" class="label vender">
                                    贝盈拼购旗舰店
                                </a>
                                <a href="javascript:;" class="service btn-im unable"></a>
                            </div>
                            <div class="cart_list_wrap">
                                <ul class="cart_item">
                                    <li class="item item_line main_item clearbox" id=${elm.sid}>
                                        <div class="cart_prod clearbox">
                                            <a href="javascript:;" class="check check_item checked nofresh normal_item">
                                                <i class="iconfont icon-icon"></i>
                                            </a>
                                            <a href="javascript:;" class="item_pic">
                                                <img class="mainCart scrollLoading" style="width:75px;height:75px" src="${pic}" alt="">
                                            </a>
                                            <a href="javascript:;" class="item_tit ">
                                                ${elm.title}
                                            </a>
                                            <div class="item_price">
                                                <p>${elm.price}</p>
                                            </div>
                                            <div class="item_num">
                                                <div class="num_act clearbox">
                                                    <a href="javascript:;" class="minus unable" data-min="1">
                                                        −
                                                    </a>
                                                    <input type="text" class="input" value="${arr[0].num}">
                                                    <a href="javascript:;" class="add">
                                                        +
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="item_amount">
                                                <div class="item_a_money">
                                                    ${(arr[0].num*elm.price).toFixed(2)}
                                                </div>
                                                <div class="item_a_weight">
                                                    0.80kg
                                                </div>
                                            </div>
                                            <div class="item_act">
                                                <a href="javascript:;" class="collect_btn collect_btn_43252658884" title="收藏">
                                                    <i class="iconfont icon-zan"></i>
                                                </a>
                                                <a href="javascript:;" class="del_btn">
                                                    <i class="iconfont icon-shanchu"></i>
                                                </a>
                                            </div>
                                            <div class="prop_edit">
                                                <div class="prop_server prop_server_orange">
                                                    <i class="seven_icon"></i>
                                                </div>
                                                <div class="prop_txt">
                                                    <span>支持7天无理由退货</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="cart_amount">
                                <div class="amount">
                                    商品总价：
                                    <span>
                                        <em>¥</em>
                                        <b>${(arr[0].num*elm.price).toFixed(2)}</b>
                                    </span>
                                </div>
                            </div>
                        </div>
                        `
                        $('#cart_main_body .wrap').append(template);
                    });
                    var qx = $('.check_all');
                    var list = $('.check_list');
                    var item = $('.check_item');
                    var qingling = 0;

                    function btnzongjia() {
                        var jg = 0;
                        $.each($('.check_item.checked'), function(i, val) {
                            jg += Number($.trim($(val).siblings('.item_amount').find('.item_a_money').html()));
                        });
                        $('.rpt_count b').html(jg.toFixed(2));
                    }


                    qx.on('click', function() {
                        if ($('.check').length == $('.checked').length) {
                            $('.check').removeClass('checked');
                        } else {
                            $('.check').not($('.checked')).addClass('checked');
                        }
                        dianqingling();
                        yixuanshangping();

                        btnzongjia();
                    })
                    list.on('click', function() {
                        $(this).toggleClass('checked');
                        if ($('.check_list.checked').length == list.length) {
                            console.log(1);
                            qx.addClass('checked');
                        } else {
                            qx.removeClass('checked');
                        };
                        var l_item = $(this).parents('.cart_list').find('.check_item')
                        if ($(this).hasClass('checked')) {
                            l_item.addClass('checked');
                        } else {
                            l_item.removeClass('checked');
                        };

                        dianqingling();
                        yixuanshangping();

                        btnzongjia();
                    })
                    item.on('click', function() {
                        $(this).toggleClass('checked');
                        var i_item = $(this).parents('.cart_list').find('.check_item');
                        var c_item = $(this).parents('.cart_list').find('.check_item.checked');
                        var ls = $(this).parents('.cart_list').find('.check_list');
                        if (i_item.length == c_item.length) {
                            ls.addClass('checked');
                        } else {
                            ls.removeClass('checked');
                        }
                        if (item.length == $('.check_item.checked').length) {
                            qx.addClass('checked');
                        } else {
                            qx.removeClass('checked');
                        }

                        dianqingling();
                        yixuanshangping();


                        btnzongjia();
                    })

                    function dianqingling() {
                        $('.check_item').each(function(i, elm) {
                            if ($(elm).hasClass('checked')) {
                                $(elm).parents('.cart_list').find('.amount b').html($(elm).parents('.cart_prod').find('.item_a_money').html());
                            } else {
                                $(elm).parents('.cart_list').find('.amount b').html(qingling.toFixed(2));
                            }
                        })
                    }



                    var input = $('.input');
                    var minus = $('.minus');
                    var add = $('.add');

                    input.on('keyup', function() {
                        $(this).val($(this).val().replace(/\D|^0/g, ''));
                        if ($(this).val() > 1) {
                            $(this).prev(minus).removeClass('unable');
                        } else {
                            $(this).prev(minus).addClass('unable');
                            $(this).val(1);
                        }

                        var res = 0;
                        input.each(function() {
                            res += Number($(this).val());
                        })
                        $('.all_checked_label b').html(res);



                        $(this).parents('.cart_prod').find('.item_a_money').html(($.trim($(this).parents('.cart_prod').find('.item_price p').html()) * $(this).val()).toFixed(2));


                        $(this).parents('.cart_list').find('.amount b').html($(this).parents('.cart_prod').find('.item_a_money').html());

                        yixuanshangping()

                        btnzongjia();
                    })

                    minus.on('click', function() {
                        if ($(this).next(input).val() > 1) {
                            $(this).next(input).val(function(index, value) {
                                return Number(value) - 1;
                            })
                            if ($(this).next(input).val() <= 1) {
                                $(this).addClass('unable');
                            }
                        }

                        var res = 0;
                        input.each(function() {
                            res += Number($(this).val());
                        })
                        $('.all_checked_label b').html(res);


                        $(this).parents('.cart_prod').find('.item_a_money').html(($(this).siblings('.input').val() * $.trim($(this).parents('.cart_prod').find('.item_price p').html())).toFixed(2));

                        $(this).parents('.cart_list').find('.amount b').html($(this).parents('.cart_prod').find('.item_a_money').html());

                        yixuanshangping()


                        btnzongjia();
                    })

                    add.on('click', function() {
                        $(this).prev(input).val(function(index, value) {
                            return Number(value) + 1
                        })
                        if ($(this).prev(input).val() > 1) {
                            $(this).prev(input).prev(minus).removeClass('unable');
                        }

                        var res = 0;
                        input.each(function() {
                            res += Number($(this).val());
                        })
                        $('.all_checked_label b').html(res);

                        $(this).parents('.cart_prod').find('.item_a_money').html(($(this).siblings('.input').val() * $.trim($(this).parents('.cart_prod').find('.item_price p').html())).toFixed(2));

                        $(this).parents('.cart_list').find('.amount b').html($(this).parents('.cart_prod').find('.item_a_money').html());

                        yixuanshangping()

                        btnzongjia();
                    })


                    function yixuanshangping() { //获取已选商品的数目填入已选商品

                        var yixuan = 0;
                        $('.check_item.checked').parents('.cart_prod').find('.input').each(function() {
                            yixuan += Number($(this).val());

                            if ($(this).val() > 1) {
                                $(this).prev(minus).removeClass('unable');
                            } else {
                                $(this).prev(minus).addClass('unable');
                                $(this).val(1);
                            }
                        })
                        $('.rpv_count b').html(yixuan);
                    }


                    var resu = 0;
                    input.each(function() { //获取input里面的值相加
                        resu += Number($(this).val());

                        if ($(this).val() > 1) {
                            $(this).prev(minus).removeClass('unable');
                        } else {
                            $(this).prev(minus).addClass('unable');
                            $(this).val(1);
                        }
                    })
                    $('.all_checked_label b').html(resu); //把input里面的值相加后填入全选件数里面


                    $('.rpv_count b').html($('.all_checked_label b').html());


                    btnzongjia();
                    //点击删除
                    $('.del_btn').on('click', function() {
                        var that = $(this);
                        var index;
                        $.each(shop, function(i, val) { //遍历获取与删除的id相同的cookie值的下标
                            if (val.id == that.parents('.item').attr('id')) {
                                index = $(shop).index($(val));
                            };
                        });
                        shop.splice(index, 1); //删除cookie值
                        cookie.set('shop', JSON.stringify(shop)); //重新设置cookie
                        if (shop == '') {
                            console.log(1);
                            cookie.remove('shop');

                        };
                        window.location.reload();
                    });
                }
            });
        } else {
            $('.empty').css('display', 'block');
            $('.wrap').eq(-1).css('display', 'none');
            $('.none').css('display', 'none');
        }
    })
})();