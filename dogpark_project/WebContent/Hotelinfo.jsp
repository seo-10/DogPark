<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.BoardBean"%>
<%@page import="com.dogpark.dao.Dao"%>

<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="javax.servlet.http.HttpSession" %>
<html lang="en">
 <head>
 	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<title>DogPark calender</title>
 	
 	<!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
 	
 	
  	<link rel="stylesheet" type="text/css" href="css/hotelinfo_css/hotelinfo1.css" media="all">
  	 
  	 
  	 
 	<link href='https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz' rel='stylesheet' type='text/css'>
 	
   	<!-- CSS 사용 -->
   	<link rel="stylesheet" type="text/css" href="css/Breeding_css/breedingm.css?ver=1.4" />
   		
   	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2"/>
	
	<!-- jquery 사용 -->	
    <script type="text/javascript" src="js/Hotel_detail_js/Hotel_detail.js"></script>
	<!-- 부트스트랩 cdn -->
   	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   	
   	
   	
		

  </head>
 <body id="wrap">
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
    	<jsp:include page="js/main_js/header.jsp" />
    </div>
  
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
		 <!--  <div id="bestlist">
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
		 </div>-->
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
  
    <div>
		<jsp:include page="footer/footer.jsp" />
  </div>


 </form>
 </body>

</html>
