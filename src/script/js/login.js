;
(function($) {
    $(document).ready(function() {
        $('#header').load('http://10.31.161.19:8080/yihaodian/src/header.html');
        $('#footer').load('http://10.31.161.19:8080/yihaodian/src/footer.html');


        $('#login_button').on('click', function() {
            var $username = $('#un').val();
            var $password = $('#pwd').val();
            $.ajax({
                type: 'post',
                url: 'http://10.31.161.19:8080/yihaodian/php/login.php',
                data: { //将用户名和密码传输给后端
                    name: $username,
                    pass: $password
                },
                success: function(data) { //请求成功，接收后端返回的值
                    console.log(data);
                    if (!data) { //用户名或者密码错误
                        $('#error_tips').css('display', 'block');
                        $('#pwd').val('');
                    } else { //成功,存cookie,跳转到首页
                        $('#error_tips').css('display', 'none');
                        cookie.set('UserName', $username, 7);
                        location.href = 'http://10.31.161.19:8080/yihaodian/src/index.html';
                    }
                }
            })
        })

    })

})(jQuery);