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
 <link rel="stylesheet" type="text/css" href="css/ht_board_css/htboard.css">
</head>
<body>
<%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList"); %>
 <!-- 로그인 유지 -->
    <div id="login_Ing">
    	<a href="#">
    	<%= session.getAttribute("id") %>님 환영합니다.</a>
    	<a href="#">
                <svg id="svg_logout" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-door-open-fill"  xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M1.5 15a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2.5A1.5 1.5 0 0 0 11.5 1H11V.5a.5.5 0 0 0-.57-.495l-7 1A.5.5 0 0 0 3 1.5V15H1.5zM11 2v13h1V2.5a.5.5 0 0 0-.5-.5H11zm-2.5 8c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
                </svg>
            </a>
    </div>
 <section>
	  <article>
		<span id="board_ph">꿀팁</span><input type="button" value="글쓰기" id="write_button1"/><input type="text" placeholder="Search" id="search_bar"/>
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
	  	<input type="button" value="글쓰기" id="write_button2" onClick="location.href='HT_Write.jsp'"/>
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