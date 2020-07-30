<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dao.signDao"%>
<%@page import="com.dogpark.dto.Dto"%>
<%@page import="java.util.List" %>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="utf-8">
  <title>DogPark_honeytip</title>
  <link rel="stylesheet" type="text/css" href="team/team1.css?ver=1">
  <link rel="stylesheet" type="text/css" href="css/css2/dogpark_wonyoung.css?ver=2" />
  <link rel="stylesheet" type="text/css" href="jq/jq2/ElasticSlideshow/css/style.css?ver=1" />
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Jua|Nanum+Gothic|Sunflower:300" rel="stylesheet">


 </head>
 <script type="text/javascript" src="js/js2/dogpark.js"></script>
        <script type="text/javascript" src="jq/jq2/ElasticSlideshow/js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="jq/jq2/ElasticSlideshow/js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#ei-slider').eislideshow({
					animation			: 'center',
					autoplay			: true,
					slideshow_interval	: 3000,
					titlesFactor		: 0
                });
            });
        </script>
 <body>
 <%
 		int code=Integer.parseInt(request.getParameter("code_no"));
 		String title = request.getParameter("title");
		SqlSessionFactory sqlfactory = Mybatis_DAO.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		List<Mybatis_DTO> dto = sqlsession.selectList("superpowerselect2",code);
		
		sqlsession.close();
		
		
	%>
  <header>
  	<div class="top_logo">
		<a href="#"><img src="img/dobe_pixel1.jpg"></a>
	</div>
	<div class="top_logo">
		<a href="#"><p>DogPark</p></a>
	</div>
	
	<div id="top_login" style="float:right;">
	<%
	
		out.println("<div id='logouttext'>");
		
	    out.println("<a href='#'><svg width='30px' height='30px' viewBox='0 0 16 16' class='bi bi-door-closed' fill='currentColor' xmlns='http://www.w3.org/2000/svg' onclick='logoutbt()'><path fill-rule='evenodd' d='M3 2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2zm1 0v13h8V2H4z'/><path d='M7 9a1 1 0 1 1-2 0 1 1 0 0 1 2 0z'/><path fill-rule='evenodd' d='M1 15.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 0 1h-13a.5.5 0 0 1-.5-.5z'/><div>로그아웃</div></a>");
		out.println("</div>");
		out.println("<div id='logouttext2'>");
		out.println(session.getAttribute("id")+"님이 접속중이십니다.");
		out.println("</div>");		
	%>
	</div>
	
		<div>
			<ul id="nav">
				<li><a href="#">소개 및 공지</a>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">입양 후기</a></li>
						<li><a href="#">오시는길</a></li>
					</ul>
				</li>
				<li><a href="#">강아지 분양</a>
					<ul>
						<li><a href="DogParkcalender.html">방문예약</a></li>
						<li><a href="DogParkinquiryofsale.html">분양문의</a></li>
						<li><a href="#">분양현황</a></li>
					</ul>
				</li>
				<li><a href="#">훈련 및 정보</a>
					<ul>
						<li><a href="#">셀프 훈련정보</a></li>
						<li><a href="#">훈련소 정보</a></li>
					</ul>
				</li>
				<li><a href="#">커뮤니티</a>
					<ul>
						<li><a href="#">반려견 자랑</a></li>
						<li><a href="honeytip_login_select.jsp">꿀팁</a></li>
					</ul>
				</li>
				<li><a href="#">애견 용품</a>
					<ul>
						<li><a href="TeamProject_shopping.html">사료</a></li>
						<li><a href="#">간식</a></li>
						<li><a href="#">장난감</a></li>
						<li><a href="#">엑세서리</a></li>
						<li><a href="#">기타</a></li>
					</ul>
				</li>
				<li><a href="#">반려견 Life</a>
					<ul>
						<li><a href="#">반려견과 여행</a></li>
						<li><a href="#">주변 애견카페</a></li>
						<li><a href="#">브리딩</a></li>
					</ul>
				</li>
			</ul>
		</div>
	
  </header>

  <hr style="clear:both; padding-top:55px;"/>

<div class="container">
            <div class="wrapper">
                <div id="ei-slider" class="ei-slider">
                    <ul class="ei-slider-large">
						<li>
                            <img src="img/whitedog_banner.jpg" alt="image06"/>
                            <div class="ei-title">
                                <h2>언제나 도그파크와</h2>
                                <h3>함께</h3>
                            </div>
                        </li>
                        <li>
                            <img src="img/background1.jpg" alt="image01" />
                            <div class="ei-title">
                                <h2>나는 리트리버다</h2>
                                <h3>piece</h3>
                            </div>
                        </li>
                        <li>
                            <img src="img/background2.jpg" alt="image02" />
                            <div class="ei-title">
                                <h2>나는 리트리버다</h2>
                                <h3>후~</h3>
                            </div>
                        </li>
                        <li>
                            <img src="img/background3.jpg" alt="image03"/>
                            <div class="ei-title">
                                <h2>나는 리트리버다</h2>
                                <h3>후</h3>
                            </div>
                        </li>
                        <li>
                            <img src="img/background4.jpg" alt="image04"/>
                            <div class="ei-title">
                                <h2>Insecure</h2>
                                <h3>Hussler</h3>
                            </div>
                        </li>
                        <li>
                            <img src="img/bulldog_banner.jpg" alt="image05"/>
                            <div class="ei-title">
                                <h2>뭘봐</h2>
                                <h3>불독 처음봐?</h3>
                            </div>
                        </li>
                    </ul><!-- ei-slider-large -->
                    <ul class="ei-slider-thumbs">
                        <li class="ei-slider-element">Current</li>
						<li><a href="#">Slide 6</a><img src="img/whitedog_banner.jpg" alt="thumb06" /></li>
                        <li><a href="#">Slide 1</a><img src="img/background1.jpg" alt="thumb01" /></li>
                        <li><a href="#">Slide 2</a><img src="img/background2.jpg" alt="thumb02" /></li>
                        <li><a href="#">Slide 3</a><img src="img/background3.jpg" alt="thumb03" /></li>
                        <li><a href="#">Slide 4</a><img src="img/background4.jpg" alt="thumb04" /></li>
                        <li><a href="#">Slide 5</a><img src="img/bulldog_banner.jpg" alt="thumb05" /></li>
                    </ul><!-- ei-slider-thumbs -->
                </div><!-- ei-slider -->
            </div><!-- wrapper -->
        </div>
<hr style="clear:both;" />
<form name="myform" method="post" action="ht_updateprocess.jsp?code_no=<%=dto.get(0).getCode_no()%>">
<section>
	<textarea name="ht_read_contents" id="ht_read_contents"> <%out.println(dto.get(0).getHt_contents());%></textarea>
</section>
<aside id="ht_aside">
<aside><h3>꿀팁 커뮤니티</h3></aside>
<article id="ht_read_title">제목 : <%out.println(dto.get(0).getHt_title());%></article>
<article name="ht_read_writer" id="ht_read_writer">작성자 : <%out.println(dto.get(0).getU_id());%></article>
<article name="ht_read_date" id="ht_read_date">작성날짜 : <%out.println(dto.get(0).getDate11());%></article>
<input type="submit" value="수정 완료" id="ht_text_update"/>
</aside>
</form>


<footer>
  	<article id="bottom_bar">
		<div id="bottom_bar_phrase1">언제나 DogPark와 함께</div>
		<div id="bottom_bar_phrase2">DogPark 앱을 다운로드 해 친구들과 대화하고 최신 정보를 확인해 보세요.</div>
	</article>
	  <article id="bottom">
	  	<div>
			<a href="#"><img src="img/facebook_icon.png"></a>
			<a href="#"><img src="img/twitter_icon.png"></a>
			<a href="#"><img src="img/insta_icon2.png"></a>
		</div>
	  <ul id="bottom_phrase">
	  	<li>ㅣ회사명 : DogPark</li>
		<li>ㅣtel : 02-1234-1234</li>
		<li>ㅣadress : 서울시 강남구 역삼동</li>
		<li>ㅣ대표 : 박서유 사업자등록번호 123-45-67890</li>
		<li>ㅣ동물판매허가번호 1234567-321-2020-0001</li>
	  </ul>
		<span>이용약관</span><span>개인정보처리방침</span>
	  </article>
  </footer>

 </body>
</html>