<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dogpark.dto.Dogpark_dogsDto"%>
<%@page import="com.dogpark.dto.PageInfo"%>
<%@page import="com.dogpark.dao.Dao"%>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/community_css/htboard.css?ver=1" />
 <link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=2" />
  <!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

    <!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
    <!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 
 <!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
</head>
<body>
	
<%ArrayList<Dogpark_dogsDto> dto = (ArrayList<Dogpark_dogsDto>)request.getAttribute("articleList");
 PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount=pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage=pageInfo.getMaxPage();
	int startPage=pageInfo.getStartPage();
	int endPage=pageInfo.getEndPage();
	%>
 
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
    	<jsp:include page="js/community_js/header.jsp" />
    </div>
    </form>
 
 
 
 <section class="dj_board_contents">
	  <div>
		<span id="board_ph">분양 문의 게시판</span><input type="button" value="검색" id="ht_search_button"/><input type="text" placeholder="Search" id="search_bar"/>
	  </div>
<hr style="clear:both;" />
<h1 style="text-align:center;">중형견</h1>
<%
if(dto != null && listCount > 0){
%>
		<%for(int i=0;i<dto.size();i++){%>
		<a href="dsb_boardread.bo?dpd_name=<%out.println(dto.get(i).getDpd_name());%>"class="dj_box">
				<img src="img/htboard_img/honeytip.gif" class="dj_pro_img"/>
				<ul class="dj_box_contents">
					<li class="dj_board_No_detail">이름:<%out.println(dto.get(i).getDpd_name());%> </li>
					<li class="dj_board_name_detail">생년월일:<%out.println(dto.get(i).getDpd_year());%>-<%out.println(dto.get(i).getDpd_month());%>-<%out.println(dto.get(i).getDpd_day());%> </li>
					<li class="dj_board_count_detail"><%out.println(dto.get(i).getDpd_character());%> </li>
					<li class="dj_board_date_detail">성별:<%out.println(dto.get(i).getDpd_sex());%> </li>
				</ul>
		</a>
		<%} %>
	  <article style="clear:both;">
	  	<input type="button" value="글쓰기" id="write_button1" onClick="location.href='DJ_Write.jsp'"/>
	  </article>
<section class="pageList">
		<%if(nowPage<=1){ %>
		[이전]&nbsp;
		<%}else{ %>
		<a href="dj_boardList.bo?page=<%=nowPage-1 %>">[이전]</a>&nbsp;
		<%} %>

		<%for(int a=startPage;a<=endPage;a++){
				if(a==nowPage){%>
		<%=a %>
		<%}else{ %>
		<a href="dj_boardList.bo?page=<%=a %>"class="pageNum"><%=a %>
		</a>
		<%} %>
		<%} %>

		<%if(nowPage>=maxPage){ %>
		[다음]
		<%}else{ %>
		<a href="dj_boardList.bo?page=<%=nowPage+1 %>">&nbsp;[다음]</a>
		<%} %>
	</section>
	<%
    }else{
	%>
	<section class="emptyArea">등록된 글이 없습니다.</section>
	<%}%>
  </section>
</body>
</html>