<% 
session.getAttribute("id");
session.invalidate();
response.sendRedirect("../../NT_List.html");
%>