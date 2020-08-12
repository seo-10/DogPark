<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.NoticeDto"%>
<%@page import="com.dogpark.dao.NoticeDao"%>
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
    <link rel="stylesheet" type="text/css" href="css/shop_css/shop_main.css?ver=1" />
    <!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
    <!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/shop_js/shop.js"></script>
   
   
</head>
<body>
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
	    	<jsp:include page="js/notice_js/header.jsp" />
	    </div>
	   
    <div style="height:100px;">
    </div>
    
    	<section>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood1.jpg">
                <ul>
                    <li class="foodName"><a href="#">하림펫푸드 더리얼 그레인프리 크런치 소고기 어덜트 반려견 사료, 소, 2.4kg</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood2.jpg">
                <ul>
                    <li class="foodName"><a href="#">도비 밸런스 전연련용 중소형견 애견사료, 곡물, 5kg</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood12.jpg">
                <ul>
                    <li class="foodName"><a href="#">내츄럴코어 전연령용 치킨앤연어 에코플러스1 그레인프리 애견사료 7kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood3.jpg">
                <ul>
                    <li class="foodName"><a href="#">나우프레쉬 그레인프리 스몰브리드 어덜트 사료, 2kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <hr style="border:1px solid rgba(150, 141, 141, 0.452); clear:both;"/>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood4.jpg">
                <ul>
                    <li class="foodName"><a href="#">ANF 전연령 유기농 6Free 연어 애견사료, 2kg 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood5.jpg">
                <ul>
                    <li class="foodName"><a href="#">네츄럴코어 전연령 비프앤치킨 에코플러스1 그레인프리 애견사료, 7kg 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood6.jpg">
                <ul>
                    <li class="foodName"><a href="#">하림펫푸드 더리얼 그레인프리 크런치 소고기 어덜트 반려견 사료, 소, 1.7kg</a></li>
                    <li class="foodPrice"><a href="#">300,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood7.jpg">
                <ul>
                    <li class="foodName"><a href="#">닥터독 1년 이상, 피부모질, 닥터독 사료 2kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <hr style="border:1px solid rgba(150, 141, 141, 0.452); clear:both;"/>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood8.jpg">
                <ul>
                    <li class="foodName"><a href="#">ANF 전연령 소고기 유기농 6Free 애견사료, 2kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood9.jpg">
                <ul>
                    <li class="foodName"><a href="#">하림펫푸드 더리얼 그레인프리 크런치 소고기 어덜트 반려견 사료, 소, 2.4kg</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood10.jpg">
                <ul>
                    <li class="foodName"><a href="#">카길 건강백서 전연령 생선 건강한 관절 애견사료, 3.9kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood11.jpg">
                <ul>
                    <li class="foodName"><a href="#">나우프레쉬 퍼피 칠면조 그레인프리 스몰브리드 애견사료, 2kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <hr style="border:1px solid rgba(150, 141, 141, 0.452); clear:both;"/>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood12.jpg">
                <ul>
                    <li class="foodName"><a href="#">네츄럴코어 전연령 비프앤치킨 에코플러스1 그레인프리 애견사료, 7kg 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood13.jpg">
                <ul>
                    <li class="foodName"><a href="#">카길 뉴트리나 울트라 초이스 애견사료, 18kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood14.jpg">
                <ul>
                    <li class="foodName"><a href="#">한끼뚝딱 황태와 소고기 습식사료, 3kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood15.jpg">
                <ul>
                    <li class="foodName"><a href="#">도그랑 클래식 전연령 사료 중소형, 5kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <hr style="border:1px solid rgba(150, 141, 141, 0.452); clear:both;"/>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood16.jpg">
                <ul>
                    <li class="foodName"><a href="#">로얄케닌 대형견 어덜트 애견사료, 1.2kg, 2개</a></li>
                    <li class="foodPrice"><a href="#">350,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood17.jpg">
                <ul>
                    <li class="foodName"><a href="#">로얄캐닌 푸들 어덜트 전용 1.5kg, 2개, 닭, 1.5kg</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood18.jpg">
                <ul>
                    <li class="foodName"><a href="#">go! 전연령 연어 레시피 LID 그레인프리, 애견사료, 2kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood19.jpg">
                <ul>
                    <li class="foodName"><a href="#">더독 닥터소프트 치킨 프리미엄 노령 소프트사료, 1.5kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <hr style="border:1px solid rgba(150, 141, 141, 0.452); clear:both;"/>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood20.jpg">
                <ul>
                    <li class="foodName"><a href="#">펫발란스 어덜트 곡물 미디엄 & 라지 브리드 치킨 라이스 반려견 사료, 10kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood21.jpg">
                <ul>
                    <li class="foodName"><a href="#">퓨리나 프로플랜 퍼포먼스 애견사료, 17kg, 1개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood22.jpg">
                <ul>
                    <li class="foodName"><a href="#">목우촌 전연령용 오리 펫9단 푸들 전용사료, 2kg</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <article style="float: left;">
                <img src="img/shopping_img/dogfood23.jpg">
                <ul>
                    <li class="foodName"><a href="#">닥터도비 애견 말랑말랑 스킨앤코트 사료 오리고기, 1.2kg, 2개</a></li>
                    <li class="foodPrice"><a href="#">400,000원</a></li>
                </ul>
                <div class="starRev">
                    <span class="starR1 on">별1_왼쪽</span>
                    <span class="starR2">별1_오른쪽</span>
                    <span class="starR1">별2_왼쪽</span>
                    <span class="starR2">별2_오른쪽</span>
                    <span class="starR1">별3_왼쪽</span>
                    <span class="starR2">별3_오른쪽</span>
                    <span class="starR1">별4_왼쪽</span>
                    <span class="starR2">별4_오른쪽</span>
                    <span class="starR1">별5_왼쪽</span>
                    <span class="starR2">별5_오른쪽</span>
                </div>
            </article>
            <hr style="border:1px solid rgba(150, 141, 141, 0.452); clear:both;"/>
        </section>
	</form>
</body>

</html>