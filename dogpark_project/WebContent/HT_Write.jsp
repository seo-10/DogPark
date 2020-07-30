<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.dogpark.dao.Dao"%>
=======
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.dogpark.dao.signDao"%>
>>>>>>> branch 'master' of https://github.com/seo-10/DogPark.git
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
</head>
<body>

	<form name="myform" method="post" action="honeytip_insert.jsp">

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

</body>
</html>