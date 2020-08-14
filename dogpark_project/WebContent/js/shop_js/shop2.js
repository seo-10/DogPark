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
    });
    
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
    
});