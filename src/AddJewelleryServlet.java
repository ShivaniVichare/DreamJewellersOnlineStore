import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddJewelleryServlet")
@MultipartConfig(maxFileSize=99999999999L)
public class AddJewelleryServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String category=req.getParameter("category");
		String name=req.getParameter("name");
		float gram=Float.parseFloat(req.getParameter("gram"));
		float price=Float.parseFloat(req.getParameter("price"));
		Part part=req.getPart("image");
		InputStream is=part.getInputStream();
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellers","root","root");
			PreparedStatement ps=con.prepareStatement("insert into jewellery(category,name,gram,price,image) values(?,?,?,?,?)");
			ps.setString(1, category);
			ps.setString(2, name);
			ps.setFloat(3, gram);
			ps.setFloat(4, price);
			ps.setBlob(5, is);
			ps.executeUpdate();
			PrintWriter out=resp.getWriter();
			out.println("<script>"
					+ "alert('Jewellery Added Successfully!!!');"
					+ "window.location='jewelleries.jsp'"
					+ "</script>");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
