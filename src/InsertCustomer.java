

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertCustomer
 */
@WebServlet("/custurl")
public class InsertCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String n1=request.getParameter("t1");
		String n2=request.getParameter("t2");
		String cn=request.getParameter("t3");
		String d4=request.getParameter("dt");
		//String g=request.getParameter("t4");
		/*ServletContext cf=getServletContext();
		String driver=cf.getInitParameter("driver");
		String url=cf.getInitParameter("url");
		String uname=cf.getInitParameter("uname");
		String ps=cf.getInitParameter("ps");*/
		try
		{
			//Class.forName(driver);
			//Connection con=DriverManager.getConnection(url,uname,ps);
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
		Statement st=con.createStatement();
		String sql="insert into custable values('"+n1+"','"+n2+"',"+cn+",'"+d4+"')";
		int ctr=st.executeUpdate(sql);
		if(ctr>0)
			{
				out.println("<html><head>\r\n"
						+ "<title>Success</title>\r\n"
						+"<link rel=stylesheet type=text/css href=ee.css>\r\n"
						+ "<link rel=stylesheet type=text/css href=cd.css>\r\n"
						+ "</head><body ><div class=main>\r\n"
						+ "		<div class=header>\r\n"
						+ "			<center><h1>Welcome to IIIT Restaurant</h1></center><br>\r\n"
						+ "		</div>\r\n"
						+ "		<div class=menu>\r\n"
						+ "			<div class=\"scrollmenu\">\r\n"
						+ "  <a href=\"index.html\">Home</a>\r\n"
						+ "  <a href=\"Contact Us.html\">Contact Us</a>\r\n"
						+ "  <a href=\"menu.jsp\">Ordering/Menu</a>\r\n"
						+ " <!-- <a href=\"#reservation\">Reservation</a>\r\n"
						+ "  <a href=\"#Inventory\">Inventory</a>\r\n"
						+ "  <a href=\"#about\">About Us</a>-->\r\n"
						+ "  <a href=\"Location.html\">Location</a>\r\n"
						+ "  <a href=\"CustomerDetails.html\">Book a Table</a>\r\n"
						+ "</div>\r\n"
						+ "		</div>");
				out.println("<center><h1>Congratulations!</h1>");
				out.println("<h2>Your table has been booked\n and below are the details of your booking</h2>\n");
				out.println("<h2>");
				out.println("Customer Name: "+n1+" "+n2);
				out.println("</h2><h2>");
				out.println("Customer Contact Number: "+cn);
				out.println("</h2><h2>");
				out.println("Date and time of your visit: "+d4);
				out.println("</h2></center>");
				out.println("</body></html>");
			}
		else
			out.println("data not insert");
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
	}

}
