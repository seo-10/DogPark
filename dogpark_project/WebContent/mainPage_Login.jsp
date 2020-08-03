<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.BoardBean"%>
<%@page import="com.dogpark.dao.Dao"%>

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

    <!-- CSS 사용 -->
    <link rel="stylesheet" type="text/css" href="css/main_css/main.css" />
    <!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
    <!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- jquery 사용 -->
   
    <script type="text/javascript" src="js/main_js/mainPage.js"></script>
    
    
   
</head>
<body>
    <div id="logout_dialog" title="logout" style="width: auto; min-height: 0px; max-height: none; height: 80px;">
    	로그아웃 하시겠습니까?
    </div>
    <!-- 부트스트랩 아이콘 -->
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
    <!-- 로그아웃 다이얼로그 -->

</body>

</html>