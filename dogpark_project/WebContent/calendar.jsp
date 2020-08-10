<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=utf-8"%>


<html lang="ko">
<head>
	<title>캘린더</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<!-- jquery datepicker -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  	
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<!-- jquery datepicker 끝 -->
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
	<script src="/resources/js/board.js" ></script>
	<script type="text/javaScript" language="javascript">


	
	</script>
	<style TYPE="text/css">
		body {
		scrollbar-face-color: #F6F6F6;
		scrollbar-highlight-color: #bbbbbb;
		scrollbar-3dlight-color: #FFFFFF;
		scrollbar-shadow-color: #bbbbbb;
		scrollbar-darkshadow-color: #FFFFFF;
		scrollbar-track-color: #FFFFFF;
		scrollbar-arrow-color: #bbbbbb;
		margin-left:"0px"; margin-right:"0px"; margin-top:"0px"; margin-bottom:"0px";
		}

		td {font-family: "돋움"; font-size: 9pt; color:#595959;}
		th {font-family: "돋움"; font-size: 9pt; color:#000000;}
		select {font-family: "돋움"; font-size: 9pt; color:#595959;}


		.divDotText {
		overflow:hidden;
		text-overflow:ellipsis;
		}

		a:link { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
		a:visited { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
		a:active { font-size:9pt; font-family:"돋움";color:red; text-decoration:none; }
		a:hover { font-size:9pt; font-family:"돋움";color:red;text-decoration:none;}
		.day{
			width:100px; 
			height:30px;
			font-weight: bold;
			font-size:15px;
			font-weight:bold;
			text-align: center;
		}
		.sat{
			color:#529dbc;
		}
		.sun{
			color:red;
		}
		.today_button_div{
			float: right;
		}
		.today_button{
			width: 100px; 
			height:30px;
		}
		.calendar{
			width:80%;
			margin:auto;
		}
		.navigation{
			margin-top:100px;
			margin-bottom:30px;
			text-align: center;
			font-size: 25px;
			vertical-align: middle;
		}
		.calendar_body{
			width:100%;
			background-color: #FFFFFF;
			border:1px solid white;
			margin-bottom: 50px;
			border-collapse: collapse;
		}
		.calendar_body .today{
			border:1px solid white;
			height:120px;
			background-color:#c9c9c9;
			text-align: left;
			vertical-align: top;
		}
		.calendar_body .date{
			font-weight: bold;
			font-size: 15px;
			padding-left: 3px;
			padding-top: 3px;
		}
		.date{
			margin-bottom:10px;
		}
		.sat{
			margin-bottom:10px;
		}
		.sun{
			margin-bottom:10px;
		}
		.calendar_body .sat_day{
			border:1px solid white;
			height:120px;
			background-color:#EFEFEF;
			text-align:left;
			vertical-align: top;
		}
		.calendar_body .sat_day .sat{
			color: #529dbc; 
			font-weight: bold;
			font-size: 15px;
			padding-left: 3px;
			padding-top: 3px;
		}
		.calendar_body .sun_day{
			border:1px solid white;
			height:120px;
			background-color:#EFEFEF;
			text-align: left;
			vertical-align: top;
		}
		.calendar_body .sun_day .sun{
			color: red; 
			font-weight: bold;
			font-size: 15px;
			padding-left: 3px;
			padding-top: 3px;
		}
		.calendar_body .normal_day{
			border:1px solid white;
			height:120px;
			background-color:#EFEFEF;
			vertical-align: top;
			text-align: left;
		}
		.before_after_month{
			margin: 10px;
			font-weight: bold;
		}
		.before_after_year{
			font-weight: bold;
		}
		.this_month{
			margin: 10px;
		}
		.schdule_add_button{
			float:right;
		}
		/*
		*	게시판 이동 모달
		*/
		
		#mask_board_move {
			position: absolute;
			z-index: 9000;
			background-color: #000;
			display: none;
			left: 0;
			top: 0;
		}
		
		.normal_move_board_modal {
			display: none;
			position: fixed;
			z-index: 10000;
			left: 42% !important;
			top: 30% !important;
			margin-left: -250px !important;
			margin-top: -100px !important;
			width: 50% !important;
			height: 65% !important;
			border-radius: 12px !important;
			background-color: white !important;
		}
		
		.normal_move_board_modal .top{
			background-color: black; 
			width:100%; height:13%; 
			border-radius:12px 12px 0px 0px;
		}
		
		.normal_move_board_modal .top .close {
			float: right;
			cursor: pointer;
			color: white;
			font-size: 25px;
			font-weight: bold;
			padding-top: 5px;
			padding-right: 20px;
		}
		
		.normal_move_board_modal .top .subject{
			float:left;
			margin-left:10px;
			margin-top:20px;
			font-size:20px;
			font-weight:bold;
			color:white;
			padding-left: 20px;
		}
		
		.normal_move_board_modal .bottom{
			width:100%; 
			height:15%; 
			vertical-align: middle;
			
		}
		
		.normal_move_board_modal .bottom .info{
			padding: 10px 15px 10px 15px;
		    text-align: left;
		    font-size: 12px;
		    color: red;
		    margin-left: 50px;
		}
		
		.normal_move_board_modal .bottom .contents{
			margin:20px 50px 20px 50px;
			text-align: center;
		}
		
		.normal_move_board_modal .bottom .contents .board_select{
			width:240px;
			height:40px;
			font-size:15px;
		}
		
		.normal_move_board_modal .bottom .contents .board_move_go {
			width:80px;
			height:40px;
			font-size:15px;
			background-color:gray;
			color:white;	
		}
		.normal_move_board_modal ul{
		    padding: 0;
		    margin: 0;
		    list-style: none;
		}
		.normal_move_board_modal ul li{
		    text-align: left;
		    padding: 5px;
		    height: 30px;
		}
		.normal_move_board_modal ul li .text_subject{
	        width: 10%;
		    height: 100%;
		    float: left;
		    font-size: 18px;
		    vertical-align: middle;
		    margin-top: 3px;
		}
		.normal_move_board_modal ul li .text_desc{
			height:25px;
			width:90%;
			float: left;
		}
		.normal_move_board_modal ul li .text_area_desc{
			width:90%;
			float: left;
		}
		.normal_move_board_modal ul li .text_type1{
			height: 100% !important;
    		width: 100%;
		}
		.normal_move_board_modal ul li .textarea_type1{
    		width: 100%;
    		font-size:18px;
		}
		.normal_move_board_modal ul .button_li{
			padding-top: 130px;
			width:100%;
		}
		.normal_move_board_modal .bottom .contents .board_move_go {
		    width: 100% !important;
		    height: 40px;
		    font-size: 15px;
		    background-color: gray;
		    color: white;
		}
		.date_subject{
			margin:0px; margin-bottom:5px; margin-left:12px; font-size:12px; font-weight:bold;
		}
	</style>
</head>
<body>
<form name="calendarFrm" id="calendarFrm" action="" method="GET">
<input type="hidden" name="year" value="${today_info.search_year}" />
<input type="hidden" name="month" value="${today_info.search_month-1}" />
<script>
	var message = "${message}";
	console.log(message);
	if(message!=""){
		alert(message);
	}
</script>
<div class="calendar" >

	<!--날짜 네비게이션  -->
	<div class="navigation">
		<a class="before_after_year" href="./calendar.do?year=${today_info.search_year-1}&month=${today_info.search_month-1}">
			&lt;&lt;
		<!-- 이전해 -->
		</a> 
		<a class="before_after_month" href="./calendar.do?year=${today_info.before_year}&month=${today_info.before_month}">
			&lt;
		<!-- 이전달 -->
		</a> 
		<span class="this_month">
			&nbsp;${today_info.search_year}. 
			<c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
		</span>
		<a class="before_after_month" href="/calendar.do?year=${today_info.after_year}&month=${today_info.after_month}">
		<!-- 다음달 -->
			&gt;
		</a> 
		<a class="before_after_year" href="/calendar.do?year=${today_info.search_year+1}&month=${today_info.search_month-1}">
			<!-- 다음해 -->
			&gt;&gt;
		</a>
	</div>

<!-- <div class="today_button_div"> -->
<!-- <input type="button" class="today_button" onclick="javascript:location.href='/calendar.do'" value="go today"/> -->
<!-- </div> -->
<table class="calendar_body">

<thead>
	<tr bgcolor="#CECECE">
		<td class="day sun" >
			일
		</td>
		<td class="day" >
			월
		</td>
		<td class="day" >
			화
		</td>
		<td class="day" >
			수
		</td>
		<td class="day" >
			목
		</td>
		<td class="day" >
			금
		</td>
		<td class="day sat" >
			토
		</td>
	</tr>
</thead>
<tbody>
	<tr>
		<c:forEach var="dateList" items="${dateList}" varStatus="date_status"> 
			<c:choose>
				<c:when test="${dateList.value=='today'}">
					<c:if test="${date_status.index%7==0}">
						<tr>
					</c:if>
					<td class="today">
						<div class="date">
				</c:when>
				<c:when test="${date_status.index%7==6}">
					<td class="sat_day">
						<div class="sat">
				</c:when>	
				<c:when test="${date_status.index%7==0}">
					</tr>
					<tr>	
					<td class="sun_day">
							<div class="sun">
				</c:when>
				<c:otherwise>
					<td class="normal_day">
						<div class="date">
				</c:otherwise>
			</c:choose>
							${dateList.date}
						</div>
						<div>
						<c:forEach var="scheduleList" items="${dateList.schedule_data_arr}" varStatus="schedule_data_arr_status"> 
							<p class="date_subject">${scheduleList.schedule_subject}</p>
						</c:forEach>
						</div>
					</td>
		</c:forEach>				
				
</tbody>

</table>

<div class="schudule_button_div">
	<button type="button" class="board_move openMask_board_move pointer">일정추가</button>
</div>
</form>
<div id="mask_board_move"></div>
	<div class="normal_move_board_modal">
		<script>
			$(function() {
			    $( "#testDatepicker" ).datepicker({
			    	
			        dateFormat: "yy-mm-dd",
			    	changeMonth: true, 
			        changeYear: true,
			        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
			        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
			        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
			    });
			});
			function scheduleAdd(){
				var schedule_add_form = document.schedule_add;
				if(schedule_add_form.schedule_date.value==""||schedule_add_form.schedule_date.value==null){
					alert("날짜를 입력해주세요.");
					schedule_add_form.schedule_date.focus();
					return false;
				}else if(schedule_add_form.schedule_subject.value==""||schedule_add_form.schedule_subject.value==null){
					alert("제목을 입력해주세요.");
					schedule_add_form.schedule_date.focus();
					return false;
				}
				schedule_add_form.submit();
			}
		</script>
		<div class="top" style="">
			<div class="close" >
				x
			</div>
			<div class="subject">
				스케쥴 등록
			</div>
		</div>
		
		<div class="bottom">
			<div class="info">
				* 순번은 해당 날짜안에서 순서데로 입력이 됩니다.(하루에 최대 4개의 스케쥴만 등록할 수 있습니다.)
			</div>
			<form name="schedule_add" action="schedule_add.do">
				<input type="hidden" name="year" value="${today_info.search_year}" />
				<input type="hidden" name="month" value="${today_info.search_month-1}" />
				<div class="contents">
					<ul>
						<li>
							<div class="text_subject">순번 :</div> 
							<div class="text_desc">
								<input type="text" name="schedule_num"  class="text_type1" />
							</div>
						</li>
						<li>
							<div class="text_subject">날짜 :</div> 
							<div class="text_desc">
								<input type="text" name="schedule_date" class="text_type1" id="testDatepicker" readonly="readonly" />
							</div>
						</li>
						<li>	
							<div class="text_subject">제목 :</div> 
							<div class="text_desc">
								<input type="text" name="schedule_subject" class="text_type1" />
							</div>
						</li>	
						<li>
							<div class="text_subject">내용 :</div> 
							<div class="text_area_desc">
								<textarea name="schedule_desc" class="textarea_type1" rows="7"></textarea>
							</div>
						</li>
						<li class="button_li">
							<button type="button" class="board_move_go pointer" onclick="scheduleAdd();">일정등록</button>
						</li>
					</ul>
					
				</div>
			</form>
		</div>
		
	</div>
	
	
</body>
</html>
