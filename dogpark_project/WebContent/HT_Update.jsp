<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.dogpark.dto.BoardBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/community_css/htboard.css?ver=2" />
 <link rel="stylesheet" type="text/css" href="css/community_css/community_main.css?ver=2" />
</head>
<body>
 <%ArrayList<BoardBean> dto = (ArrayList<BoardBean>)request.getAttribute("articleList"); %>
 
	<form name="form" method="post" action="ht_updateprocess.bo?code_no=<%=dto.get(0).getCode_no()%>">
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
	   
 
 
 
 

<section id="ht_update">
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
</body>
</html>