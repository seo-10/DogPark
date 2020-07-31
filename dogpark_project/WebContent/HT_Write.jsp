
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
 <link rel="stylesheet" type="text/css" href="css/ht_board_css/writeBoard/sample/styles.css?ver=1">
</head>
<body>

	<form name="myform" method="post" action="boardWritePro.bo">

		<section style="width: 800px; margin: 0 auto;">
			<h1>Classic editor</h1>
			<table>
				<tr>
					<td>제목</td>
					<td><input type="text" size="100px" name="ht_title"></td>
				</tr>
			</table>
			<br>

			<textarea name="ht_contents" id="editor">
				내용
			</textarea>
			작성자 : <input type="text" name="ht_writer"
				value="<%out.println(session.getAttribute("id"));%>" />
			<p>
				<input type="submit" value="글등록">
			</p>

		</section>

	</form>
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