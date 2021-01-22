<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- JSP Comments --%>
	<!-- Scriplet Tag -->
	<%
		session.removeAttribute("role");
		session.invalidate();
	
		String username="",password="",checkbox="";
		
		Cookie ck[]=request.getCookies();
		
		for(Cookie c:ck)
		{
			if(c.getName().equals("un"))
			{
				username=c.getValue();
			}
			else if(c.getName().equals("pwd"))
			{
				password=c.getValue();
			}
			else if(c.getName().equals("check"))
			{
				checkbox=c.getValue();
			}
		}
	%>
	
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
	<div class="container">
	<center>
	<span style="color: orange">
	<h5 style="font: 30px Montserrat, sans-serif">CUSTOMER LOGIN</h5>
	</span>
	</center>
	<br>
	<br>
	
	<div style="float:right"> 
	<h5>Dont have an account yet??</h5>
	<h4>What are you waiting for?????</h4>
	<h3>Go and create one!!!!</h3>
	<a href="register.jsp">
	<input type="submit" value="Create your account" class="btn btn-secondary btn-block">
	</a>
	</div>
	
		<form action="LoginServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
		<label style="color:blue">REGISTERED CUSTOMERS</label>
		<p> If you have an account, sign in with your Email</p>
			<div class="form-group">
				<label>Enter Username</label>
				<input type="text" name="username" value="<%out.println(username);%>" placeholder="Enter Username" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Password</label>
				<!-- Expression Tag -->
				<input type="password" name="password" value="<%=password%>" placeholder="Enter Password" class="form-control"/>
			</div>
			<div class="form-group">
				<%
					if(checkbox.equals("rememberme"))
					{
				%>
				<input type="checkbox" name="rememberme" value="remember" checked="checked"> Remember Me
				<%
					}
					else
					{
				%>
					<input type="checkbox" name="rememberme" value="remember"> Remember Me
				<%
					}
				%>
			</div>
			<div class="form-group">
				<input type="submit" value="Login" class="btn btn-secondary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>