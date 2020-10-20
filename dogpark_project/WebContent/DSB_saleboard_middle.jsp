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
 
 <!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
	
	<!-- css 사용 -->

  	<link rel="stylesheet" type="text/css" href="css/Dogsale_css/dsbboard.css?ver=1" />
 	<link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=2" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 	
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
    
<nav style=" position:absolute; top:0; left:0; right:0; margin:0; padding:0; height:300px; border-bottom:1px solid gray;"><img src="img/headerbanner/dogparkbannerheader.jpg" style="clear:both;width:100%; height:100%;"/></nav>
 <section class="dsb_board_contents">
	  <div>
		<span id="board_ph">분양 문의 게시판</span><input type="button" value="검색" id="ht_search_button"/><input type="text" placeholder="Search" id="search_bar"/>
	  </div>
	  <hr style="clear:both;" />
	  <img src="img/Dogsale_img/inquarybanner.jpg" style="width:100%;"/>
<hr style="clear:both;" />
<h1 style="text-align:center;"><a href="">중형견</a> <a href="">대형견</a></h1>
<%
if(dto != null && listCount > 0){
%>
		<%for(int i=0;i<dto.size();i++){%>
		<a href="dsb_boardread.bo?dpd_name=<%out.println(dto.get(i).getDpd_name());%>"class="dsb_box">
				<img src="img/Dogsale_img/<%out.println(dto.get(i).getDpd_img());%>" class="dsb_pro_img"/>
				<div class="dsb_box_contents">
					<div class="dsb_board_name_detail"><%out.println(dto.get(i).getDpd_name());%> </div>
					<div class="dsb_board_birth_detail"><%out.println(dto.get(i).getDpd_year());%>년<%out.println(dto.get(i).getDpd_month());%>월<%out.println(dto.get(i).getDpd_day());%>일 </div>
					<div class="dsb_board_count_detail"><%out.println(dto.get(i).getDpd_species());%> </div>
					<div class="dsb_board_date_detail"><%out.println(dto.get(i).getDpd_sex());%> </div>
				</div>
		</a>
		<%} %>
	  <article style="clear:both;">
	  	<input type="button" value="글쓰기" id="write_button1" onClick="location.href='DSB_Write.jsp'"/>
	  </article>
<section class="pageList">
		<%if(nowPage<=1){ %>
		[이전]&nbsp;
		<%}else{ %>
		<a href="dsb_boardList.bo?page=<%=nowPage-1 %>">[이전]</a>&nbsp;
		<%} %>

		<%for(int a=startPage;a<=endPage;a++){
				if(a==nowPage){%>
		<%=a %>
		<%}else{ %>
		<a href="dsb_boardList.bo?page=<%=a %>"class="pageNum"><%=a %>
		</a>
		<%} %>
		<%} %>

		<%if(nowPage>=maxPage){ %>
		[다음]
		<%}else{ %>
		<a href="dsb_boardList.bo?page=<%=nowPage+1 %>">&nbsp;[다음]</a>
		<%} %>
	</section>
	<%
    }else{
	%>
	<section class="emptyArea">등록된 글이 없습니다.
	 <article style="clear:both;">
	  	<input type="button" value="글쓰기" id="write_button1" onClick="location.href='DSB_Write.jsp'"/>
	  </article></section>
	<%}%>
  </section>
  		<div>
			<jsp:include page="footer/footer.jsp" />
		</div>
  </form>
</body>
</html>