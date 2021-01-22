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
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int jid=Integer.parseInt(req.getParameter("jid"));
		String category=req.getParameter("category");
		String name=req.getParameter("name");
		float gram=Float.parseFloat(req.getParameter("gram"));
		float price=Float.parseFloat(req.getParameter("price"));
		
		
		HttpSession hs=req.getSession();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellers","root","root");
			PreparedStatement ps=con.prepareStatement("update jewellery set category=?,name=?,gram=?,price=? where jid=?");
			ps.setString(1, category);
			ps.setString(2, name);
			ps.setFloat(3, gram);
			ps.setFloat(4, price);
			ps.setInt(5, jid);
			ps.execute();
			PrintWriter out=resp.getWriter();
			hs.setAttribute("msg", "Jewellery Updated Successfully!!!");
			hs.setAttribute("pagename", "jewelleries.jsp");
			hs.setAttribute("type", "success");
			resp.sendRedirect("popup.jsp");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
