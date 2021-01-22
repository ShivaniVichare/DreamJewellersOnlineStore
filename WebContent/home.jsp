<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Karla" rel="stylesheet">
<title>Insert title here</title>
<style>


</style>
</head>
<body background="">
	<jsp:include page="header.jsp"></jsp:include>
	
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/banner1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/banner2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="imagesbanner3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-- images -->

<div>
<a href="ring.jsp">
		<img src="images/ring.jpg" style="width: 33%">
	</a>
		<a href="bracelet.jsp">
		<img src="images/bracelet.jpg"  style="width: 33%">
	</a>
	
	<a href="necklace.jsp">
		<img src="images/necklace1.jpg"  style="width: 33%">
	</a>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>