<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.NoticeDto"%>
<%@page import="com.dogpark.dao.NoticeDao"%>

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
    <!-- <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script> -->

    <!-- 메인인덱스 CSS 사용 -->
    <link rel="stylesheet" type="text/css" href="css/notice_css/notice_main.css?ver=2" />
    <!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
    <!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/notice_js/notice.js"></script>
    
    <!-- 부트스트랩 modal css, js연결 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
    
   
</head>
<body>
<!-- noticeDto 객체설정 -->
<% ArrayList<NoticeDto> dto = (ArrayList<NoticeDto>)request.getAttribute("articleList"); %>
<% ArrayList<NoticeDto> dto1 = (ArrayList<NoticeDto>)request.getAttribute("articleList"); %>
	<!-- 로그아웃 다이얼로그 -->
	<div id="logout_dialog" title="logout"  >
	로그아웃 하시겠습니까?
	</div>
    <!-- 부트스트랩 아이콘 -->
    <div id="dropdown">
        <svg id="svg1" width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-grid-fill" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z"/>
        </svg>
        <a href="mainPage.html"><h1>DOG PARK</h1></a>

        <div id="menuBar">
            <ul>
                <a href="#"><li>소개 및 공지</li></a>
                <a href="#"><li>강아지 분양</li></a>
                <a href="#"><li>훈련 및 정보</li></a>
                <a href="HT_btn.jsp"><li>커뮤니티</li></a>
                <a href="#"><li>애견용품</li></a>
                <a href="#"><li>반려견 LIFE</li></a>
            </ul>

        </div>
    </div>
    <!-- 로그인 유지 -->
    <div id="login_Ing">
    	<jsp:include page="header/header.jsp" />
    </div>
    
    <!-- 공지사항 게시판 리스트 -->
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
					<li id="notice_board_title_detail" ><a href="notice_boardread.bo?code_no=<%out.println(dto.get(i).getCode_no());%>" data-toggle="modal" data-target="#exampleModal" ><%out.println(dto.get(i).getNt_title()); %></a></li>
					<li id="notice_board_writer_detail" ><%out.println(dto.get(i).getU_id());%> </li>
					<li id="notice_board_count_detail"><%out.println(dto.get(i).getNt_view());%> </li>
					<li id="notice_board_date_detail"><%out.println(dto.get(i).getDate());%> </li>
				</ul>
				<!-- 공지사항 클릭시 내용 modal로 보이기  -->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-centered">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel"><%out.println(dto.get(i).getNt_title()); %></h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         				<span aria-hidden="true">&times;</span>
        				</button>
		
				      </div>
				      <div class="modal-body">
				        <%out.println(dto.get(i).getNt_contents()); %>
				      </div>
				      <div class="modal-footer">
				       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				        <button type="button" class="btn btn-primary">Save changes</button>
				      </div>
				    </div>
				  </div>
				</div> 
				<%} %>
				

    		</article>
	   		
	   		<span>
	   		<input type="button" value="목록" id="" onclick="location.href='NT_Main.jsp'" />
	   		</span>
	   		<span>
	   		<input type="button" value="글쓰기" id="" onclick="location.href='NT_Write.jsp'" />
	   		</span>
	   		<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
			  Launch demo modal
			</button>
	   		
    	</section>
    	
    <!-- 부트스트랩 modal css, js연결 -->    	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
   	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
</body>

</html>