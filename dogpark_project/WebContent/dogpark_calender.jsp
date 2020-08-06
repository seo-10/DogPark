<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="css/inquiryofsale_css/inquiryofsale_main.css" />
<link rel="stylesheet" href="css/inquiryofsale_css/monthly.css?ver=1">
</head>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript" src="js/inquiryofsale_js/jquery.js"></script>
<script type="text/javascript" src="js/inquiryofsale_js/monthly.js"></script>
<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				xmlUrl: 'events.xml'
			});
			
			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				maxWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});

		switch(window.location.protocol) {
		case 'http:':
		case 'https:':
		// running on a server, should be good.
		break;
		case 'file:':
		}

		});
	</script>
<body>
	<div id="logout_dialog" title="logout">로그아웃 하시겠습니까?</div>
	<!-- 로그인 유지 -->
	<div id="login_Ing">
		<jsp:include page="header/header.jsp" />
	</div>
	<div id="dropdown">
		<svg id="svg1" width="3em" height="3em" viewBox="0 0 16 16"
			class="bi bi-grid-fill" xmlns="http://www.w3.org/2000/svg">
	            <path fill-rule="evenodd"
				d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z" />
	        </svg>
		<a href="#"><h1>DOG PARK</h1></a>

		<div id="menuBar">
			<ul>
				<a href="NT_Main.jsp"><li>소개 및 공지</li></a>
				<a href="#"><li>강아지 분양</li></a>
				<a href="#"><li>훈련 및 정보</li></a>
				<a href="community_main.jsp"><li>커뮤니티</li></a>
				<a href="#"><li>애견용품</li></a>
				<a href="DogLife_select.jsp"><li>반려견 LIFE</li></a>

			</ul>
		</div>
	</div>
	<section class="ios_contents">
		<div id="calender_frame">
			<pre>Reservation</pre>
			<div style="width:800px; display: inline-block;">
				<div class="monthly" id="mycalendar">예약 현황</div>
			</div>
		</div>
		<div id="calender_dateselect">
			<pre>※원하는 날짜를 선택해주세요.※</pre>
			<div style="display: inline-block; width: 250px;">
				<input type="text" id="mytarget" value="Select Date">
				<div class="monthly" id="mycalendar2"></div>
			</div>
			<a href="#" id="reservation_button">예약 등록</a>
		</div>
	</section>
</body>
</html>