<% 
session.getAttribute("id");
session.invalidate();
String before_address = request.getHeader("referer");
response.sendRedirect(before_address);
%>