<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList"); %>
<section>
	<div name="ht_read_contents" id="ht_read_contents"><%out.println(dto.get(0).getHt_contents());%></div>
	<article name="ht_comment_read" id="ht_comment_read">���</article>
	<article name="ht_comment_write" id="ht_comment_write">��� �Է� ��</article><input type="button" value="��۵��" id="ht_comment_btn"/>
</section>
<aside id="ht_aside">
<aside><h3>���� Ŀ�´�Ƽ</h3></aside>
<div></div>
<article id="ht_read_title">���� : <%out.println(dto.get(0).getHt_title());%></article>
<article name="ht_read_writer" id="ht_read_writer">�ۼ��� : <%out.println(dto.get(0).getU_id());%></article>
<article name="ht_read_date" id="ht_read_date">�ۼ���¥ : <%out.println(dto.get(0).getDate11());%></article>
<article id="like_btn">���ƿ�<img src="img/heart_btn.png"  id="heart_btn"/> </article>
<article id=like_count>���ƿ� �� : 10</article>
<% if(session.getAttribute("id").equals(dto.get(0).getU_id())){
%>
<input type="button" value="����" id="ht_text_update" onclick="location.href='ht_contents_update.jsp?code_no=<%=dto.get(0).getCode_no()%>'"/>
<input type="button" value="����" id="ht_text_delete" onclick="location.href='ht_deleteprocess.jsp?code_no=<%=dto.get(0).getCode_no()%>'"/>
<%} %>

</aside>
</body>
</html>