<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculate</title>
</head>
<body>
<%
int no1=Integer.parseInt(request.getParameter("t2"));
int no2=Integer.parseInt(request.getParameter("t3"));
int bill=no1*no2;
%>
Welcome to our Restaurent<br>
Your Bill is: <%=bill%>
<%
if(bill>1000)
{
%>
<jsp:forward page="discount.jsp"/>
<%
}
%>
</body>
</html>