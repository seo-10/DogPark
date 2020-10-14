<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.ShopDto"%>
<%@page import="com.dogpark.dao.ShopDao"%>
<%@page import="com.dogpark.dto.PageInfo"%>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
	
	 <!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

    <!-- 메인인덱스 CSS 사용 -->
    <link rel="stylesheet" type="text/css" href="css/shop_css/shop_main.css" />
    <!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css" />
    <!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/shop_js/shop.js"></script>
    <script type="text/javascript" src="js/shop_js/shop2.js"></script>
    <script type="text/javascript" src="js/shop_js/script.js"></script>
    
   	<!-- 마이페이지 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/goingMypg_css/goingMypg.css" />
   	
   	

   
</head>
<body>

<% ArrayList<ShopDto> dto = (ArrayList<ShopDto>)request.getAttribute("articleList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount=pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage=pageInfo.getMaxPage();
	int startPage=pageInfo.getStartPage();
	int endPage=pageInfo.getEndPage();

%>

   	<script>
		function kartAside(i) {
			//$('#kartItemPic').attr('src','img/shopping_img/dogfood'+i+'.png');
			$('#kartItemPics').append('<img id="kartItemPic" src="img/shopping_img/dogfood'+(i+1)+'.png" width="110px" height="100px">');
			$('#kartItemName').append('dogfood'+(i+1));
		}
	</script>
	
<form name="form" method="post">
		 <!-- 로그아웃 다이얼로그 -->
	    <div id="logout_dialog" title="logout"  >
	    	로그아웃 하시겠습니까?
	    </div>
	    
	    <!-- 메뉴 왼쪽 드롭다운 -->
	    <div id="dropdown">
    		<jsp:include page="mainMenu_Left.jsp" />
    	</div>
	    
	     <!-- 로그인 유지  -->
	     <div id="login_Ing">
	    	<jsp:include page="js/main_js/header.jsp" />
	    </div>
	   
	    <!-- 마이페이지로 가는 다이얼로그 -->
	    <div id="goingMypg_dialog" title="이동"  >
	    	장바구니에 상품을 담았습니다.
	    </div>
	    
    <div style="height:100px;">
    </div>
   
    <%if(dto != null && listCount > 0){%>
    	<section>
    		<% String divId = null; %>
    		<% String svgId = null; %>
	    	<%for(int i=0;i<dto.size();i++){%>
	    	
	    		<!-- 가격 천단위 컴마 찍기 -->
	    		<% 
	    			int price = dto.get(i).getPd_price();
	    			String priceComma = String.format("%, d", price);
	    		%>
	    			
	            <article style="float: left;">
	                <a href="shop_buy.bo?pd_name=<%out.println(dto.get(i).getPd_name());%>"><img src="img/shopping_img/dogfood<% out.println(dto.get(i).getIndex());%>.png"></a>
	                <ul>
	                    <li class="foodName"><a href="javascript:void(0);"><% out.println(dto.get(i).getPd_desc()); %></a></li>
	                    <li class="foodPrice" style="float: right;"><a href="#"><% out.println(priceComma); %>￦</a></li>
	                </ul>
	                <div class="starRev">
	                    <span class="starR1 on">별1_왼쪽</span>
	                    <span class="starR2 on">별1_오른쪽</span>
	                    <span class="starR1 on">별2_왼쪽</span>
	                    <span class="starR2 on">별2_오른쪽</span>
	                    <span class="starR1 on">별3_왼쪽</span>
	                    <span class="starR2 on">별3_오른쪽</span>
	                    <span class="starR1">별4_왼쪽</span>
	                    <span class="starR2">별4_오른쪽</span>
	                    <span class="starR1">별5_왼쪽</span>
	                    <span class="starR2">별5_오른쪽</span>
	                </div>
	                
					<% divId = "kartMandu"+Integer.toString(i); %>
					<% svgId = "dogfood"+Integer.toString(i)+".png"; %>
					
					
	               	<div class="kartMandu" id="<%=divId %>" >
	               		<% String id = (String)session.getAttribute("id");%>
    					<% if(id != null) { %>
	               			<a href="javascript:void(0);"  class="Logintnks" onclick="kartAside(<%=i%>)">
		               			<svg class="kart_icon" id="<%=svgId %>" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-cart2"  xmlns="http://www.w3.org/2000/svg">
	  								<path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
								</svg>
							</a>
				
							
						<% } else {%>
							<a href="#" class="pleaseLogin">
								<svg class="kart_icon" id="<%=svgId %>" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-cart2"  xmlns="http://www.w3.org/2000/svg">
	  								<path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
								</svg>
							</a>
						<%} %>
	               	</div>
	            </article>
	        <% } %>
	       <hr class="bottomHr" />
        </section>
      <% } %>
      
		<aside class="shopping_basket">
			<div>최근 본 상품</div>
			<span style="float:left;">
				<a href="javascript:void(0);" id="kartItemPics"></a>
			</span>
			
			<span>
				<a href="javascript:void(0);" id="kartItemName"></a>
			</span>
        </aside>
        
        <div>
			<jsp:include page="footer/footer.jsp" />
  		</div>
        
	</form>
</body>

</html>