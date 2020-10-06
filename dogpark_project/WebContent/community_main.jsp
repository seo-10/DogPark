<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 		
 	<!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- css 사용 -->
 	<link rel="stylesheet" type="text/css" href="css/community_css/writeBoard/sample/styles.css">
  	<link rel="stylesheet" type="text/css" href="css/community_css/htboard.css?ver=4" />
 	<link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=4" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
 		
</head>

<body>

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
    	<jsp:include page="js/community_js/header.jsp" />
    </div>


		<section class="community_contents">
			<ul><Strong style="position:absolute; font-size:15pt;">꿀팁 커뮤니티</Strong>
				<li>
					<a href="boardList.bo"><img src="img/htboard_img/honeytip.gif" style="width:649px; height:400px;"/></a>
				</li>
			</ul>
			<ul><Strong style="position:absolute; font-size:15pt;">반려견 자랑 커뮤니티</Strong>
				<li>
					<a href="dj_boardList.bo"><img src="img/htboard_img/jarang.gif" style="width:649px; height:400px;"/></a>
				</li>
			</ul>
			<img src="img/htboard_img/ht_banner1.jpg" style="width:1300px; height:500px; margin:0; padding:0;"/>
		</section>
	</form>
</body>
</html>