// $(document).ready(function() {
$('#header').load('http://10.31.161.19:8080/yihaodian/src/header.html');
$(function() {
    $.extend($.validator.messages, {
        required: "这是必填字段",
        remote: "请修正此字段",
        email: "请输入有效的电子邮件地址",
        url: "请输入有效的网址",
        date: "请输入有效的日期",
        dateISO: "请输入有效的日期 (YYYY-MM-DD)",
        number: "请输入有效的数字",
        digits: "只能输入数字",
        creditcard: "请输入有效的信用卡号码",
        equalTo: "你的输入不相同",
        extension: "请输入有效的后缀",
        maxlength: $.validator.format("最多可以输入 {0} 个字符"),
        minlength: $.validator.format("最少要输入 {0} 个字符"),
        rangelength: $.validator.format("请输入长度在 {0} 到 {1} 之间的字符串"),
        range: $.validator.format("请输入范围在 {0} 到 {1} 之间的数值"),
        max: $.validator.format("请输入不大于 {0} 的数值"),
        min: $.validator.format("请输入不小于 {0} 的数值")
    });

    $('#form1').validate({
        errorClass: 'error',
        rules: {
            username: {
                required: true,
                minlength: 2,
                maxlength: 10,
                remote: { //将前端的name给后端
                    url: "http://10.31.161.19:8080/yihaodian/php/registor.php", //后台处理程序
                    type: "post" //数据发送方式
                }
            },
            password: {
                required: true,
                minlength: 6
            },
            repass: {
                required: true,
                equalTo: '#password'
            }
        },
        messages: {
            username: {
                required: '用户名不能为空',
                minlength: '用户名不能小于2',
                maxlength: '用户名不能大于10',
                remote: '用户名已存在'
            },
            password: {
                required: '密码不能为空'
            },
            repass: {
                required: '密码重复不能为空'
            }
        }

    });
});

$.validator.setDefaults({
    /*添加校验成功后的执行函数--修改提示内容，并为正确提示信息添加新的样式(默认是valid)*/
    success: function(label) {
        label.text('√').css('color', 'green').addClass('valid');
    }
});
$('#footer').load('http://10.31.161.19:8080/yihaodian/src/footer.html');