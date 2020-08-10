// 부트스트랩 아이콘 마우스엔터시 좌측 menuBar 보이기
$(document).ready(function() { 
    $("#menuBar").hide();
    $("#dropdown").mouseenter(function() {
        $("#menuBar").stop().fadeIn(400);
        $("#svg1").css("fill", "yellow");
    });
    $("#dropdown").mouseleave(function() {
        $("#menuBar").stop().fadeOut(300);
        $("#svg1").css("fill", "gray");
    });

//svg 문짝 눌렀을때 로그인 창 보이기
    $("#loginBox").hide();
    $('#svg_login').click(function(){
        $("#loginBox").show();
    });
    
//svg 사람 눌렀을때 회원가입 창 보이기
    $('#svg_join').click(function(){
        $("#loginBox").show();
    });

//X 눌렀을때 로그인 창 닫기
    $('#closeBtn').click(function(){
        $("#loginBox").hide();
    });


//로그아웃 dialog
   
    $(function(){
    	var url = "header_logout.jsp";
  
        $("#logout_dialog").dialog({
            autoOpen:false, //자동으로 열리지않게
            width: 300,
            minHeight: 85,
            position:["center"], //x,y  값을 지정
            //"center", "left", "right", "top", "bottom"
            modal:true, //모달대화상자
            resizable:false, //크기 조절 못하게
            
            buttons:{
                "확인":function(){
                    //$(this).dialog("close");
                	
                    $(location).attr('href', url);
                },"취소":function(){
                    $(this).dialog("close");
                }
            }
        });

        //창 열기 버튼을 클릭했을경우
        $("#svg_logout").on("click",function(){
            $("#logout_dialog").dialog("open"); //다이얼로그창 오픈                
        });
    });

});

