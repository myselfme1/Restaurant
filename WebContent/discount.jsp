<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Discount</title>
</head>
<body>
<% 
int no1=Integer.parseInt(request.getParameter("t2"));
int no2=Integer.parseInt(request.getParameter("t3"));
int bill=no1*no2;
%>
Welcome to Our Restaurent
Your Bill is: <%=bill%><br>
Your discount is: 10%<br>
Total Bill after discount: <%=bill-.1*bill%>
</body>
</html>