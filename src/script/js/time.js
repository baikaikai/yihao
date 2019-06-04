;
(function(time) {
    $(document).ready(function() {
        window.setInterval(function() {
            var day = 0,
                hour = 0,
                minute = 0,
                second = 0;
            if (time > 0) {
                day = Math.floor(time / (60 * 60 * 24));
                hour = Math.floor(time / (60 * 60)) - (day * 24);
                minute = Math.floor(time / 60) - (day * 24 * 60) - (hour * 60);
                second = Math.floor(time) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
            }
            if (hour <= 9) hour = '0' + hour;
            if (minute <= 9) minute = '0' + minute;
            if (second <= 9) second = '0' + second;
            $('.time_hour').html(hour);
            $('.time_minute').html(minute);
            $('.time_second').html(second);
            time--;
        }, 1000);
    });

})(20000);