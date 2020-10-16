
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.dogpark.dao.Dao"%>
<%@page import="com.dogpark.dto.Dto"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
<nav style=" position:absolute; top:0; left:0; right:0; margin:0; padding:0; height:400px;"><img src="img/htboard_img//wellsi_banner.jpg" style="clear:both;width:100%; height:100%;"/></nav>
<section id="dj_write">
	<form name="myform" method="post" action="dj_boardWritePro.bo">

			<h1 id="dj_category_font">반려견 자랑 커뮤니티 글작성</h1>
			<table id="dj_write_table">
				<tr>
					<td>제목</td>
					<td><input type="text" size="100px" name="dj_title"></td>
				</tr>
			</table>
			<br>

			<textarea name="dj_contents" id="editor">
				내용
			</textarea>
			<div id="dj_writer">작성자 : <input type="text" name="dj_writer" readonly
				value="<%out.println(session.getAttribute("id"));%>" /></div>
			<p>
				<input type="submit" value="글등록" id="dj_write_input_btn">
			</p>
	</form>
</section>
<div>
		<jsp:include page="footer/footer.jsp" />
  </div>
		<script src="https://cdn.ckeditor.com/ckeditor5/20.0.0/classic/ckeditor.js"></script>
 	<script>
	 ClassicEditor
	 .create(document.querySelector('#editor'))
	 .then( editor => {
		 console.log( editor );
	 } )
	 .catch( error => {
		 console.error( error );
	 } );
	</script>

</body>
</html>