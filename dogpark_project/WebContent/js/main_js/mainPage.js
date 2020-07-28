// 부트스트랩 아이콘 마우스엔터시 좌측 menuBar 보이기
$(document).ready(function() { 
    $("#menuBar").hide();
    $("#dropdown").mouseenter(function() {
        $("#menuBar").stop().slideDown(200);
        $("#svg1").css("fill", "yellow");
    });
    $("#dropdown").mouseleave(function() {
        $("#menuBar").stop().slideUp(400);
        $("#svg1").css("fill", "gray");
    });
});

// //로그인 회원가입 눌렀을때 창 보이기
// $("#loginBox").hide();
// $(document).ready(function() {
//     $("#svg_login").toggle(function(){
//         $("#loginBox").css("display", "block");
//     }, function() {
//         $("#loginBox").css("display", "none");
//     });
// });

//svg 눌렀을때 로그인 창 보이기
$(document).ready(function() {
    $("#loginBox").hide();
    $('#svg_login').click(function(){
        $("#loginBox").show();
    });
});
//X 눌렀을때 로그인 창 닫기
$(document).ready(function() {
    $('#closeBtn').click(function(){
        $("#loginBox").hide();
    });
});