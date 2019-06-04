;
(function($) {
    $(document).ready(function() {
        $.ajax({
            type: "get",
            url: "http://10.31.161.19:8080/yihaodian/php/dongnixiangyao.php",
            dataType: "json",
            success: function(data) {
                $.each(data, function(index, value) {
                    var oUl = $('.under_sp_list');
                    var str = `
                        <li class="under_list_single">
                            <div class="under_pro_pic">
                                <img class="sin_img sin_img_big" src="${value.img}" alt="">
                            </div>
                            <p class="single_tit text_limit_limp">${value.title}</p>
                            <p class="single_money">
                                ￥
                                <span>${value.price}</span>
                            </p>
                            <div class="sing_btn_con">
                                <div class="sin_hove_btn sin_gw">
                                    <a href="#" class="sin_hove_btn_a item-cart">
                                        <i class="iconfont icon-gouwuche"></i>
                                    </a>
                                </div>
                                <div class="sin_hove_btn sin_xs">
                                    <a href="#" class="sin_hove_btn_a">找相似</a>
                                </div>
                            </div>
                            <a href="./details.html?sid=${value.sid}" class="border_line"></a>
                        </li>
                    `
                    oUl.append(str);
                })
            }
        });
    })
})(jQuery);