$(document).ready(function() {
	// 장바구니 border hover 시 kart 색상도 변경
    $(function(){
    	var divId= null;
    	var svgId= null;
    	for(i=0; i<26; i++){
    		var divId="#kartMandu"+i;
        	var svgId="#kart_icon"+i;
        	//console.log('"'+divId+'"' + divId);
//	    $(".kartMandu").mouseover(function(){
//	    	//console.log($(this));
//	    	$(this).find("svg").css("fill", "white");
//	    });
//    	$(".kartMandu").mouseout(function(){
//	    	//console.log($(this));
//    		$(this).find("svg").css("fill", "gray");
//    	});
	    
    	}   
    }) ;
    
//    $(".kartMandu").on({
//        mouseover: function(){
//        	$(this).find("svg").css("fill", "white");
//        },
//         mouseleave: function(){
//        	 $(this).find("svg").css("fill", "gray");
//        },
//        click: function(){
//        	 $(this).off('mouseover');
//        	
//        }
//    });

// // 장바구니 border hover 시 kart 색상도 변경
//    $(function(){
//    	
//    	for(var i=0; i<26; i++){
//    		row=$("body").find('#kartMandu'+i);
//    		row1=$("body").find('#kart_icon'+i);
//	    $(row).mouseover(function(){
//	    	//console.log($(this));
//	    	$(row1).css("fill", "white");
//	    });
//    	$(row).mouseout(function(){
//	    	//console.log($(this));
//	    	$(row1).css("fill", "gray");
//    	});
//	    
//    	}
//    });
	
    // 로그인 중 div 클릭시 background 변경 색 유지
    $(".Logintnks").on('click', function(){
    	alert("선택한거맞제?");
    	$(this).children().css("fill", "white");
    	$(this).closest("div").css({
    		'border-color': '#0674ea',
    		'background-color': '#067dfd',
        	'outline': 'none'
    	});
    });
    
//장바구니 dialog
    
    $(function(){
    	var url = "maingPage.jsp";
  
        $("#goingMypg_dialog").dialog({
            autoOpen:false, //자동으로 열리지않게
            width: 300,
            minHeight: 85,
            position:["center"], //x,y  값을 지정
            //"center", "left", "right", "top", "bottom"
            modal:true, //모달대화상자
            resizable:false, //크기 조절 못하게
            
            buttons:{
                "장바구니로":function(){
                    $(location).attr('href', url);
                },"계속쇼핑":function(){
                    $(this).dialog("close");
                }
            }
        });

        //창 열기 버튼을 클릭했을경우
        $(".Logintnks").on("click",function(){
            $("#goingMypg_dialog").dialog("open", "position", "center"); //다이얼로그창 오픈                
        });
    });
    
});