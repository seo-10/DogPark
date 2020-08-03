<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dogpark.dto.BoardBean"%>
<%@page import="com.dogpark.dao.Dao"%>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<html lang="en">
 <head>
  <title>DogPark calender</title>
  <link rel="stylesheet" type="text/css" href="css/hotelinfo_css/hotelinfo1.css" media="all">
  <link href='https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz' rel='stylesheet' type='text/css'>
   		<!-- CSS 사용 -->
   		<link rel="stylesheet" type="text/css" href="css/doglife_css/cafem.css" />
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
		<script type="text/javascript" src="js/hotelinfo_js/dogpark.js"></script>

   </head>
 <body id="wrap">
	<form name="form" method="post">
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
  </header>

	
  
  <section>
  <div id="yylogo"><h1><u>반려견과의 여행</u></h1><h2>(추천숙소)</h2><img src="img/hotelinfo_img/searchdog.png" id="sdog"></div>
		   <div class="accordion">
		   
		   <article>
				<h2>글램핑</h2>
				<img src="img/hotelinfo_img/thedream.jpg">
				<ul>
					<li class="country">[남양주]</li>
					<li><a href="#"> 더 드림핑</a> </li>
					<li> (The Dreamping) </li>
				</ul>
		   </article>

		   <article>
			  <h2>캠핑</h2>
			  <img src="img/hotelinfo_img/betho.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[횡성]</li>
					<li><a href="#"> 벳소 캠프 </a></li>
					<li> (betso camp) </li>
			  </ul>
		   </article>

		   <article>
			  <h2>캠핑</h2>
			  <img src="img/hotelinfo_img/newp.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[가평]</li>
					<li><a href="#"> 뉴프라도 캠프 </a></li>
					<li> (New pradocamp) </li>
			  </ul>
		   </article>

		   <article>
			  <h2>펜션</h2>
			  <img src="img/hotelinfo_img/ninano.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[제주도]</li>
					<li><a href="#"> 니나노 제주 </a></li>
					<li> (Ninano Jeju) </li>
				
			  </ul>
		   </article>

		   <article>
			  <h2>펜션</h2>
			  <img src="img/hotelinfo_img/bilaem.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[춘천]</li>
					<li><a href="#"> 빌라엠 </a></li>
					<li> (Villa M Chuncheon) </li>
					
			  </ul>
		   </article>

		   <article>
					<h2>펜션</h2>
					<img src="img/hotelinfo_img/2podding.jpg" alt="" width="50" height="75" />
				<ul>
					<li class="country">[홍천]</li>
					<li><a href="#"> 두푸딩 하우스 </a></li>
					<li> (Doopooding House) </li>
			  </ul>
		   </article>

		</div>
		 <div id="bestlist">
		 <h2>추천 숙박시설 TOP 10</h2>
		 <ul>
		 <li><a href="#">1순위</a></li>
		 <li><a href="#">2순위</a></li>
		 <li><a href="#">3순위</a></li>
		 <li><a href="#">4순위</a></li>
		 <li><a href="#">5순위</a></li>
		 <li><a href="#">6순위</a></li>
		 <li><a href="#">7순위</a></li>
		 <li><a href="#">8순위</a></li>
		 <li><a href="#">9순위</a></li>
		 <li><a href="#">10순위</a></li>
		 </ul>
		 </div>
		 <div  class="accordion2">
		 
		   <article>
			  <h2>국내 호텔</h2>
			  <img src="img/hotelinfo_img/danbihouse.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[제주도]</li>
					<li><a href="#"> 맘앤도그 백호하우스 </a></li>
					<li> (Mom and Dog Danbi house) </li>
			  </ul>
		   </article>

		   <article>
			<h2>국내 호텔</h2>
			<img src="img/hotelinfo_img/baekho.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[제주도]</li>
					<li><a href="#"> 맘앤도그 백호하우스 </a></li>
					<li> (Mom and Dog Baekho house) </li>						
			  </ul>
		   </article>

		   <article>
			  <h2>국내 호텔</h2>
			  <img src="img/hotelinfo_img/dawa.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[제주도]</li>
					<li><a href="#">제주다와 풀빌라</a></li>
					<li>(Dawa Pool villa)</li>
			  </ul>
		   </article>

		   <article>
			  <h2>해외 호텔</h2>
			  <img src="img/hotelinfo_img/Yuwan.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[간토]</li>
					<li><a href="#">기누가와 유완</a></li>
					<li>(Kinugawa Yuwan)</li>
			  </ul>
		   </article>

		   <article>
			  <h2>해외 호텔</h2>
			  <img src="img/hotelinfo_img/Toyo.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[훗카이도]</li>
					<li><a href="#">도야 노노카제 리조트</a></li>
					<li>(Toya Nonokaze Rresort)</li>
			  </ul>
		   </article>

		   <article>
			  <h2>해외 호텔</h2>
			  <img src="img/hotelinfo_img/Sowaka.jpg" alt="" width="50" height="75" />
			  <ul>
					<li class="country">[간사이]</li>
					<li><a href="#">럭셔리호텔 소와카</a></li>
					<li>(Luxury hotel SOWAKA)</li>
			  </ul>
		   </article>
	 </div>

  </section>
  
 



 </body>

</html>
