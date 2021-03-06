<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dogpark.dto.BreedingDto" %>
<%@page import="com.dogpark.dto.PageInfo"%>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/Breeding_css/Breedingboard.css?ver=1.4" />
 <link rel="stylesheet" type="text/css" href="css/Breeding_css/breedingm.css?ver=1.2" />
 <link rel="stylesheet" type="text/css" href="css/Breeding_css/Breeding_profile.css?ver=2" />
 <script type="text/javascript" src="js/Breeding_js/Breeding.js?ver=1.1"></script>
</head>

<body>
	<%ArrayList<BreedingDto> dto = (ArrayList<BreedingDto>)request.getAttribute("articleList");
 	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount=pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage=pageInfo.getMaxPage();
	int startPage=pageInfo.getStartPage();
	int endPage=pageInfo.getEndPage();
	%>
	<div id="login_Ing">
    	<jsp:include page="header/header.jsp" />
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
	<form action="/Breeding.bo" method="post">
		 <section class="community_contents">
	   		<div id="breeding_title1">
	   			<img src="img/DogLife_select_img/breedingtitle.png">
	   			<hr>브리딩 가능한 반려견
	   			
	   		</div>
	   			<div style="color:white; float:left; width:1298px; height:700px; text-align: center;">
	   			
	   				
	   				<%
					if(dto != null && listCount > 0){
					%>
	   				<%for(int i=0;i<dto.size();i++){%>
	   				
	   			<figure class="snip1344"><img src="img/userpet_img/<%out.println(dto.get(i).getD_img()); %>"  class="background"/><img src="img/userpet_img/<%out.println(dto.get(i).getD_img()); %>" class="profile"/>
 				 <figcaption>
    			<h3><%out.println(dto.get(i).getD_name());%><span><%out.println(dto.get(i).getNickname());%><br><%out.println(dto.get(i).getD_sex()); %></span></h3>
    			<div class="icons"><a href="javascript:alert('<%=dto.get(i).getPhone_num()%>')"> <i class="ion-social-vimeo-outline"></i></a></div>
  				</figcaption>
				</figure>

					<%} %>
	   				 
	   				</div>
	   				<a href="Breeding.bo"><input type="button" value="반려견 전체보기" style="width:150px; background-color:black; border-radius:20px; color:white; height:50px; position:absolute; left:575px; top:900px;"></a>
	   				<div style="color:black; position:absolute; top:850px; left:595px;">
				<%if(nowPage<=1){ %>
				[이전]&nbsp;
				<%}else{ %>
				<a href="Breedingsearch.bo?page=<%=nowPage-1 %>">[이전]</a>&nbsp;
				<%} %>

				<%for(int a=startPage;a<=endPage;a++){
				if(a==nowPage){%>
				<%=a %>
				<%}else{ %>
				<a href="Breedingsearch.bo?page=<%=a %>"class="pageNum"><%=a %>
				</a>
				<%} %>
				<%} %>

				<%if(nowPage>=maxPage){ %>
						[다음]
				<%}else{ %>
				<a href="Breedingsearch.bo?page=<%=nowPage+1 %>">&nbsp;[다음]</a>
				<%} %>
				</section>	 
				<%
				}else{
				%>
				<section class="emptyArea">등록된 글이 없습니다.</section>
				<%}%>
				
  		</div>
  	</form>
	
</body>
</html>