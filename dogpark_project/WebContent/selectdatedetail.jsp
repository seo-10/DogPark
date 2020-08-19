<%@page import="javax.tools.ForwardingFileObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="com.dogpark.dto.CalendarDto"%>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*" %>

<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
	} catch ( ClassNotFoundException e ) {
    	
		e.printStackTrace();
		return ;
    }
	String re_time=request.getParameter("re_time");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		String url = "jdbc:mysql://localhost:3306/dogpark?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		conn = DriverManager.getConnection(url,"jiwon","34811005");
		
		
		stmt = conn.createStatement();
		String sql = "select time from calendar where day(date)='"+re_time+"';";
		rs = stmt.executeQuery(sql);
		
		while ( rs.next() ) {
			out.println(rs.getString(1));
			
		}
		
	} catch (SQLException se1) {
	    se1.printStackTrace();
	} catch (Exception ex) {
	    ex.printStackTrace();
	} finally {
	    try {
	        if (stmt != null)
	            stmt.close();
	    } catch (SQLException se2) {
	    }
	    try {
	        if (conn != null)
	            conn.close();
	    } catch (SQLException se) {
	        se.printStackTrace();
	    }
	}   
%>