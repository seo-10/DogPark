// 부트스트랩 아이콘 마우스엔터시 좌측 menuBar 보이기
$(document).ready(function() { 
    $("#menuBar").hide();
    $("#dropdown").mouseenter(function() {
        $("#menuBar").stop().slideDown(200);
        $("#svg1").css("fill", "yellow");
    });
    $("#dropdown").mouseleave(function() {
        $("#menuBar").slideUp(400);
        $("#svg1").css("fill", "gray");
    });
});

// 로그인 회원가입 눌렀을때 창 보이기
// $(document).ready(function() {
//     $("#svg_login").toggle(function(){
//         $("#loginBox").css("display", "block");
//     }, function() {
//         $("#loginBox").css("display", "none");
//     });
// });

// 로그인 회원가입 눌렀을때 창 보이기
