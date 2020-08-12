<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dogpark.dto.BoardBean"%>
<%@page import="com.dogpark.dao.Dao"%>
<%@page import="com.dogpark.dto.PageInfo"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 	
 	<!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
	
	<!-- css 사용 -->
 	<link rel="stylesheet" type="text/css" href="css/community_css/writeBoard/sample/styles.css?ver=2">
  	<link rel="stylesheet" type="text/css" href="css/community_css/htboard.css?ver=1" />
 	<link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=2" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 	
</head>
<body>
<form name="form" method="post">
<%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList");
 PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount=pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage=pageInfo.getMaxPage();
	int startPage=pageInfo.getStartPage();
	int endPage=pageInfo.getEndPage();
	%>
 	
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
    	<jsp:include page="js/community_js/header.jsp" />
    </div>
 	<% System.out.println("session!!!" + session.getAttribute("id")); %>
 
 <section class="ht_board_contents">
	  <article>
		<span id="board_ph">꿀팁</span><input type="button" value="검색" id="ht_search_button"/><input type="text" placeholder="Search" id="search_bar"/>
	  </article>
<hr style="clear:both;" />
<%
if(dto != null && listCount > 0){
%>
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
	  	<% String id = (String)session.getAttribute("id");%>
	  	<% if(id != null){ %>
	  	<input type="button" value="글쓰기" id="write_button1" onClick="location.href='HT_Write.jsp'"/>
	  	<%} else {%>
	  	<%} %>
	  </article>

<section class="pageList">
		<%if(nowPage<=1){ %>
		[이전]&nbsp;
		<%}else{ %>
		<a href="boardList.bo?page=<%=nowPage-1 %>">[이전]</a>&nbsp;
		<%} %>

		<%for(int a=startPage;a<=endPage;a++){
				if(a==nowPage){%>
		<%=a %>
		<%}else{ %>
		<a href="boardList.bo?page=<%=a %>"class="pageNum"><%=a %>
		</a>
		<%} %>
		<%} %>

		<%if(nowPage>=maxPage){ %>
		[다음]
		<%}else{ %>
		<a href="boardList.bo?page=<%=nowPage+1 %>">&nbsp;[다음]</a>
		<%} %>
	</section>
	<%
    }else{
	%>
	<section class="emptyArea">등록된 글이 없습니다.</section>
	<%}%>
  </section>
  </form>
</body>
</html>