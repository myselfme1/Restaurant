<%@page import="java.sql.*"%>
<html>
<head>
	<link rel=stylesheet type=text/css href=cd.css>
	<style>
	body{
	background-image:url(images/slider-02.jpg);
	background-repeat:no-repeat,no-repeat,repeat;
	background-position:;
	}
	</style>
</head>
<body style="background-image:url(images/slider-02.jpg); background-position: center center;">
<div class=main>
		<div class=header>
			<center><h1>Welcome to IIIT Restaurant</h1></center><br>
		</div>
		<div class=menu>
			<div class="scrollmenu">
  <a href="index.html">Home</a>
  <a href="Contact Us.html">Contact Us</a>
  <a href="menu.jsp">Ordering/Menu</a>
 <!-- <a href="#reservation">Reservation</a>
  <a href="#Inventory">Inventory</a>
  <a href="#about">About Us</a>-->
  <a href="Location.html">Location</a>
  <a href="CustomerDetails.html">Book a Table</a>
</div>
		</div>
		<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-center">
				<!-- <img src="images/slider-02.jpg" alt="">-->
				<div class="container">
					<div class="row">
<!--  <div class=main>
		<div class=header>
			<center><h1>Welcome Hello</h1></center><br>
		</div>
		<div class=menu>
			<div class="scrollmenu">
  <a href="index.html">Home</a>
  <a href="Contact Us.html">Contact Us</a>
  <a href="menu.jsp">Ordering/Menu</a>
  <a href="#reservation">Reservation</a>
  <a href="#Inventory">Inventory</a>
  <a href="#about">About Us</a>
  <a href="Location.html">Location</a>
  <a href="CustomerDetails.html">Book a Table</a>
</div>
		</div>-->
		<div class=banner>
		<!--  <h1 style="color:white">Roti</h1>-->
<table style="color:white" border=1 align="left" width="45%" cellpadding="10" cellspacing="0">
<th>Roti Name</th><th>Roti Price(in Rs)</th>
<%
int ctr=0;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
		"system","manager");
	Statement st=con.createStatement();
	String sql="Select * from roti";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		ctr++;
		if(ctr%2==0)
		{
			%>
<tr align=center><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
<%
		}
			else
		{
				%>
<tr  align=center><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
<%
		}
	
	}
	rs.close();
	//rs1.close();
	st.close();
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
<!--  <h1>SadaBahar Sabjiyan</h1>-->
<table style="color:white" border=1 align="right" width="45%" cellpadding="10" cellspacing="0">
<th>Paneer Name</th><th>Paneer Price(in Rs)</th>
<%
ctr=0;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
		"system","manager");
	Statement st=con.createStatement();
	String sql="Select * from sadabaharsubjiyan";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		ctr++;
		if(ctr%2==0)
		{
			%>
<tr  align=center><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
<%
		}
			else
		{
				%>
<tr  align=center><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
<%
		}
	
	}
	rs.close();
	//rs1.close();
	st.close();
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</table><br><br><br><br>
<!-- <h1>HariBharisubjiyan</h1>-->
<table style="color:white" border=1 align="left" width="45%" cellpadding="10" cellspacing="0">
<th>Subji Name</th><th>Subji Price(in Rs)</th>
<%
ctr=0;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
		"system","manager");
	Statement st=con.createStatement();
	String sql="Select * from HariBharisubjiyan";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		ctr++;
		if(ctr%2==0)
		{
			%>
<tr  align=center><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
<%
		}
			else
		{
				%>
<tr  align=center><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
<%
		}
	
	}
	rs.close();
	//rs1.close();
	st.close();
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</table><br><br><br><br>
<!--<h1>Paneer</h1>-->
<table style="color:white" border=1 align="right" width="45%" cellpadding="10" cellspacing="0">
<th>Pizza Name</th><th>Pizza Price(in Rs)</th>
<%
ctr=0;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
		"system","manager");
	Statement st=con.createStatement();
	String sql="Select * from pizza";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		ctr++;
		if(ctr%2==0)
		{
			%>
<tr  align=center><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
<%
		}
			else
		{
				%>
<tr  align=center><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
<%
		}
	
	}
	rs.close();
	//rs1.close();
	st.close();
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
</body>
</html>