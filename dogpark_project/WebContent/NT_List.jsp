<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.NoticeDto"%>
<%@page import="com.dogpark.dao.NoticeDao"%>
<%@page import="com.dogpark.dto.PageInfo"%>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
	

    <!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

    <!-- 메인인덱스 CSS 사용 -->
    <link rel="stylesheet" type="text/css" href="css/notice_css/notice_main.css?ver=2" />
    <!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css" />
    <!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/notice_js/notice.js"></script>
    
</head>
<body>
	<form name="form" method="post">

<!-- noticeDto 객체설정 -->
<% ArrayList<NoticeDto> dto = (ArrayList<NoticeDto>)request.getAttribute("articleList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount=pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage=pageInfo.getMaxPage();
	int startPage=pageInfo.getStartPage();
	int endPage=pageInfo.getEndPage();
%>

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
    <% System.out.println("session!!!" + session.getAttribute("id")); %>
    <!-- 공지사항 게시판 리스트 -->
   
    <%if(dto != null && listCount > 0){%>
    	<section id="notice_list">
    		<a href="#">NOTICE 공지사항</a>
    		<hr />
    		<article id="notice_board_top">
    			<ul id="notice_board_subject">
    				<li id="notice_board_No">No</li>
    				<li id="notice_board_title">제목</li>
    				<li id="notice_board_writer">글쓴이</li>
    				<li id="notice_board_count">조회수</li>
    				<li id="notice_board_date">작성일</li>
    			</ul>
			
    			<%for(int i=0;i<dto.size();i++){%>
				<ul>
					<li id="notice_board_No_detail"><%out.println(dto.get(i).getCode_no());%> </li>
					<li id="notice_board_title_detail" ><a href="notice_boardread.bo?code_no=<%out.println(dto.get(i).getCode_no());%>" ><%out.println(dto.get(i).getNt_title()); %></a></li>
					<li id="notice_board_writer_detail" ><%out.println(dto.get(i).getU_id());%> </li>
					<li id="notice_board_count_detail"><%out.println(dto.get(i).getNt_view());%> </li>
					<li id="notice_board_date_detail"><%out.println(dto.get(i).getDate());%> </li>
				</ul>
				<%} %>
    		</article>
    		
    		<article id="notice_board_bot">
    		<% String id = (String)session.getAttribute("id");%>
    		<% if(id == null || !id.equals("admin")){ %>
		   		<span>
		   			<input type="button" value="목록" id="" onclick="location.href='NT_List.jsp'" />
		   		</span>
	   		<%} else if(id.equals("admin")){%>
	   			<span>
		   			<input type="button" value="글쓰기" id="" onclick="location.href='NT_Write.jsp'" />
		   		</span>
		   		<span>
		   			<input type="button" value="목록" id="" onclick="location.href='notice_list.bo'" />
		   		</span>
	   		<%} %>
	   		<!-- <span>
	   		<input type="button" value="글쓰기" id="signBtn" />
	   		</span>  -->
	   		
			<span class="pageList">
				<%if(nowPage<=1){ %>
					[이전]&nbsp;
				<%}else{ %>
					<a href="notice_list.bo?page=<%=nowPage-1 %>">[이전]</a>&nbsp;
				<%} %>
		
				<%for(int a=startPage;a<=endPage;a++){
						if(a==nowPage){%>
							<%=a %>
							<%}else{ %>
								<a href="notice_list.bo?page=<%=a %>"class="pageNum"><%=a %></a>
							<%} %>
				<%} %>
		
				<%if(nowPage>=maxPage){ %>
				[다음]
				<%}else{ %>
					<a href="notice_list.bo?page=<%=nowPage+1 %>">&nbsp;[다음]</a>
				<%} %>
			</span>
			<% }else{ %>
			<span class="emptyArea">등록된 글이 없습니다.</span>
			<%}%>
			</article> 
    	</section>	
    </form>
</body>

</html>