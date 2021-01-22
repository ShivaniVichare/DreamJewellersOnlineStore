
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
.main {
  padding: 16px;
  margin-top: 100px;
 
}
.aboutus
{
	margin-top:90px;
}
</style>
</head>
<body>
	
	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-warning w-100"  style="position:fixed">
	
	<img src="images/logo2.JPG">
  	<a class="navbar-brand text-light" href="#"></a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-light" href="home.jsp"><span style="color:black">Home</span> <span class="sr-only">(current)</span></a>
      </li>
      <c:if test="${role==null}">
      	<li class="nav-item">
	        <a class="nav-link text-light" href="login.jsp"><span style="color:black">Login</span></a>
      	</li>
      	<li class="nav-item">
        	<a class="nav-link text-light" href="register.jsp"><span style="color:black">Register</span></a>
      	</li>
      </c:if>
      
       <!-- dropdown -->
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <span style="color:black">Women's Jewellery</span> 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="ring.jsp">Ring</a>
          <a class="dropdown-item" href="necklace.jsp" >Necklace & Chain</a>
          <!-- <div class="dropdown-divider"></div>  -->
          <a class="dropdown-item" href="bracelet.jsp">Bracelet & Bangles</a>
        </div>
        
        <!-- dropdown -->
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span style="color:black">Men's Jewellery</span> 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="mring.jsp">Ring</a>
	          <a class="dropdown-item" href="mchain.jsp">Chain</a>
	          <a class="dropdown-item" href="mbracelet.jsp">Bracelet</a>
        </div>
        
        <!-- dropdown -->
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span style="color:black">Coin's</span> 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="1gram.jsp">1 Gram</a>
          <a class="dropdown-item" href="2gram.jsp">2 Grams</a>
          <a class="dropdown-item" href="5gram.jsp">5 Grams</a>
        </div>
      </li>
      
    	<li class="nav-item">
        	<a class="nav-link text-light" href="jewelleries.jsp"><span style="color:black">Store</span> </a>
      	</li>
      
      <c:if test="${role!=null}">
			<c:if test="${role=='admin'}">
      			<li class="nav-item">
        			<a class="nav-link text-light" href="addjewellery.jsp"><span style="color:black">Add Jewellery</span> </a>
      			</li>
      			</c:if>
      			<li class="nav-item">
        			<a class="nav-link text-light" href="login.jsp"><span style="color:black">Logout</span> </a>
      			</li>
      			
       </c:if>
 
      			<li class="nav-item">
        			<a class="nav-link text-light" href="contactus.jsp"><span style="color:black">Contact Us</span> </a>
      			</li>
      </ul>
    
    	<form class="form-inline my-2 my-lg-0" action="jewelleries.jsp">
	      <input class="form-control mr-sm-2 " name="name" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0 text-light" type="submit">Search</button>
	    </form>
  </div>
</nav>
<br>
</body>
</html>