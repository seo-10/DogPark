<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.DogjarangDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- JQuery UI 를 쓰기위한 스크립트 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<!-- css 사용 -->
<link rel="stylesheet" type="text/css"
	href="css/community_css/writeBoard/sample/styles.css">
<link rel="stylesheet" type="text/css"
	href="css/community_css/djboard.css?ver=4" />
<link rel="stylesheet" type="text/css"
	href="css/community_css/community_main.css?ver=4" />

<!-- 로그아웃 다이얼로그 CSS 연결 -->
<link rel="stylesheet" type="text/css"
	href="css/logoutDialog_css/logoutDialog.css?ver=2" />

<!-- 부트스트랩 cdn -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- jquery 사용 -->
<script type="text/javascript" src="js/community_js/community.js"></script>

</head>
<body>
	<%
		ArrayList<DogjarangDto> dto = (ArrayList<DogjarangDto>) request.getAttribute("articleList");
	%>
	<form name="form" method="post">
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

		<nav
			style="position:absolute; left: 0; top: 0; right: 0; margin: 0; padding: 0; width: 100%; height: 400px;">
			<img src="img/htboard_img/dogparkTopBanner2.jpg"
				style="clear: both; width: 100%; height: 100%;" />
		</nav>
		<section id="dj_read">
			<span
				style="margin: 0; padding: 0; font-size: 25pt; border-bottom: 1px solid black;">반려견
				자랑 커뮤니티</span><span style="margin-left: 10px; padding: 0; font-size: 10pt;">내
				강아지를 신나게 자랑</span>
			<div
				style="margin-top: 15px; font-size: 18pt; background-color: #EAEAEA; width: 900px; height: 50px; padding-top: 20px; border-bottom: 1px dotted black; border-top: 2px solid black;">
				<%
					out.println(dto.get(0).getDj_title());
				%>
			</div>
			<div style="width: 900px; border-bottom: 1px solid black;">
				<span style="">
					<%
						out.println(dto.get(0).getU_id());
					%>
				</span><span style="float: right;">
					<%
						out.println(dto.get(0).getDate());
					%>
				</span>
			</div>
			<div name="ht_read_contents" id="dj_read_contents">
				<%
					out.println(dto.get(0).getDj_contents());
				%>
			</div>
		</section>
		<aside id="dj_aside">
			<h3 style="text-align: center;">프로필</h3>
			<div>
				<img src="img/htboard_img/wellsi_banner.jpg"
					style="width: 250px; height: 100px;" />
			</div>
			<%
				String id = (String) session.getAttribute("id");
			%>
			<div name="ht_read_writer" id="ht_read_writer">
				<%
					out.println(id);
				%>
			</div>

			<%
				String dtoId = dto.get(0).getU_id();
			%>
			<%
				if (id == null || !id.equals(dtoId)) {
			%>
			<input type="button" value="목록" id="ht_text_list"
				onclick="location.href='dj_boardList.bo'" />
			<%
				} else {
			%>
			<input type="button" value="목록" id="ht_text_list"
				onclick="location.href='dj_boardList.bo'" /> <br /> <input
				type="button" value="수정" id="ht_text_update"
				onclick="location.href='dj_boardmodify.bo?code_no=<%=dto.get(0).getCode_no()%>'" />
			<input type="button" value="삭제" id="ht_text_delete"
				onclick="location.href='dj_delete.bo?code_no=<%=dto.get(0).getCode_no()%>'" />

			<% } %>

		</aside>
		<div>
			<jsp:include page="footer/footer.jsp" />
		</div>
	</form>
</body>
</html>