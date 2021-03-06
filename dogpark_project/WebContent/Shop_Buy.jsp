<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.ShopDto"%>
<%@page import="com.dogpark.dto.BuyListDto"%>
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
    <link rel="stylesheet" type="text/css" href="css/shop_css/shop_detail.css?ver=2" />
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
	<% ArrayList<ShopDto> dto = (ArrayList<ShopDto>)request.getAttribute("articleList"); %>
	<% ArrayList<BuyListDto> list_dto = (ArrayList<BuyListDto>)request.getAttribute("articleList"); %>
	
	
	
	<form name="form" method="post" name="form" action="buyList_Insert.bo?cart_name=<%out.println(dto.get(0).getPd_name());%>" method="get">
	<!-- 로그아웃 다이얼로그 -->
    <div id="logout_dialog" title="logout"  >
    	로그아웃 하시겠습니까?
    </div>
    
    <!-- 메뉴 왼쪽 드롭다운 -->
    <div id="dropdown">
  		<jsp:include page="mainMenu_Left.jsp" />
	</div>
	
    <!-- 로그인 유지 -->
    <div id="login_Ing">
    	<jsp:include page="js/main_js/header.jsp" />
    </div>
    
    <div style="height:100px;">
    </div>
	
	
	<h1 id="toph1">구매페이지</h1>
	<section>
	
    <span id="detail_img">
    	<img src="img/shopping_img/dogfood<% out.println(dto.get(0).getIndex());%>.png">
    </span>
    	<!-- 가격 천단위 컴마 찍기 -->
	   		<% 
	   			int price = dto.get(0).getPd_price();
	   			String priceComma = String.format("%, d", price);
	   		%>
	<div id="pd_detail">
		
		<div>
			<h1><a href="#"><% out.println(dto.get(0).getPd_desc()); %></a></h1>
		</div>
		
		<div>
			<span>가격</span>
			<span><a href="#"><% out.println(priceComma); %> ￦</a></span>
		</div>
		
		<div>
			<ul id="amount_box">
				<li id="amount">수량</li>
				<li style="padding-top:4px;">
					<ul id="count_box">
						<li><a href="javascript:void(0);" id="decreaseQuantity">-</a></li>
						<li><span id="numberUpDown">1</span></li>
						<!-- <li><input type="text" value="1" readonly /></li>  -->
						<li><a href="javascript:void(0);" id="increaseQuantity">+</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="priceDisplay" >
			<h1><%= price * 3 %> ￦</h1>
		</div>

       </div>
       <% String id = (String)session.getAttribute("id");%>
    		<% if(id != null ){ %>
    		<input type="hidden" name="cart_name" value="<%= dto.get(0).getPd_name()%>"/>
	    <ul id="buyCartBtn">
	       <li id="cartBtn"><input type="button" value="장바구니" /></li>
	       <li id="buyBtn"><input type="submit" value="결제하기" /></li>
	    </ul>
	    <%} %>
	    
	
	<hr />
	    
	<article id="productDetail_list">
		<ul>
			<li>유통기한: 2020-12-28 이후인 상품</li>
			<li>수량: 1개</li>
			<li>기능: 일반사료</li>
			<li>맛: 본상품선택</li>
			<li>입자크기: 보통(8~13mm)</li>
		</ul>
	</article>
	
	<hr style="clear:both;"/>
	
	<article id="productDetail_img">
		<img src="img/productDetail_img/ANF1.jpg" />
		<img src="img/productDetail_img/ANF2.jpg" />
		<img src="img/productDetail_img/ANF3.jpg" />
	</article> 
           
	</section>
	<div>
		<jsp:include page="footer/footer.jsp" />
  </div>
</form>
</body>
</html>