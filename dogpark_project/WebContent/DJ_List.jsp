<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dogpark.dto.DogjarangDto"%>
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
    <!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
	
	<!-- css 사용 -->
 	<link rel="stylesheet" type="text/css" href="css/community_css/writeBoard/sample/styles.css?ver=2">
  	<link rel="stylesheet" type="text/css" href="css/community_css/djboard.css" />
 	<link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=4" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
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
<%ArrayList<DogjarangDto> dto = (ArrayList<DogjarangDto>)request.getAttribute("articleList");
 PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount=pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage=pageInfo.getMaxPage();
	int startPage=pageInfo.getStartPage();
	int endPage=pageInfo.getEndPage();
	%>

<nav style=" position:absolute; top:0; left:0; right:0; margin:0; padding:0; height:400px;"><img src="img/htboard_img//wellsi_banner.jpg" style="clear:both;width:100%; height:100%;"/></nav>
 <section class="dj_board_contents">
	  <div>
		<span id="board_ph">반려견 자랑</span><input type="button" value="검색" id="ht_search_button"/><input type="text" placeholder="Search" id="search_bar"/>
	  </div>
<hr style="clear:both;" />
<%
if(dto != null && listCount > 0){
%>
		<%for(int i=0;i<dto.size();i++){%>
		<a href="dj_boardread.bo?code_no=<%out.println(dto.get(i).getCode_no());%>"class="dj_box">
				<img src="img/htboard_img/<%out.println(dto.get(i).getDj_file());%>" class="dj_pro_img"/>
				<ul class="dj_box_contents">
					<li class="dj_board_No_detail">No.<%out.println(dto.get(i).getCode_no());%> </li>
					<li class="dj_board_name_detail">제목:<%out.println(dto.get(i).getDj_title());%></li>
					<li class="dj_board_writer_detail">작성자:<%out.println(dto.get(i).getU_id());%> </li>
					<li class="dj_board_like_detail">좋아요 수:<%out.println(dto.get(i).getDj_like());%> </li>
					<li class="dj_board_count_detail">조회수:<%out.println(dto.get(i).getDj_view());%> </li>
					<li class="dj_board_date_detail">작성시간:<%out.println(dto.get(i).getDate());%> </li>
				</ul>
		</a>
		<%} %>
	  <article style="clear:both;">
	  	<input type="button" value="글쓰기" id="write_button1" onClick="location.href='DJ_Write.jsp'"/>
	  </article>
<article class="pageList">
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
	</article>
	<%
    }else{
	%>
	<article class="emptyArea">등록된 글이 없습니다.</article>
	<%}%>
  </section>
   <div>
		<jsp:include page="footer/footer.jsp" />
  </div>
</body>
</html>