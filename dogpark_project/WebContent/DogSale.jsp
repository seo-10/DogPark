<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/community_css/htboard.css?ver=2" />
 <link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=2" />
 	<!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- css 사용 -->
 	<link rel="stylesheet" type="text/css" href="css/community_css/writeBoard/sample/styles.css">
  	<link rel="stylesheet" type="text/css" href="css/community_css/htboard.css" />
 	<link rel="stylesheet" type="text/css" href="css/community_css/community_main.css" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
 
</head>

<body>
<form action="" method="post" name="form">	
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
    
	
<nav style=" position:absolute; top:0; left:0; right:0; margin:0; padding:0; height:300px; border-bottom:1px solid gray;"><img src="img/headerbanner/dogparkbannerheader.jpg" style="clear:both;width:100%; height:100%;"/></nav>
		<section class="community_contents">
			<ul>
				<li>
					<a href="dsb_boardList.bo"><img src="img/Dogsale_img/inquaryofsalebutton.jpg" style="width:600px; height:400px;"/></a>
				</li>
			</ul>
			<ul>
				<li>
					<a href="ds_countList.bo"><img src="img/Dogsale_img/reservation.jpg" style="width:600px; height:400px;"/></a>
				</li>
			</ul>
			<img src="img/Dogsale_img/inquarybanner2.jpg" style="width:1200px; height:500px; margin:0; padding:0;"/>
		</section>
				<div>
			<jsp:include page="footer/footer.jsp" />
		</div>
	</form>
</body>
</html>