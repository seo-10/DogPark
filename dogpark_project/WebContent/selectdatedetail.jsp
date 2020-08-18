<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.CalendarDto"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%ArrayList<CalendarDto> calendarList = (ArrayList<CalendarDto>) request.getAttribute("calendarList"); %>
<%=calendarList.get(0).getDate() %>
</body>
</html>