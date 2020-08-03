<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dogpark.dto.BoardBean"%>
<%@page import="com.dogpark.dao.Dao"%>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/community_css/htboard.css?ver=2" />
 <link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=2" />
</head>
<body>
<%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList"); %>
 <!-- 로그인 유지 -->
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
	                <a href="HT_btn.jsp"><li>커뮤니티</li></a>
	                <a href="#"><li>애견용품</li></a>
	                <a href="#"><li>반려견 LIFE</li></a>
	                
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
 <section class="ht_board_contents">
	  <article>
		<span id="board_ph">꿀팁</span><input type="button" value="검색" id="ht_search_button"/><input type="text" placeholder="Search" id="search_bar"/>
	  </article>
<hr style="clear:both;" />
	  <article class="honeytip_board">
		<ul>
			<li class="honeytip_board_No">No.</li>
			<li class="honeytip_board_name">제목</li>
			<li class="honeytip_board_writer">글쓴이</li>
			<li class="honeytip_board_like">좋아요</li>
			<li class="honeytip_board_count">조회수</li>
			<li class="honeytip_board_date">작성시간</li>
		</ul>
		<%for(int i=0;i<dto.size();i++){%>
				<ul>
					<li class="honeytip_board_No_detail"><%out.println(dto.get(i).getCode_no());%> </li>
					<li class="honeytip_board_name_detail"><a href="boardread.bo?code_no=<%out.println(dto.get(i).getCode_no());%>"><%out.println(dto.get(i).getHt_title());%></a></li>
					<li class="honeytip_board_writer_detail"><%out.println(dto.get(i).getU_id());%> </li>
					<li class="honeytip_board_like_detail"><%out.println(dto.get(i).getHt_like());%> </li>
					<li class="honeytip_board_count_detail"><%out.println(dto.get(i).getHt_view());%> </li>
					<li class="honeytip_board_date_detail"><%out.println(dto.get(i).getDate11());%> </li>
				</ul>
		<%} %>
	  </article>
	  <article>
	  	<input type="button" value="글쓰기" id="write_button1" onClick="location.href='HT_Write.jsp'"/>
	  </article>
	  <nav class="paging-block">
		  <ul class="pagination">
			  <li><a href=""><input type="button" value="<"></a></li>
			  <li><a href="">1</a></li>
			  <li><a href="">2</a></li>
			  <li><a href="">3</a></li>
			  <li><a href="">4</a></li>
			  <li><a href="">5</a></li>
			  <li><a href="">6</a></li>
			  <li><a href="">7</a></li>
			  <li><a href="">8</a></li>
			  <li><a href="">9</a></li>
			  <li><a href=""><input type="button" value=">"></a></li>
		  </ul>
	  </nav>
  </section>
</body>
</html>