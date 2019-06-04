;
(function() {
    $(document).ready(function() {
        $.ajax({
            type: "get",
            url: "http://10.31.161.19:8080/yihaodian/php/rexiaobang.php",
            dataType: "json",
            success: function(data) {
                $.each(data, function(index, value) {
                    var arr = value.img.split(',');
                    var arr1 = [1 + index * 3, 2 + index * 3, 3 + index * 3];
                    var arr2 = [
                        ["", " tit_two", " tit_three"],
                        [" tit_four", " tit_four", " tit_four"],
                        [" tit_four", " tit_four", " tit_four"]
                    ]
                    var str = `
                    <ul class="qua_top_slideCon_ul"> 
                        <a href="">
                            <li class="qua_top_imgCon">
                                <div class="qua_imgCon_font${arr2[index][0]}">TOP${arr1[0]}</div>
                                <img src="${arr[0]}">
                            </li>
                        </a>
                        <a href="">
                            <li class="qua_top_imgCon">
                                <div class="qua_imgCon_font${arr2[index][1]}">TOP${arr1[1]}</div>
                                <img src="${arr[1]}">
                            </li>
                        </a>
                        <a href="">
                            <li class="qua_top_imgCon">
                                <div class="qua_imgCon_font${arr2[index][2]}">TOP${arr1[2]}</div>
                                <img src="${arr[2]}">
                            </li>
                        </a> 
                    </ul> 
                `
                    $('.qua_top_slidInner').append(str);
                    arr2 = ["tit_four", "tit_four", "tit_four"];
                });
            }
        });
        var left = $('.qua_top_left_btn');
        var right = $('.qua_top_right_btn');
        left.click(function() {
            var $i = Number($(this).siblings('div').find('.qua_top_slidInner').css('left').slice(0, -2));
            var box = $(this).siblings('div').find('.qua_top_slidInner');
            if ($i < 10 && $i >= -200) {
                $i = -200;
            }
            if ($i < -200) {
                $i = -410;
            }
            if ($i <= -200) {
                $i += 210;
                box.css("left", $i + "px")
            }
            switch ($i) {
                case 10:
                    $(this).addClass('qua_top_btn_forbid');
                    $(this).siblings(right).removeClass('qua_top_btn_forbid');
                    break;
                case -200:
                    $(this).removeClass('qua_top_btn_forbid');
                    $(this).siblings(right).removeClass('qua_top_btn_forbid');
                    break;
                case -410:
                    $(this).removeClass('qua_top_btn_forbid');
                    $(this).siblings(right).addClass('qua_top_btn_forbid');
            }
        });
        right.click(function() {
            var $i = Number($(this).siblings('div').find('.qua_top_slidInner').css('left').slice(0, -2));
            var box = $(this).siblings('div').find('.qua_top_slidInner');
            if ($i < 10 && $i >= -200) {
                $i = -200;
            }
            if ($i < -200) {
                $i = -410;
            }
            if ($i >= -200) {
                $i -= 210;
                box.css("left", $i + "px");
            }
            switch ($i) {
                case 10:
                    $(this).siblings(left).addClass('qua_top_btn_forbid');
                    $(this).removeClass('qua_top_btn_forbid');
                    break;
                case -200:
                    $(this).siblings(left).removeClass('qua_top_btn_forbid');
                    $(this).removeClass('qua_top_btn_forbid');
                    break;
                case -410:
                    $(this).siblings(left).removeClass('qua_top_btn_forbid');
                    $(this).addClass('qua_top_btn_forbid');
            }
        });
    })
})();