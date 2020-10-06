<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.Dogpark_dogsDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/community_css/htboard.css?ver=3" />
 <link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=2" />
</head>
<body>
 <%ArrayList<Dogpark_dogsDto> dto = (ArrayList<Dogpark_dogsDto>)request.getAttribute("articleList"); %>

<form name="myform" method="post" action="dsb_updateprocess.bo?dpd_name=<%=dto.get(0).getDpd_name()%>">


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
    	<jsp:include page="js/community_js/header.jsp" />
    </div>
   
<section id="dj_update">
	<textarea name="dsb_dpd_character" id="dj_read_contents"> <%out.println(dto.get(0).getDpd_character());%></textarea>
</section>
<aside id="dj_aside">
<aside><h3>보유견 정보 수정</h3></aside>
<article id="dj_read_title">제목 : <%out.println(dto.get(0).getDpd_name());%></article>
<article name="dj_read_writer" id="dj_read_writer">작성자 : <%out.println(dto.get(0).getDpd_name());%></article>
<article name="dj_read_date" id="dj_read_date">작성날짜 : <%out.println(dto.get(0).getDpd_name());%></article>
<input type="submit" value="수정 완료" id="dj_text_update"/>
</aside>
</form>
</body>
</html>