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

	<form name="form" method="post">
		<!-- 로그아웃 다이얼로그 -->
	    <div id="logout_dialog" title="logout"  >
	    	로그아웃 하시겠습니까?
	    </div>
    
		<!-- 메뉴 왼쪽 드롭다운 -->
	    <div id="dropdown">
	  		<jsp:include page="mainMenu_Left.jsp" />
		</div>
		
	    <!-- 로그인 유지 -->
	    <div id="login_Ing">
	    <%if(session.getAttribute("id") !=null) { %>
	    	<jsp:include page="js/main_js/header.jsp" />
	    </div>
	    
	    <%} else { %>
	    <%} %>
    </form>
	    
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