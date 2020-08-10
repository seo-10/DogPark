<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>

<%
int action = 0; //up(1) down(0)
int currYear = 0;
int currMonth = 0;

Calendar c = Calendar.getInstance();
Calendar cal = Calendar.getInstance();

if(request.getParameter("action") == null) {
    
     currMonth = c.get(Calendar.MONTH);
     currYear = c.get(Calendar.YEAR);
     cal.set(currYear,currMonth,1);
    
} else {
    
     if(request.getParameter("action") != null){
         
          currMonth = Integer.parseInt(request.getParameter("month"));
          currYear = Integer.parseInt(request.getParameter("year"));
         
          if(Integer.parseInt(request.getParameter("action"))==1) {

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

<%!
     public boolean isDate(int y, int m, int d) {
    
          m -= 1;
          Calendar c = Calendar.getInstance();
          c.setLenient(false);
         
          try {
              
               c.set(y, m, d);
               Date dt = c.getTime();
              
          } catch(IllegalArgumentException e) {
               return false;
          }
          return true;
     }
%>

<%!
     public String getTitle(Calendar cal){
         
          SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월");
          return sdf.format(cal.getTime());    
     }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="css/inquiryofsale_css/inquiryofsale_main.css?ver=1" />
<link rel="stylesheet" href="css/inquiryofsale_css/monthly.css?ver=4">
</head>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript" src="js/inquiryofsale_js/jquery.js"></script>
<body>
	<% String id= (String)session.getAttribute("id"); %>
	<div id="logout_dialog" title="logout">로그아웃 하시겠습니까?</div>
	<!-- 로그인 유지 -->
	<div id="login_Ing">
		<jsp:include page="js/inquiryofsale_js/header.jsp" />
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
	<form action="ds_reservation.bo" method="post">
		<section class="ios_contents">
			<table border='1' width='800' celpadding='0' cellspacing='0'>
				<tr>
					<td width='150' align='right' valign='middle'><a
						href="dogpark_calendar.jsp?month=<%=currMonth%>&year=<%=currYear%>&action=0">
							<font size="2">◁◁</font>
					</a></td>
					<td width='260' align='center' valign='middle'><b><%= getTitle(cal)%></b>
					</td>
					<td width='173' align='left' valign='middle'><a
						href="dogpark_calendar.jsp?month=<%=currMonth%>&year=<%=currYear%>&action=1">
							<font size="2">▷▷</font>
					</a></td>
				</tr>
			</table>
			<table>
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

     for (int w = 1; w < 7; w++)
     {
%>
							<tr>
							<%
          for (int d = 1; d < 8; d++)
          {
               if (!(count >= cal.get(Calendar.DAY_OF_WEEK))) //  
               {

%>
								<td class="empty">&nbsp;</td>
								<%
                    count += 1;
               }
               else
               {

                    if (isDate (currYear, currMonth + 1,dispDay) ) // use the isDate method
                    {
                         //오늘
                         if (dispDay == c.get(Calendar.DAY_OF_MONTH) &&
                            c.get(Calendar.MONTH) == cal.get(Calendar.MONTH) 
                                && c.get(Calendar.YEAR) == cal.get(Calendar.YEAR) )
                         {
                             todayColor = "class='toDayColor'";
                         }
                         else
                         {
                             todayColor = "";
                         }
%>
								<td <%=todayColor%>><%=dispDay%><br></td>
								<%
                         count += 1;
                         dispDay += 1;
                    }
                    else
                    {
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
			<div id="calender_dateselect">
				<pre>※<%=id%>님 원하는 날짜와 시간을 선택해주세요.※</pre>
				<input type="date" name="redate"/>
				<input type="time" name="retime" value="10:00" min="10:00" max="19:00" step="1800" required/>
				<input type="submit" id="reservation_button" value="예약등록" />
			</div>
		</section>
	</form>
</body>
</html>