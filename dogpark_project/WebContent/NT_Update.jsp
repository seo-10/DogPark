<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.NoticeDto"%>
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
    <script type="text/javascript" src="js/notice_js/notice.js"></script>
	
	<!-- css 사용 -->
 	<link rel="stylesheet" type="text/css" href="css/notice_css/writeBoard/sample/styles.css?ver=2">
  	<link rel="stylesheet" type="text/css" href="css/notice_css/htboard.css?ver=1" />
 	<link rel="stylesheet" type="text/css" href="css/notice_css/notice_main.css?ver=2" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 	
 	
</head>
<body>
 <%ArrayList<NoticeDto> dto = (ArrayList<NoticeDto>)request.getAttribute("articleList"); %>
 
 <form name="form" method="post" action="notice_UpdatePro.bo?code_no=<%=dto.get(0).getCode_no()%>">
	
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
    	<jsp:include page="js/main_js/header.jsp" />
    </div>
    
    <section id="ht_write">
	
			<h1 id="ht_category_font">공지사항 수정</h1>
			<table id="ht_write_table">
				<tr>
					<td>제목</td>
					<td><input type="text" size="100px" name="nt_title" value="<%out.println(dto.get(0).getNt_title());%>"></td>
				</tr>
			</table>
			<br>

			<textarea name="nt_contents" id="editor">
				<%out.println(dto.get(0).getNt_contents());%>
			</textarea>
			<div id="ht_writer">작성자 : <input type="text" name="u_id" readonly value="admin" /></div>
			<p>
				<input type="submit" value="수정완료" id="ht_write_input_btn">
			</p>
</section>
<script src="https://cdn.ckeditor.com/ckeditor5/20.0.0/classic/ckeditor.js"></script>
 	<script>
	 ClassicEditor
	 .create(document.querySelector('#editor'))
	 .then( editor => {
		 console.log( editor );
	 } )
	 .catch( error => {
		 console.error( error );
	 } );
	</script>
 </form>
 </body>
 </html>