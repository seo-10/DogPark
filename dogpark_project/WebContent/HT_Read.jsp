<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.BoardBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- css 사용 -->
 	<link rel="stylesheet" type="text/css" href="css/community_css/writeBoard/sample/styles.css">
  	<link rel="stylesheet" type="text/css" href="css/community_css/htboard.css?ver=4" />
 	<link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=4" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>

</head>
<body>
<%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList"); %>
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




<section id="ht_read">
	<div name="ht_read_contents" id="ht_read_contents"><%out.println(dto.get(0).getHt_contents());%></div>
</section>
<aside id="ht_aside">
<aside><h3>꿀팁 커뮤니티</h3></aside>
<div></div>
<div id="ht_read_title">제목 : <%out.println(dto.get(0).getHt_title());%></div>
<div name="ht_read_writer" id="ht_read_writer">작성자 : <%out.println(dto.get(0).getU_id());%></div>
<div name="ht_read_date" id="ht_read_date">작성날짜 : <%out.println(dto.get(0).getDate11());%></div>
<div id="like_btn">좋아요<img src="img/heart_btn.png"  id="heart_btn"/> </div>
<div id=like_count>좋아요 수 : 10</div>

<% String id = (String)session.getAttribute("id");%>
<% System.out.println(id); %>
<% String dtoId = dto.get(0).getU_id(); %>
<% if(id==null || !id.equals(dtoId)){%>

<% } else {%>
	<input type="button" value="수정" id="ht_text_update" onclick="location.href='boardmodify.bo?code_no=<%=dto.get(0).getCode_no()%>'"/>
	<input type="button" value="삭제" id="ht_text_delete" onclick="location.href='ht_delete.bo?code_no=<%=dto.get(0).getCode_no()%>'"/>
<% } %>

</aside>
</form>
</body>
</html>