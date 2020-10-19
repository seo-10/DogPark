
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.dogpark.dao.Dao"%>
<%@page import="com.dogpark.dto.Dto"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<html lang="en">
    <head>
        
<title>DogParkCafeInfo</title>

   <!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- jquery 사용 -->
	<script type="text/javascript" src="js/main_js/mainPage.js"></script>
	
	<!-- css 사용 -->
    <link rel="stylesheet" type="text/css" href="css/doglife_css/dogpark.css" media="all">
	<link rel="stylesheet" type="text/css" href="css/doglife_css/cafeinfo.css?ver=1.1" media="all">
	<link rel="stylesheet" type="text/css" href="css/doglife_css/cafem.css?ver=1.3" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    


	    <link href='https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz' rel='stylesheet' type='text/css'>

        <script language="JavaScript">
        	window.addEvent('domready',function() {
	            var gradientLightbox = new SwGradientLightbox();
			});
        </script>
   		</head>
		
    <body id="wrap">
    <form name="form"  method="post">
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
		
		 <section>
		 <div id="yylogo"><h1><u>주변 애견카페</u></h1></div>
		 <div id="lc">빠른이동 ☞　<a href="#seoul">서울</a>
		 <a href="#gi">경기도</a>
		 <a href="#choong">충청도</a>
		 <a href="#gyung">경상도</a>
		 <a href="#jeon">전라도</a>
		 <a href="#jeju">제주도</a><div><div>
		<div id="yylogo"><a name="seoul"><h1><u>서울</u></h1></a></div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=두젠틀(DOGENTLE)"><h3>두젠틀(DOGENTLE)</h3></a>
		<img src='img/doglife_cafe_img/sdco00.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/sdco01.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/sdco02.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">동작구 상도로 217-4, B1</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">장승배기역 6번 출구 숭실대 방향 도보 3분</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">동작보건소역: 641, 650, 751, 752, 753, 5517 숭실대방면 도보 2분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=아이러브퍼피(ILOVEPUPPY)"><h3>아이러브퍼피(ILOVEPUPPY)</h3>
		<img src='img/doglife_cafe_img/ilovepuppy.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/ilovepuppy1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/ilovepuppy2.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">동작구 상도로 217-4, B1</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">장승배기역 6번 출구 숭실대 방향 도보 3분</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">동작보건소역: 641, 650, 751, 752, 753, 5517 숭실대방면 도보 2분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=숲,숨(Forest,breath)"><h3>숲,숨(Forest,breath)</h3>
		<img src='img/doglife_cafe_img/ssum3.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/ssum1.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/ssum2.png' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">강남구 강남대로156길 45</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">신사역 8번 출구 유니클로 방향 도보 5분</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">신사사거리: 145, 148, 440, 1100, 4212 등 가로수길 방면 도보 5분
</dd>
		</dl>
		</div>
		
		</div><br>
		 
<br>
		
		<div id="yylogo"><a name="gi"><h1><u>경기도</u></h1></a></div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=더 드림핑(DREAMPING)"><h3>더 드림핑(DREAMPING)</h3>
		<img src='img/doglife_cafe_img/dreamping1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/dreamping2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/dreamping3.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">남양주시 화도읍 북한강로 1630-18</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">북한강체육공원: 30-9 금남3리마을회관입구도보 4분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=나무휴식(NAMUHYUSIK)"><h3>나무휴식(NAMUHYUSIK)</h3>
		<img src='img/doglife_cafe_img/namu2.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/namu1.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/namu3.png' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">김포시 고촌읍 태리로 121</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img//train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">장곡: 2,60,60-3,69,88,96,388,1002 숭실대방면 도보 13분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=도그맥스(DogMax)"><h3>도그맥스(DogMax)</h3>
		<img src='img/doglife_cafe_img/dogmax1.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/dogmax2.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/dogmax3.png' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">남양주시 와부읍 석실로율석길 108-13</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">율석2리: 167-1 도보 2분
</dd>
		</dl>
		</div>
		</div><br>
		 
<br>
		<div id="yylogo"><a name="choong"><h1><u>충청도</u></h1></a></div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=니니니(NININI)"><h3>니니니(NININI)</h3>
		<img src='img/doglife_cafe_img/ninini1.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/ninini2.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/ninini3.png' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">아산시 배방읍 세교안길 14(세교리594)</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">-</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=에유(AEW)"><h3>에유(AEW)</h3>
		<img src='img/doglife_cafe_img/aew1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/aew2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/aew3.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/aew4.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">천안시 서북구 성정공원6길 37</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">두정역 1번 출구 도보 18분</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">성정공원: 3  도보 1분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=바라겔(BARACHEL)"><h3>바라겔(BARACHEL)</h3>
		<img src='img/doglife_cafe_img/baragel1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/baragel2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/baragel3.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/baragel4.png' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">서산시 음암면 도당꽃밭재길 59-57</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">음암 : 301,  405,  410,  430,  432,  450,  451,  452,  454,  455 도보 4분
</dd>
		</dl>
		</div>
		</div><br>
		 
<br>
		<div id="yylogo"><a name="gyung"><h1><u>경상도</u></h1></a></div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=디어마이프렌드(DEARMYFRIEND)"><h3>디어마이프렌드(DEARMYFRIEND)</h3>
		<img src='img/doglife_cafe_img/dmf1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/dmf2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/dmf3.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/dmf4.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">구미시 인동남길 4</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">진평동: 91,  180,  303-1,  881,  881-1,  883,  883-1,  884,  884-1 도보 2분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=산책가까(ILOVEPUPPY)"><h3>산책가까(ILOVEPUPPY)</h3>
		<img src='img/doglife_cafe_img/scgg1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/scgg2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/scgg3.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/scgg4.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">경북 칠곡군 왜관읍 평장길 7</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">순심중고등학교: 11-5 도보 4분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=도그휴(DOGHUE)"><h3>도그휴(DOGHUE)</h3>
		<img src='img/doglife_cafe_img/doghew1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/doghew2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/doghew3.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/doghew4.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">영천시 하이브리드로 300</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">괴연: 150-3,  710 도보 9분
</dd>
		</dl>
		</div>
		</div><br>
		 
<br>
		<div id="yylogo"><a name="jeon"><h1><u>전라도</u></h1></a></div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=쿠치로(CUCCILO)"><h3>쿠치로(CUCCILO)</h3>
		<img src='img/doglife_cafe_img/cuciro1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/cuciro2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/cuciro3.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/cuciro4.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">전북 전주시 완산구 홍산1길 8</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">효자SK리더스뷰: 20,  21,  23,  24,  25,  74,  108,  119,  121,  200,  220 도보 3분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=판 갤러리카페(PANN)"><h3>판 갤러리카페(PANN)</h3>
		<img src='img/doglife_cafe_img/pann1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/pann2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/pann3.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/pann4.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">전주시 덕진구 신복로 34-22 1층</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">추천대교: 7-2,  88,  101,  103,  337,  375,  380,  381,  383,  385 도보 8분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=독타곤(DOGTAGON)"><h3>독타곤(DOGTAGON)</h3>
		<img src='img/doglife_cafe_img/doctagon1.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/doctagon2.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/doctagon3.jpg' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/doctagon4.jpg' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">전주시 완산구 홍산중앙로 37</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">전북창조경제혁신센터: 355  도보 5분
</dd>
		</dl>
		</div>
		</div><br>
		 
<br>
		<div id="yylogo"><a name="jeju"><h1><u>제주도</u></h1></a></div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=그초록(THE GREEN)"><h3>그초록(THE GREEN)</h3>
		<img src='img/doglife_cafe_img/green1.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/green2.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/green3.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/green4.png' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">제주시 구좌읍 행원로7길 23-16</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="images/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">금산목: 201 도보 7분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=니나노 제주(NINANO JEJU)"><h3>니나노 제주(NINANO JEJU)</h3>
		<img src='img/doglife_cafe_img/ninano1.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/ninano2.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/ninano3.png' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">제주시 한림읍 수원7길 60-9</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">수원리: 202 도보 11분
</dd>
		</dl>
		</div>
		<div id="seoul"><a href="Cafedetail.bo?cafe_name=월정리콧수염(MUSTACHE)"><h3>월정리콧수염(MUSTACHE)</h3>
		<img src='img/doglife_cafe_img/cot1.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/cot2.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/cot3.png' class='swGradientLightbox'/>
		<img src='img/doglife_cafe_img/cot4.png' class='swGradientLightbox'/>
		<div class="dogentle">
		<h3>CONTACT
		</h3>
		<dl>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/address.png" id="icon1"><div class="stitle">주소</div></dt>
		<dd class="sub1">제주시 구좌읍 해맞이해안로 406</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/train.png" id="icon1"><div class="stitle">지하철 이용시</div>
		</dt>
		<dd class="sub1">-</dd>
		<dt class="sub1">
		<i class="xi-maker"></i>
		<img src="img/doglife_cafe_img/bus.jpg" id="icon1"><div class="stitle">버스 이용시</div></dt>
		<dd class="sub1">월정리: 201 도보 16분
</dd>
		</dl>
		</div>
		</div><br>
		 </section>
	<a  href="#" title="맨위로" id="topbt"><img src="img/doglife_cafe_img/topbt.png"></a>
<br id= "cl"/> 
 		</form>
    </body>
</html>
