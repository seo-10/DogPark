$(document).ready(function() {
	// 장바구니 border hover 시 kart 색상도 변경
    $(function(){
    	var divId= null;
    	var svgId= null;
    	for(i=0; i<26; i++){
    		var divId="#kartMandu"+i;
        	var svgId="#kart_icon"+i;
        	console.log('"'+divId+'"' + divId);
	    $(".kartMandu").mouseover(function(){
	    	//console.log($(this));
	    	$(this).find("svg").css("fill", "white");
	    });
	    
    	$(".kartMandu").mouseout(function(){
	    	//console.log($(this));
    		$(this).find("svg").css("fill", "gray");
    	});
    	}   
    });
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
	
});