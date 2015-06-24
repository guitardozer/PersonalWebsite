var main = function () {
    $('.dropdown-toggle').click(function () {
        $('.dropdown-menu').show();
    });
    $('.dropdown-toggle').hover(function () {
        $('.dropdown-menu').show();
    }, function () {
        $('.dropdown-menu').hide();
    });
    $('.dropdown-menu').hover(function () {
        $('.dropdown-menu').show();
    }, function () {
        $('.dropdown-menu').hide();
    });

    $(".slide-left").hover(function () {
        $(this).stop().animate({ paddingLeft: "10px" }, 200);
    }, function () {
        $(this).stop().animate({ paddingLeft: "0px" }, 200);
    });

    $(".bounce-up").hover(function () {
        $(this).stop().animate({ paddingLeft: "10px" }, 200);
    }, function () {
        $(this).stop().animate({ paddingLeft: "0px" }, 200);
    });
}

$(document).ready(main);