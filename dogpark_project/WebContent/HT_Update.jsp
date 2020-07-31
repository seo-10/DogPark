<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.BoardBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList"); %>
<form name="myform" method="post" action="ht_updateprocess.jsp?code_no=<%=dto.get(0).getCode_no()%>">
<section>
	<textarea name="ht_read_contents" id="ht_read_contents"> <%out.println(dto.get(0).getHt_contents());%></textarea>
</section>
<aside id="ht_aside">
<aside><h3>꿀팁 커뮤니티</h3></aside>
<article id="ht_read_title">제목 : <%out.println(dto.get(0).getHt_title());%></article>
<article name="ht_read_writer" id="ht_read_writer">작성자 : <%out.println(dto.get(0).getU_id());%></article>
<article name="ht_read_date" id="ht_read_date">작성날짜 : <%out.println(dto.get(0).getDate11());%></article>
<input type="submit" value="수정 완료" id="ht_text_update"/>
</aside>
</form>
</body>
</html>