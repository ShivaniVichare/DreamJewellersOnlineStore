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
	<img src="images/logo1.JPG" / width="100%" class="aboutus">
	<br>
	<br>
	<center>
		<h2 style="color: purple"><b>CONTACT US</b></h2>
	</center>
	<br>
<div class="container">
	<center><h4>For any enquiries or feedback fill the below form.</h4></center>
	<br><br>
	
	<div style="float:right"> 
		<h5>Reach Us</h5>
		<p>#7, Mezzanine Floor, Cama Industrial<br>
		Sun-mill Compound, Parel , West<br>
		Mumbai 400012. India.<br>
		Telephone: +91 -22 -2543278<br>
		Email: dreamjewellers@gmail.com
		</p>
		
	</div>
	
			<form action="" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			
			<div class="form-group">
				<label>First Name: </label>
				<input type="text" name="fname" id="fname" onkeyup="myfunction(this)" placeholder="Enter First Name" class="form-control"/>
				<span id="msgusername" style="color:red"></span>
			</div>
			<div class="form-group">
				<label>Company Name</label>
				<input type="text" name="cname" id="cname" onkeyup="myfunction(this)" placeholder="Enter Company Name" class="form-control"/>
				<span id="msgemail" style="color:red"></span>
			</div>
			<div class="form-group">
				<label>Email Address</label>
				<input type="email" name="emailadd" placeholder="Enter Email" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Comments</label>
				<input type="comments" name="comments" placeholder="Enter comments" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Submit" class="btn btn- btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>