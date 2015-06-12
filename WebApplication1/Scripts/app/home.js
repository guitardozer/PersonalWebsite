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
}

$(document).ready(main);