// 부트스트랩 아이콘 마우스엔터시 좌측 menuBar 보이기
$(document).ready(function() { 
//    $("#menuBar").hide();
//    $("#dropdown").mouseenter(function() {
//        $("#menuBar").stop().fadeIn(400);
//        $("#svg1").css("fill", "yellow");
//    });
//    $("#dropdown").mouseleave(function() {
//        $("#menuBar").stop().fadeOut(300);
//        $("#svg1").css("fill", "gray");
//    });

//svg 문짝 눌렀을때 로그인 창 보이기
    $("#loginBox").hide();
    $('#svg_login').click(function(){
        $("#loginBox").show();
    });
    
//svg 사람 눌렀을때 회원가입 창 보이기
    $('#svg_join').click(function(){
        $("#loginBox").show();
    });
    
//로그인해주세요 눌렀을때 회원가입 창 보이기
    $('#pleaseSign').click(function(){
        $("#loginBox").show();
    });
    
//쇼핑 메뉴의 장바구니 클릭시 로그인 안했으면 로그인창 보이기
    $('.pleaseLogin').click(function(){
    	alert('로그인 해주세요');
    	$("#loginBox").show();
    });    

//X 눌렀을때 로그인 창 닫기
    $('#closeBtn').click(function(){
        $("#loginBox").hide();
    });


//로그아웃 dialog
   
    $(function(){
    	var url = "js/community_js/header_logout.jsp";
  
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

// 수량 카운트 up donw
    $(function(){
    	$('#decreaseQuantity').click(function(e){
    	e.preventDefault();
    	var stat = $('#numberUpDown').text();
    	var num = parseInt(stat,10);
    	num--;
    	if(num<=0){
    	alert('더이상 줄일수 없습니다.');
    	num =1;
    	}
    	$('#numberUpDown').text(num);
    	});
    	$('#increaseQuantity').click(function(e){
    	e.preventDefault();
    	var stat = $('#numberUpDown').text();
    	var num = parseInt(stat,10);
    	num++;

    	if(num>100){
    	alert('더이상 늘릴수 없습니다.');
    	num=5;
    	}
    	$('#numberUpDown').text(num);
    	});
    	});
    
    
    
});

