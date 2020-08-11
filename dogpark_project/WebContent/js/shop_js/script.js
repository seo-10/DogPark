$(document).ready(function() { 
    $('#nav li').hover(function() {
        $('ul', this).slideDown(20);
        $(this).children('a:first').addClass("hov");
    }, function() {
        $('ul', this).slideUp(20);
        $(this).children('a:first').removeClass("hov");    
    });
});

$(document).ready(function() {
$('.starRev span').click(function(){
    $(this).parent().children('span').removeClass('on');
    $(this).addClass('on').prevAll('span').addClass('on');
    return false;
  });
});

