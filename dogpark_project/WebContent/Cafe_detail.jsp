<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dogpark.dto.CafeDto" %>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/Breeding_css/Breedingboard.css?ver=1.6" />
 <link rel="stylesheet" type="text/css" href="css/Breeding_css/breedingm.css" />
 <link rel="stylesheet" type="text/css" href="css/Breeding_css/Breeding_profile.css?ver=3" />
 <script type="text/javascript" src="js/Breeding_js/Breeding.js?ver=1.1"></script>
</head>
	
<body>
<div id="login_Ing">
    	<jsp:include page="header/header.jsp" />
    </div>
<script>
</script>

	<div id="login_Ing">
    </div>
		<div id="dropdown">
	        <svg id="svg1" width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-grid-fill" xmlns="http://www.w3.org/2000/svg">
	            <path fill-rule="evenodd" d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z"/>
	        </svg>
	        <a href="#"><h1>DOG PARK</h1></a>
	
	        <div id="menuBar">
	            <ul>
	                <a href="#"><li>소개 및 공지</li></a>
	                <a href="#"><li>강아지 분양</li></a>
	                <a href="#"><li>훈련 및 정보</li></a>
	                <a href="community_main.jsp"><li>커뮤니티</li></a>
	                <a href="#"><li>애견용품</li></a>
	                <a href="DogLife_select.jsp"><li>반려견 LIFE</li></a>
	                
	            </ul>
	
	            <a href="#">
	                <svg id="svg_login" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-door-closed-fill"  xmlns="http://www.w3.org/2000/svg">
	                <path fill-rule="evenodd" d="M4 1a1 1 0 0 0-1 1v13H1.5a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2a1 1 0 0 0-1-1H4zm2 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
	                </svg>
	            </a>
	            
	            <a href="#">
	                <svg id="svg_join" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-plus-fill"  xmlns="http://www.w3.org/2000/svg">
	                <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm7.5-3a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
	                <path fill-rule="evenodd" d="M13 7.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
	                </svg>
	            </a>
	        </div>
	    </div>
	<%ArrayList<CafeDto> cafedto = (ArrayList<CafeDto>)request.getAttribute("cafename");%>
	<form action="Breedingsearch.bo" method="post">
		 <section class="community_contents">
	   		<div id="breeding_title">
	   			<!-- 애견카페명 불러오기 -->
	   			<%
					if(cafedto != null){
					%>
	   				<%for(int i=0;i<cafedto.size();i++){%>
	   				<h1 style="font-family:bold; font-size:30px;"><%out.println(cafedto.get(i).getCafe_name()); %></h1><hr>
	   				<div id="ImgBox" style="">
	   				<span><img src="img/doglife_cafe_img/<%out.println(cafedto.get(i).getCafe_img1()); %>"></span>
	   				<span><img src="img/doglife_cafe_img/<%out.println(cafedto.get(i).getCafe_img2()); %>"></span>
	   				<span><img src="img/doglife_cafe_img/<%out.println(cafedto.get(i).getCafe_img3()); %>"></span></div>
	   				<h3>영업 시간 : <%out.println(cafedto.get(i).getCafe_hours()); %></h3><hr>
	   				<h3 style="line-height:30px;">카페 정보 : <%out.println(cafedto.get(i).getCafe_info()); %></h3><hr>
	   				<h3>주소 : <%out.println(cafedto.get(i).getCafe_adr()); %></h3><hr>
	   				<h3>전화번호 : <%out.println(cafedto.get(i).getCafe_tel()); %></h3>
	   				
	   				<%} }%>
	   			
	   		</div>
	   				
	   		
	   		</section>
  	</form>
	
</body>
</html>