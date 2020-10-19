<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  	<link rel="stylesheet" type="text/css" href="css/community_css/htboard.css" />
 	<link rel="stylesheet" type="text/css" href="css/community_css/community_main.css" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
 	
 	
</head>
<body>
 <%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList"); %>
 
	<form name="form" method="post" action="ht_updateprocess.bo?code_no=<%=dto.get(0).getCode_no()%>">
		<!-- 로그아웃 다이얼로그 -->
	    <div id="logout_dialog" title="logout"  >
	    	로그아웃 하시겠습니까?
	    </div>
	    
		<!-- 메뉴 왼쪽 드롭다운 -->
	    <div id="dropdown">
	  		<jsp:include page="mainMenu_Left.jsp" />
		</div>
		
	
	    <!-- 로그인 유지 -->
	    <div id="login_Ing">
	    	<jsp:include page="js/main_js/header.jsp" />
	    </div>
	   
 
 
 
 
<nav style=" position:absolute; top:0; left:0; right:0; margin:0; padding:0; height:300px; border-bottom:1px solid gray;"><img src="img/headerbanner/dogparkbannerheader.jpg" style="clear:both;width:100%; height:100%;"/></nav>
<section id="ht_update">
	<textarea name="ht_read_contents" id="ht_read_contents"> <%out.println(dto.get(0).getHt_contents());%></textarea>
</section>
<aside id="ht_aside">
<h3 style="text-align:center;">프로필</h3>
<div><img src="img/htboard_img/wellsi_banner.jpg" style="width:250px; height:100px;"/></div>
<% String id = (String)session.getAttribute("id");%>
<div name="ht_read_writer" id="ht_read_writer"><%out.println(id);%></div>
<input type="submit" value="수정 완료" id="ht_text_update2"/>
</aside>
  <div>
		<jsp:include page="footer/footer.jsp" />
  </div>
</form>
</body>
</html>