<% 
session.getAttribute("id");
session.invalidate();
response.sendRedirect("../../mainPage_Login.jsp");
%>