<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script>
	function myfunction(textbox)
	{
		var val=textbox.value;
		var id=textbox.id;
		var url="ValidateServlet?v="+val+"&id="+id;
		
		 var xhttp = new XMLHttpRequest();
		 
		  xhttp.onreadystatechange = function() 
		  {
		    if (this.readyState == 4 && this.status == 200) 
		    {
		     	document.getElementById("msg"+id).innerHTML = this.responseText;
		    }
		  };
		  
		  xhttp.open("GET", url);
		  xhttp.send();
	}
</script>
<div class="main">
	<div class="container">
	<center>
	<span style="color: orange">
	<h5 style="font: 30px Montserrat, sans-serif">REGISTER YOURSELF</h5>
	</span>
	</center>
		<form action="RegistrationServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			
			<div class="form-group">
				<label>Enter Username</label>
				<input type="text" name="username" id="username" onkeyup="myfunction(this)" placeholder="Enter Username" class="form-control"/>
				<span id="msgusername" style="color:red"></span>
			</div>
			<div class="form-group">
				<label>Enter Email</label>
				<input type="email" name="email" id="email" onkeyup="myfunction(this)" placeholder="eaxmple@abc.com" class="form-control"/>
				<span id="msgemail" style="color:red"></span>
			</div>
			<div class="form-group">
				<label>Enter Password</label>
				<input type="password" name="password" placeholder="Enter Password" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Register" class="btn btn- btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>