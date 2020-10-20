<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.Dogpark_dogsDto"%>
<%@page import="com.dogpark.dto.ReplyDto"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
	
	<!-- css 사용 -->
 	<link rel="stylesheet" type="text/css" href="css/community_css/writeBoard/sample/styles.css?ver=2">
  	<link rel="stylesheet" type="text/css" href="css/Dogsale_css/dsbboard.css?ver=4" />
 	<link rel="stylesheet" type="text/css" href="css/Dogsale_css/inquiryofsale_main.css?ver=4" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    <!-- jquery 사용 -->
	<script type="text/javascript" src="js/dogsale_js/dogsale.js"></script>
</head>

<body>
<%ArrayList<Dogpark_dogsDto> dto = (ArrayList<Dogpark_dogsDto>)request.getAttribute("articleList"); %>
<%ArrayList<ReplyDto> replyList = (ArrayList<ReplyDto>)request.getAttribute("replyList"); %>

	<form action="ReplyWriteAction.bo" method="post">
		<!-- 로그아웃 다이얼로그 -->
		<div id="logout_dialog" title="logout">로그아웃 하시겠습니까?</div>

		<!-- 메뉴 왼쪽 드롭다운 -->
		<div id="dropdown">
			<jsp:include page="mainMenu_Left.jsp" />
		</div>

		<!-- 로그인 유지  -->
		<div id="login_Ing">
			<jsp:include page="js/notice_js/header.jsp" />
		</div>
    
    <nav style=" position:absolute; top:0; left:0; right:0; margin:0; padding:0; height:300px; border-bottom:1px solid gray;"><img src="img/headerbanner/dogparkbannerheader.jpg" style="clear:both;width:100%; height:100%;"/></nav>
		
<section id="dsb_read">
<span
				style="margin: 0; padding: 0; font-size: 25pt; border-bottom: 1px solid black;">분양 문의 게시판</span><span style="margin-left: 10px; padding: 0; font-size: 10pt;">나만의 강아지를 픽미픽미</span>
			<div
				style="margin-top: 15px; font-size: 18pt; background-color: #EAEAEA; width: 900px; height: 50px; padding-top: 20px; border-bottom: 1px dotted black; border-top: 2px solid black;">
				<%
					out.println(dto.get(0).getDpd_name());
				%>
			</div>
			<div style="width: 900px; border-bottom: 1px solid black;">
				<span style="">
					<%
						out.println(dto.get(0).getDpd_species());
					%>
				</span><span style="float: right;">
					<%
						out.println(dto.get(0).getDpd_classify());
					%>
				</span>
			</div>
			<div name="ht_read_contents" id="dsb_read_contents">
			<img src="img/Dogsale_img/dogprofile.jpg" style="width:100%"/>
			<img src="img/Dogsale_img/dogprofile2.jpg" style="width:100%"/>
			<div>
				<%
					out.println(dto.get(0).getDpd_character());
				%>
			</div>
			</div>
			
                       <div style=" width:900px; background-color:#f9f9f9;">	
                              <input type="text" name="user_id" value="<%out.println(session.getAttribute("id"));%>" readonly style="border-style: none; padding:5px;"/>
                              <input type="text" name="reply_content" style="width:750px; height:90px;"/>
                              <input type="submit" VALUE=" 댓글 등록" style="border:1px solid gray; width:130px; height:90px;">
                       </div>
               
               <%for(int i=0;i<replyList.size();i++){%>
				<div style=" width:900px; background-color:#f9f9f9;">
					<article style="padding:5px;"><%out.println(replyList.get(i).getReply_no());%> <%out.println(replyList.get(i).getUser_id());%> </article>
					 <input type="text" value="<%out.println(replyList.get(i).getReply_content());%>" style="width:750px; height:90px;"readonly/>
				</div>
		<%} %>

</section>
</form>
<aside id="dsb_aside">
<h3 style="text-align: center;">프로필</h3>
			<div>
				<img src="img/htboard_img/wellsi_banner.jpg"
					style="width: 250px; height: 100px;" />
			</div>
			<%
				String id = (String) session.getAttribute("id");
			%>
			<div name="ht_read_writer" id="dj_read_writer">
				<%
					out.println(id);
				%>
			</div>
    		<% if(id == null || !id.equals("admin")){ %>
			<input type="button" value="목록" id="dsb_text_list"
				onclick="location.href='dsb_boardList.bo'" />
			<%
				} else {
			%>
			<input type="button" value="목록" id="dsb_text_list"
				onclick="location.href='dsb_boardList.bo'" /> <br /> <input
				type="button" value="수정" id="dsb_text_update"
				onclick="location.href='dsb_boardmodify.bo?dpd_name=<%=dto.get(0).getDpd_name()%>'" />
			<input type="button" value="삭제" id="dsb_text_delete"
				onclick="location.href='dsb_boardmodify.bo?dpd_name=<%=dto.get(0).getDpd_name()%>'" />

			<% } %>
</aside>
		<div>
			<jsp:include page="footer/footer.jsp" />
		</div>
</body>
</html>