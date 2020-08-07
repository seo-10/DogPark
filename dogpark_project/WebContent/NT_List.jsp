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
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
    <!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/notice_js/notice.js"></script>
    
    <!-- 부트스트랩 modal css, js연결 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
    
   
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
			
				<a href="#">
	                <svg id="svg_login" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-door-closed-fill"  xmlns="http://www.w3.org/2000/svg">
	                <path fill-rule="evenodd" d="M4 1a1 1 0 0 0-1 1v13H1.5a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2a1 1 0 0 0-1-1H4zm2 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
	                </svg>
	            </a>
	            
	            <a href="#">
	                <svg id="svg_join" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-plus-fill"  xmlns="http://www.w3.org/2000/svg">
	                <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm7.5-3a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
	                <path fill-rule="evenodd" d="M13 7.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
	                </svg>
	            </a>
	        </div>
	    </div>
	
	    <div id="loginBox">
	        <div class="row">
	            <div class="col-md-6 mx-auto p-0">
	                <div class="card">
	                    <div class="login-box">
	                        <div class="login-snip">
	                            <div id="closeBtn"><a href="#">X</a></div> 
	                            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
	                            <div class="login-space">
	                                <div class="login">
	                                    <div class="group"> <label for="user" class="label">Username</label> <input id="user" type="text" class="input" placeholder="Enter your username" name="login_id"> </div>
	                                    <div class="group"> <label for="pass" class="label">Password</label> <input id="pass" type="password" class="input" data-type="password" placeholder="Enter your password" name="login_pw"> </div>
	                                    <div class="group"> <input id="check" type="checkbox" class="check" checked> <label for="check"><span class="icon"></span> Keep me Signed in</label> </div>
	                                    <div class="group"> <input type="submit" class="button" value="Sign In" onclick="javascript: form.action='LoginPro.bo';" /> </div>
	                                    <div class="hr"></div>
	                                    <div class="foot"> <a href="#">Forgot Password?</a> </div>
	                                </div>
	                                <div class="sign-up-form">
	                                    <div class="group"> <label for="user" class="label">Username</label> <input id="user" type="text" class="input" placeholder="Create your Username" name="u_id"> </div>
	                                    <div class="group"> <label for="pass" class="label">Password</label> <input id="pass" type="password" class="input" data-type="password" placeholder="Create your password" name="u_pw"> </div>
	                                    <div class="group"> <label for="pass" class="label">Repeat Password</label> <input id="pass" type="password" class="input" data-type="password" placeholder="Repeat your password"> </div>
	                                    <div class="group"> <label for="pass" class="label">Email Address</label> <input id="pass" type="text" class="input" placeholder="Enter your email address" name="u_email"> </div>
	                                    <div class="group"> <label for="pass" class="label">nickname</label> <input id="pass" type="text" class="input"  placeholder="Create your nickname" name="u_nickname"> </div>
	                                    <div class="group"> <input type="submit" class="button" value="Sign Up" onclick="javascript: form.action='SignPro.bo';" /> </div>
	                                    <div class="hr"></div>
	                                    <div class="foot"> <label for="tab-1">Already Member?</label> </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    <!-- 로그인 유지 -->
    <div id="login_Ing">
    	<jsp:include page="header/header.jsp" />
    </div>
    
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
				<% String idvalue = null; %>
    			<%for(int i=0;i<dto.size();i++){%>
    				<% idvalue= "exampleModal"+Integer.toString(i); %>
				<ul>
					<li id="notice_board_No_detail"><%out.println(dto.get(i).getCode_no());%> </li>
					<li id="notice_board_title_detail" ><a href="notice_boardread.bo?code_no=<%out.println(dto.get(i).getCode_no());%>" data-toggle="modal" data-target="#<%=idvalue%>" ><%out.println(dto.get(i).getNt_title()); %></a></li>
					<li id="notice_board_writer_detail" ><%out.println(dto.get(i).getU_id());%> </li>
					<li id="notice_board_count_detail"><%out.println(dto.get(i).getNt_view());%> </li>
					<li id="notice_board_date_detail"><%out.println(dto.get(i).getDate());%> </li>
				</ul>
				<%} %>
				<%for(int i=0;i<dto.size();i++){%>
					<% idvalue= "exampleModal"+Integer.toString(i); %>
				<!-- 공지사항 클릭시 내용 modal로 보이기  -->
				<div class="modal fade" id="<%=idvalue%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				      </div>
				    </div>
				  </div>
				</div> 
				<%} %>

    		</article>
    		
	   		<article id="notice_board_bot">
	   		<span>
	   		<input type="button" value="목록" id="" onclick="location.href='NT_Main.jsp'" />
	   		</span>
	   		<% if(session.getAttribute("id").equals("admin")) { %>
	   		<span>
	   		<input type="button" value="글쓰기" id="" onclick="location.href='NT_Write.jsp'" />
	   		</span>
	   		<%} else if(!session.getAttribute("id").equals(null) && !session.getAttribute("id").equals("admin")) { %>
	   		
	   		<% } else if(session.getAttribute("id").equals(null)) {%>
	   		<span>
	   		<input type="button" value="글쓰기" id="signBtn" />
	   		</span>
			<% } %>	   		
	   		
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
				<a href="notice_list.bo?page=<%=a %>"class="pageNum"><%=a %>
				</a>
				<%} %>
				<%} %>
		
				<%if(nowPage>=maxPage){ %>
				[다음]
				<%}else{ %>
				<a href="notice_list.bo?page=<%=nowPage+1 %>">&nbsp;[다음]</a>
				<%} %>
			</span>
			<%
			}else{
			%>
			<span class="emptyArea">등록된 글이 없습니다.</span>
			<%}%>
			</article> 
    	</section>
 

    </form>
    <!-- 부트스트랩 modal css, js연결 -->    	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
   	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
</body>

</html>