<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.BoardBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/ht_board_css/htboard.css">
</head>
<body>
<%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList"); %>
<section>
	<div name="ht_read_contents" id="ht_read_contents"><%out.println(dto.get(0).getHt_contents());%></div>
	<article name="ht_comment_read" id="ht_comment_read">댓글</article>
	<article name="ht_comment_write" id="ht_comment_write">댓글 입력 란</article><input type="button" value="댓글등록" id="ht_comment_btn"/>
</section>
<aside id="ht_aside">
<aside><h3>꿀팁 커뮤니티</h3></aside>
<div></div>
<article id="ht_read_title">제목 : <%out.println(dto.get(0).getHt_title());%></article>
<article name="ht_read_writer" id="ht_read_writer">작성자 : <%out.println(dto.get(0).getU_id());%></article>
<article name="ht_read_date" id="ht_read_date">작성날짜 : <%out.println(dto.get(0).getDate11());%></article>
<article id="like_btn">좋아요<img src="img/heart_btn.png"  id="heart_btn"/> </article>
<article id=like_count>좋아요 수 : 10</article>
 
<% if(session.getAttribute("id").equals(dto.get(0).getU_id())){
%>
<input type="button" value="수정" id="ht_text_update" onclick="location.href='ht_contents_update.jsp?code_no=<%=dto.get(0).getCode_no()%>'"/>
<input type="button" value="삭제" id="ht_text_delete" onclick="location.href='ht_deleteprocess.jsp?code_no=<%=dto.get(0).getCode_no()%>'"/>
<%} %>

</aside>
</body>
</html>