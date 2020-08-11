<% 
session.getAttribute("id");
session.invalidate();
response.sendRedirect("../../mainPage.jsp");
%>