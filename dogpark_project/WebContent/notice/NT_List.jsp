<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.NoticeDto"%>
<%@page import="com.dogpark.dao.NoticeDao"%>

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

    <!-- 메인인덱스 CSS 사용 -->
    <link rel="stylesheet" type="text/css" href="notice_main.css?ver=1" />
    <!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="../css/logoutDialog_css/logoutDialog.css?ver=2" />
    <!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- jquery 사용 -->
    <script type="text/javascript" src="notice.js"></script>
    <script>
 // 부트스트랩 아이콘 마우스엔터시 좌측 menuBar 보이기
    $(document).ready(function() { 
//        $("#menuBar").hide();
//        $("#dropdown").mouseenter(function() {
//            $("#menuBar").stop().fadeIn(400);
//            $("#svg1").css("fill", "yellow");
//        });
//        $("#dropdown").mouseleave(function() {
//            $("#menuBar").stop().fadeOut(300);
//            $("#svg1").css("fill", "gray");
//        });

    //svg 문짝 눌렀을때 로그인 창 보이기
        $("#loginBox").hide();
        $('#svg_login').click(function(){
            $("#loginBox").show();
        });
        
    //svg 사람 눌렀을때 회원가입 창 보이기
        $('#svg_join').click(function(){
            $("#loginBox").show();
        });

    //X 눌렀을때 로그인 창 닫기
        $('#closeBtn').click(function(){
            $("#loginBox").hide();
        });


    //로그아웃 dialog
       
        $(function(){
        	var url = "mainPage.html";
      
            $("#logout_dialog").dialog({
                autoOpen:false, //자동으로 열리지않게
                width: 300,
                minHeight: 85,
                position:["center"], //x,y  값을 지정
                //"center", "left", "right", "top", "bottom"
                modal:true, //모달대화상자
                resizable:false, //크기 조절 못하게
                
                buttons:{
                    "확인":function(){
                        //$(this).dialog("close");
                        $(location).attr('href', url);
                    },"취소":function(){
                        $(this).dialog("close");
                    }
                }
            });

            //창 열기 버튼을 클릭했을경우
            $("#svg_logout").on("click",function(){
                $("#logout_dialog").dialog("open"); //다이얼로그창 오픈                
            });
        });

    });


    </script>
	<style>
		
body {
	background-image: url(../img/notice_img/power123.jpg);
	background-repeat: no-repeat;
	background-position: 20% 30%;
	
    font: 600 16px/18px 'Open Sans', sans-serif;
}

/*#mainImg {
    top: 0px;
    left: 0px;
    height:100%;
    min-width: 100%;
    min-height: 100%;
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    z-index: 1;
}*/

#svg1 {
    position: fixed;
    top: 50px;
    left: 50px;
    fill: gray;
    z-index: 33;
}

#dropdown h1 {
    position: fixed;
    display: block;
    top: 40px;
    left: 120px;
    color: white;
    z-index: 32;
}

#menuBar {
    position: fixed;
    display: block;
    top: 0px;
    left: 0px;
    background-color: rgba(50, 90, 80, 0.295);
    height: 100%;
    width: 400px;
    z-index: 10;
}

#menuBar a {
    text-decoration: none;
}

#menuBar ul {
    list-style-type: none;
    position: fixed;
    top: 110px;
    left: 50px;
}

#menuBar ul li {
    color: rgba(255, 255, 255, 0.753);
    font-weight: bold;
    font-size: 18pt;
    margin-top: 40px;
    z-index: 20;
}

#menuBar ul li:hover {
    color: white;
    z-index: 21;
}

#menuBar svg {
    fill: white; 
}

#svg_login {
    position: fixed;
    top: 580px;
    left: 280px;
    fill: white;
    z-index: 33;
}

#svg_join {
    position: fixed;
    top: 580px;
    left: 330px;
    fill: white;
    z-index: 34; 
}

#loginBox {
    position: fixed;
    display: block;
    top: 100px;
    left: 710px;
    background-color: rgba(255, 0, 0, 0);
    height: 680px;
    width: 500px;
    z-index: 40;
}
/*------------------- 로그인 유지 우측 상단 -------------------*/
#login_Ing {
	position: absolute;
    display: block;
    top: 50px;
    right: 100px;
    background-color: rgba(255, 0, 0, 0);
    color: white;
    z-index: 25; 
}
#login_Ing a {
	color: white;
	margin-left: 10px;
}
#login_Ing svg {
	fill: white;
}

/*------------------- 로그인 창------------------- */
.login-box {
    width: 100%;
    margin: auto;
    max-width: 525px;
    min-height: 750px;
    box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19)
}

.login-snip {
    width: 100%;
    height: 110%;
    position: absolute;
    padding: 90px 70px 50px 70px;
    border-radius: 10px;
    /*background: rgba(20, 20, 20, 0.9);*/
    background: rgba(211, 211, 211, 0.671);
}

#closeBtn {
    position: relative;
    top: -70px;
    left: 395px;
}

.login-snip .login,
.login-snip .sign-up-form {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    position: absolute;
    transform: rotateY(180deg);
    backface-visibility: hidden;
    transition: all .4s linear
}

.login-snip .sign-in,
.login-snip .sign-up,
.login-space .group .check {
    display: none
}

.login-snip .tab,
.login-space .group .label,
.login-space .group .button {
    text-transform: uppercase
}

.login-snip .tab {
    font-size: 22px;
    margin-right: 15px;
    padding-bottom: 5px;
    margin: 0 15px 10px 0;
    display: inline-block;
    border-bottom: 2px solid transparent
}

.login-snip .sign-in:checked+.tab,
.login-snip .sign-up:checked+.tab {
    color: #fff;
    border-color: #1161ee
}

.login-space {
    min-height: 345px;
    position: relative;
    perspective: 1000px;
    transform-style: preserve-3d
}

.login-space .group {
    margin-bottom: 16px
}

.group:nth-child(6) {
	margin-top: 30px;
}

.login-space .group .label,
.login-space .group .input,
.login-space .group .button {
    width: 100%;
    color: #fff;
    display: block
}

.login-space .group .input,
.login-space .group .button {
    border: none;
    padding: 15px 20px;
    border-radius: 25px;
    background: rgba(255, 255, 255, .1)
}

.login-space .group input[data-type="password"] {
    text-security: circle;
    -webkit-text-security: circle
}

.login-space .group .label {
    color: rgb(97, 97, 97);
    font-size: 12px
}

.login-space .group .button {
    background: #1161ee
}

.login-space .group label .icon {
    width: 15px;
    height: 15px;
    border-radius: 2px;
    position: relative;
    display: inline-block;
    background: rgba(255, 255, 255, .1)
}

.login-space .group label .icon:before,
.login-space .group label .icon:after {
    content: '';
    width: 10px;
    height: 2px;
    background: #fff;
    position: absolute;
    transition: all .2s ease-in-out 0s
}

.login-space .group label .icon:before {
    left: 3px;
    width: 5px;
    bottom: 6px;
    transform: scale(0) rotate(0)
}

.login-space .group label .icon:after {
    top: 6px;
    right: 0;
    transform: scale(0) rotate(0)
}

.login-space .group .check:checked+label {
    color: #fff
}

.login-space .group .check:checked+label .icon {
    background: #1161ee
}

.login-space .group .check:checked+label .icon:before {
    transform: scale(1) rotate(45deg)
}

.login-space .group .check:checked+label .icon:after {
    transform: scale(1) rotate(-45deg)
}

.login-snip .sign-in:checked+.tab+.sign-up+.tab+.login-space .login {
    transform: rotate(0)
}

.login-snip .sign-up:checked+.tab+.login-space .sign-up-form {
    transform: rotate(0)
}

*,
:after,
:before {
    box-sizing: border-box;
}

.clearfix:after,
.clearfix:before {
    content: '';
    display: table;
}

.clearfix:after {
    clear: both;
    display: block;
}

a {
    color: inherit;
    text-decoration: none;
}

.hr {
    height: 2px;
    margin: 40px 0 40px 0;
    background: rgba(255, 255, 255, .2);
}

.foot {
    text-align: center;
}

.card {
    width: 500px;
    left: 100px;
}

::placeholder {
    color: #8f8c8c;
}

.button {
	margin-top: 20px;
}

/* 섹션 부분 크기 조정 */
#notice_list {
	background-color:rgba(153,153,153,0.9);
	width:1300px; 
	height:700px; 
	position:absolute;
	left:480px; 
	top:150px;
	margin:0; 
	padding:20px;
}

#notice_list a {
	font-size: 16pt;
	color: blue;
}

#notice_board_top ul {
	display: table-row-group;
}

#notice_board_top li {
	display:inline;
	text-align:center;
	padding:7px 10px;
	vertical-align: middle;
	display: table-cell;
	border-bottom:1px solid rgba(0,0,0,0.15);

}
		
	</style>
   
</head>
<body>
<!-- noticeDto 객체설정 -->
<% ArrayList<NoticeDto> dto = (ArrayList<NoticeDto>)request.getAttribute("articleList"); %>
	<!-- 로그아웃 다이얼로그 -->
	<div id="logout_dialog" title="logout"  >
	로그아웃 하시겠습니까?
	</div>
    <!-- 부트스트랩 아이콘 -->
    <div id="dropdown">
        <svg id="svg1" width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-grid-fill" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z"/>
        </svg>
        <a href="mainPage.html"><h1>DOG PARK</h1></a>

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
    	<jsp:include page="../header/header.jsp" />
    </div>
    
    <!-- 공지사항 게시판 리스트 -->
    	<section id="notice_list">
    		<a href="#">NOTICE 공지사항</a>
    		<hr />
    		<article id="notice_board_top">
    			<ul>
    				<li class="notice_board_No">No</li>
    				<li class="notice_board_title">제목</li>
    				<li class="notice_board_writer">글쓴이</li>
    				<li class="notice_board_count">조회수</li>
    				<li class="notice_board_date">작성일</li>
    			</ul>
    			
				<ul>
					<li class="notice_board_No_detail"><%out.println(dto.get(0).getIndex());%> </li>
					<li class="notice_board_title_detail"><%out.println(dto.get(0).getNt_title()); %></li>
					<li class="notice_board_writer_detail"><%out.println(dto.get(0).getU_id());%> </li>
					<li class="notice_board_count_detail"><%out.println(dto.get(0).getNt_view());%> </li>
					<li class="notice_board_date_detail"><%out.println(dto.get(0).getDate());%> </li>
				</ul>
    		</article>
    		
    	</section>

</body>

</html>