import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int jid=Integer.parseInt(req.getParameter("jid"));
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellers","root","root");
			PreparedStatement ps=con.prepareStatement("delete from jewellery where jid=?");
			ps.setInt(1,jid);
			ps.executeUpdate();
			PrintWriter out=resp.getWriter();
			resp.sendRedirect("jewelleries.jsp");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
