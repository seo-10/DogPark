<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.NoticeDto"%>
<%@page import="com.dogpark.dao.NoticeDao"%>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/notice_css/writeBoard/sample/styles.css?ver=2">
  <link rel="stylesheet" type="text/css" href="css/notice_css/htboard.css?ver=1" />
 <link rel="stylesheet" type="text/css" href="css/notice_css/community_main.css?ver=2" />
</head>
<body>
	
	<form name="form" method="post">
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
    </form>
	

<section id="ht_write">
	<form name="myform" method="post" action="notice_WritePro.bo">

			<h1 id="ht_category_font">공지사항 글쓰기</h1>
			<table id="ht_write_table">
				<tr>
					<td>제목</td>
					<td><input type="text" size="100px" name="nt_title"></td>
				</tr>
			</table>
			<br>

			<textarea name="nt_contents" id="editor">
				내용
			</textarea>
			<div id="ht_writer">작성자 : <input type="text" name="u_id" readonly
				value="admin" /></div>
			<p>
				<input type="submit" value="글등록" id="ht_write_input_btn">
			</p>
	</form>
</section>
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