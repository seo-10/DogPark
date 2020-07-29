<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dogpark.dto.PageInfo"%>
<%@page import="com.dogpark.dto.BoardBean"%>

<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<BoardBean> articleList=(ArrayList<BoardBean>)request.getAttribute("articleList");
    PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount=pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage=pageInfo.getMaxPage();
	int startPage=pageInfo.getStartPage();
	int endPage=pageInfo.getEndPage();
%>
	<section id="listForm">
		<h2>
			글 목록<a href="boardWriteForm.bo">게시판글쓰기</a>
		</h2>
		<table>
			<%
if(articleList != null && listCount > 0){
%>

			<tr id="tr_top">
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>조회수</td>
				<td>날짜</td>
			</tr>

			<%
		for(int i=0;i<articleList.size();i++){	
	%>
			<tr>
				<td><%=articleList.get(i).getCode_no()%></td>
				<td><a href="boardDetail.bo?board_num=<%=articleList.get(i).getCode_no()%>&page=<%=nowPage%>"></a></td>
				<td><%=articleList.get(i).getHt_title()%></td>
				<td><%=articleList.get(i).getU_id() %></td>
				<td><%=articleList.get(i).getHt_view() %></td>
				<td><%=articleList.get(i).getDate11() %></td>
			</tr>
		<%} %>
		</table>
	</section>

	<section id="pageList">
		<%if(nowPage<=1){ %>
		[이전]&nbsp;
		<%}else{ %>
		<a href="boardList.bo?page=<%=nowPage-1 %>">[이전]</a>&nbsp;
		<%} %>

		<%for(int a=startPage;a<=endPage;a++){
				if(a==nowPage){%>
		[<%=a %>]
		<%}else{ %>
		<a href="boardList.bo?page=<%=a %>">[<%=a %>]
		</a>&nbsp;
		<%} %>
		<%} %>

		<%if(nowPage>=maxPage){ %>
		[다음]
		<%}else{ %>
		<a href="boardList.bo?page=<%=nowPage+1 %>">[다음]</a>
		<%} %>
	</section>
	<%
	}
	else{
	%>
	<section id="emptyArea">등록된 글이 없습니다.</section>
	<%
	}
	%>
</body>
</html>