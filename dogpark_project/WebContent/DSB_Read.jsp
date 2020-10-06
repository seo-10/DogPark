<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.Dogpark_dogsDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/Dogsale_css/dsbboard.css?ver=4" />
 <link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=2" />
</head>
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
<script>
$("#reply_btn").click(function(){
	if($("#reply_content").val().trim() === ""){
		alert("댓글을 입력하세요.");
		$("#reply_content").val("").focus();
	}else{
		$.ajax({
			url: "ReplyWriteAction.bo",
            type: "POST",
            data: {
                dpd_name : $("#no").val(),
                user_id : $("#id").val(),
                reply_content : $("#reply_content").val()
            },
            success: function () {
            	alert("댓글 등록 완료");
            	$("#reply_content").val("");
            	getReply();
            },
		})
	}
})
</script>
<body>
<%ArrayList<Dogpark_dogsDto> dto = (ArrayList<Dogpark_dogsDto>)request.getAttribute("articleList"); %>
<div id="login_Ing">
    	<jsp:include page="header/header.jsp" />
    </div>
		<div id="dropdown">
	        <svg id="svg1" width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-grid-fill" xmlns="http://www.w3.org/2000/svg">
	            <path fill-rule="evenodd" d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z"/>
	        </svg>
	        <a href="#"><h1>DOG PARK</h1></a>
	
	        <div id="menuBar">
	            <ul>
	                <a href="#"><li>소개 및 공지</li></a>
	                <a href="#"><li>강아지 분양</li></a>
	                <a href="#"><li>훈련 및 정보</li></a>
	                <a href="community_main.jsp"><li>커뮤니티</li></a>
	                <a href="#"><li>애견용품</li></a>
	                <a href="DogLife_select.jsp"><li>반려견 LIFE</li></a>
	                
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
<section id="dj_read">
	<div name="dsb_read_character" id="dj_read_contents"><%out.println(dto.get(0).getDpd_character());%></div>
		<div class="w3-border w3-padding">댓글</div>
			<div class="w3-border w3-padding">
				<c:if test="${ id == null }">
					<textarea rows="5" cols="50" class="w3-input w3-border newLogin" readonly>로그인 후 댓글 달기</textarea>
				</c:if>
				<c:if test="${ id != null }">
					<i class="fa fa-user w3-padding-16"></i> ${ content.id }
					<form>
						<input type="hidden" name="dpd_name" id="no" value=" <%out.println(dto.get(0).getDpd_name());%>"> 
						<input type="hidden" name="id" id="id" value="<%session.getAttribute("id");%>">
						<textarea rows="5" cols="50" class="w3-input w3-border" placeholder="댓글 작성" name="reply_content" id="reply_content"></textarea>
						<input type="button" class="w3-button w3-border" id="reply_btn" value="댓글 등록">
					</form>
				</c:if>
			</div>
	<article name="dj_comment_read" id="dj_comment_read">댓글</article>
	<article name="dj_comment_write" id="dj_comment_write">댓글 입력 란</article><input type="button" value="댓글등록" id="dj_comment_btn"/>
</section>
<aside id="dj_aside">
<aside><h3>분양 강아지 정보</h3></aside>
<div></div>
<div name="dsb_dpd_name" id="dj_read_title">이름 : <%out.println(dto.get(0).getDpd_name());%></div>
<div name="dj_read_writer" id="dj_read_writer">견종 : <%out.println(dto.get(0).getDpd_species());%></div>
<div name="dj_read_date" id="dj_read_date">태어난 날 : <%out.println(dto.get(0).getDpd_year());%>년 <%out.println(dto.get(0).getDpd_month());%>월 <%out.println(dto.get(0).getDpd_day());%>일</div>
<% if(session.getAttribute("id").equals("admin")){
%>
<input type="button" value="수정" id="dj_text_update" onclick="location.href='dsb_boardmodify.bo?dpd_name=<%=dto.get(0).getDpd_name()%>'"/>
<input type="button" value="삭제" id="dj_text_delete" onclick="location.href='dsb_delete.bo?dpd_name=<%=dto.get(0).getDpd_name()%>'"/>
<%} %>
 


</aside>
</body>
</html>