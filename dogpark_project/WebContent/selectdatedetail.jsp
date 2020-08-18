<%@page import="javax.tools.ForwardingFileObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.CalendarDto"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

</head>
<body>

<%ArrayList<CalendarDto> calendarList = (ArrayList<CalendarDto>) request.getAttribute("calendarList"); %>
<%for(int i=0;i<calendarList.size(); i++) {%>
	<%=calendarList.get(i).getTime() %>
<%} %>
	
</body>
</html>