
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.dogpark.dao.Dao"%>
<%@page import="com.dogpark.dto.Dto"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<html lang="en">
    <head>
        
<title>DogParkCafeInfo</title>
        <link rel="stylesheet" type="text/css" href="css/doglife_css/dogpark.css" media="all">
		<link rel="stylesheet" type="text/css" href="css/doglife_css/cafeinfo.css?ver=1.1" media="all">
		 <!-- CSS 사용 -->
   		<link rel="stylesheet" type="text/css" href="css/doglife_css/cafem.css?ver=1.3" />
	    <link href='https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz' rel='stylesheet' type='text/css'>
		 <!-- 자바 스크립트 사용 -->
    	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
    	<script type="text/javascript" src="js/main_js/mainPage.js"></script>
		<!-- 부트스트랩 cdn -->
   		 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

   		 <!-- 로그인 창을 위한 스크립트 -->
    	<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>
    	<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script>
    	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
   		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<script src="lib/mootools/mootools-1.2.4-core-jm.js" type="text/javascript">
        </script>
        <script src="lib/mootools/mootools-1.2.4.4-more-assets.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="js/swGradientLightbox.js">
        </script>
		<script type="text/javascript" src="js/dogpark1.js">
		</script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
        <script language="JavaScript">
        	window.addEvent('domready',function() {
	            var gradientLightbox = new SwGradientLightbox();
			});
        </script>
   		</head>
		
		
</script>
    <body id="wrap">
	<form name="form"  method="post">
	    <!--  <img src="img/main_img/mainPage.jpg" id="mainImg" alt="" />-->
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
	
	    <div id="loginBox">
	        <div class="row">
	            <div class="col-md-6 mx-auto p-0">
	                <div class="card">
	                    <div class="login-box">
	                        <div class="login-snip">
	                            <div id="closeBtn"><a href="#">X</a></div> 
	                            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
	                            <div class="login-space">
	                                <div class="login">
	                                    <div class="group"> <label for="user" class="label">Username</label> <input id="user" type="text" class="input" placeholder="Enter your username" name="login_id"> </div>
	                                    <div class="group"> <label for="pass" class="label">Password</label> <input id="pass" type="password" class="input" data-type="password" placeholder="Enter your password" name="login_pw"> </div>
	                                    <div class="group"> <input id="check" type="checkbox" class="check" checked> <label for="check"><span class="icon"></span> Keep me Signed in</label> </div>
	                                    <div class="group"> <input type="submit" class="button" value="Sign In" onclick="javascript: form.action='LoginPro.bo';" /> </div>
	                                    <div class="hr"></div>
	                                    <div class="foot"> <a href="#">Forgot Password?</a> </div>
	                                </div>
	                                <div class="sign-up-form">
	                                    <div class="group"> <label for="user" class="label">Username</label> <input id="user" type="text" class="input" placeholder="Create your Username" name="u_id"> </div>
	                                    <div class="group"> <label for="pass" class="label">Password</label> <input id="pass" type="password" class="input" data-type="password" placeholder="Create your password" name="u_pw"> </div>
	                                    <div class="group"> <label for="pass" class="label">Repeat Password</label> <input id="pass" type="password" class="input" data-type="password" placeholder="Repeat your password"> </div>
	                                    <div class="group"> <label for="pass" class="label">Email Address</label> <input id="pass" type="text" class="input" placeholder="Enter your email address" name="u_email"> </div>
	                                    <div class="group"> <label for="pass" class="label">nickname</label> <input id="pass" type="text" class="input"  placeholder="Create your nickname" name="u_nickname"> </div>
	                                    <div class="group"> <input type="submit" class="button" value="Sign Up" onclick="javascript: form.action='SignPro.bo';" /> </div>
	                                    <div class="hr"></div>
	                                    <div class="foot"> <label for="tab-1">Already Member?</label> </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
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
<br>
<br id= "cl"/> 
 		</form>
    </body>
</html>
