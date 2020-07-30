<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.dogpark.dao.Dao"%>
<%@page import="com.dogpark.dto.Dto"%>
<%@page import="java.util.List" %>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%  
		String title= request.getParameter("ht_title");
		String contents= request.getParameter("ht_contents");
		String file= request.getParameter("ht_file");
		String writer= request.getParameter("ht_writer");
		Mybatis_DTO dto = new Mybatis_DTO();
		SqlSessionFactory sqlfactory = Mybatis_DAO.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		dto.setHt_title(title);
		dto.setHt_contents(contents);
		dto.setHt_file(file);
		dto.setU_id(writer);
		
		sqlsession.insert("superpowerinsert",dto);
		sqlsession.commit();
		sqlsession.close();

		RequestDispatcher dispatcher = request.getRequestDispatcher("honeytip_login_select.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>