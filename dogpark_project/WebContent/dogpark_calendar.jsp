<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.CalendarDto"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%
	int action = 0; //up(1) down(0)
	int currYear = 0;
	int currMonth = 0;

	Calendar c = Calendar.getInstance();
	Calendar cal = Calendar.getInstance();

	if (request.getParameter("action") == null) {

		currMonth = c.get(Calendar.MONTH);
		currYear = c.get(Calendar.YEAR);
		cal.set(currYear, currMonth, 1);

	} else {

		if (request.getParameter("action") != null) {

			currMonth = Integer.parseInt(request.getParameter("month"));
			currYear = Integer.parseInt(request.getParameter("year"));

			if (Integer.parseInt(request.getParameter("action")) == 1) {

				cal.set(currYear, currMonth, 1);
				cal.add(Calendar.MONTH, 1); //다음달
				currMonth = cal.get(Calendar.MONTH);
				currYear = cal.get(Calendar.YEAR);

			} else {

				cal.set(currYear, currMonth, 1);
				cal.add(Calendar.MONTH, -1); //이전달
				currMonth = cal.get(Calendar.MONTH);
				currYear = cal.get(Calendar.YEAR);
			}

		}
	}
	System.out.println(currYear);
	System.out.println(currMonth);
%>

<%!public boolean isDate(int y, int m, int d) {

		m -= 1;
		Calendar c = Calendar.getInstance();
		c.setLenient(false);

		try {

			c.set(y, m, d);
			Date dt = c.getTime();

		} catch (IllegalArgumentException e) {
			return false;
		}
		return true;
	}%>

<%!public String getTitle(Calendar cal) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월");
		return sdf.format(cal.getTime());
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- JQuery UI 를 쓰기위한 스크립트 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<!-- jquery 사용 -->
<script type="text/javascript" src="js/community_js/community.js"></script>

<!-- css 사용 -->
<link rel="stylesheet" type="text/css"
	href="css/Dogsale_css/dogsale.css">
<link rel="stylesheet" type="text/css"
	href="css/community_css/htboard.css?ver=1" />
<link rel="stylesheet" type="text/css"
	href="css/community_css/community_main.css?ver=2" />

<!-- 로그아웃 다이얼로그 CSS 연결 -->
<link rel="stylesheet" type="text/css"
	href="css/logoutDialog_css/logoutDialog.css?ver=2" />

<!-- 부트스트랩 cdn -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="ds_reservation.bo" method="post" name="form">
		<%
			ArrayList<CalendarDto> calendarList = (ArrayList<CalendarDto>) request.getAttribute("calendarList");
			ArrayList<CalendarDto> countList = (ArrayList<CalendarDto>) request.getAttribute("countList");
		%>
		<%
			String id = (String) session.getAttribute("id");
		%>
		<!-- 로그아웃 다이얼로그 -->
		<div id="logout_dialog" title="logout">로그아웃 하시겠습니까?</div>

		<!-- 메뉴 왼쪽 드롭다운 -->
		<div id="dropdown">
			<jsp:include page="mainMenu_Left.jsp" />
		</div>

		<!-- 로그인 유지  -->
		<div id="login_Ing">
			<jsp:include page="js/community_js/header.jsp" />
		</div>

		<section class="ios_contents">
			<table border='0' width='800' celpadding='0' cellspacing='0'
				style="float: left;">
				<tr>
					<td width='150' align='right' valign='middle'><a
						href="dogpark_calendar.jsp?month=<%=currMonth%>&year=<%=currYear%>&action=0">
							<font size="2">◁◁</font>
					</a></td>
					<td width='260' align='center' valign='middle'><b><%=getTitle(cal)%></b>
					</td>
					<td width='173' align='left' valign='middle'><a
						href="dogpark_calendar.jsp?month=<%=currMonth%>&year=<%=currYear%>&action=1">
							<font size="2">▷▷</font>
					</a></td>
				</tr>
			</table>
			<table style="float: left;">
				<tr>
					<td>
						<table id="calendarTable">
							<tr>
								<th>일</th>
								<th>월</th>
								<th>화</th>
								<th>수</th>
								<th>목</th>
								<th>금</th>
								<th>토</th>
							</tr>
							<%
								//'Calendar loop
								int currDay;
								String todayColor;
								int count = 1;
								int dispDay = 1;

								for (int w = 1; w < 7; w++) {
							%>
							<tr>
								<%
									for (int d = 1; d < 8; d++) {
											if (!(count >= cal.get(Calendar.DAY_OF_WEEK))) //  
											{
								%>
								<td class="empty">&nbsp;</td>
								<%
									count += 1;
											} else {

												if (isDate(currYear, currMonth + 1, dispDay)) // use the isDate method
												{
													//오늘
													if (dispDay == c.get(Calendar.DAY_OF_MONTH)
															&& c.get(Calendar.MONTH) == cal.get(Calendar.MONTH)
															&& c.get(Calendar.YEAR) == cal.get(Calendar.YEAR)) {
														todayColor = "class='toDayColor'";
													} else {
														todayColor = "";
													}
								%>
								<%
									if (dispDay != Integer.parseInt(countList.get(0).getDate())) {
								%>
								<td <%=todayColor%>><%=dispDay%>일
									<ul>
										<li>예약 건수:예약이 없습니다.</li>
									</ul></td>
								<%
									count += 1;
														dispDay += 1;
													} else {
								%>
								<td <%=todayColor%>><%=dispDay%>일
									<ul>
										<li>예약 건수:<%=countList.get(0).getCount()%>건
										</li>
									</ul></td>
								<%
									count += 1;
														dispDay += 1;
													}
												} else {
								%>
								<td class="empty">&nbsp;</td>
								<%
									}
											}
										}
								%>
							</tr>
							<%
								}
							%>
						</table>
					</td>
				</tr>
			</table>
			<aside id="calender_dateselect">
				<input type="hidden" name="id" value="<%=id%>" />
				<pre>※원하는 날짜와 시간을 선택해주세요.※</pre>
				<input type="date" name="redate" /> <input type="time"
					name="retime" value="10:00" min="10:00" max="19:00" step="1800"
					required /> <input type="submit" id="reservation_button"
					value="예약등록" />
			</aside>
		</section>
	</form>
</body>
</html>