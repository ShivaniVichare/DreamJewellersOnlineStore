<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Directive Tag -->
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
	<div class="container">
		<form action="UpdateServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="form-group">
				<label>Enter Jewellery Id</label>
				<input type="text" name="jid" value="${param.jid}" placeholder="Enter Jewellery Id" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Jewellery Category</label>
				<input type="text" name="category" value="${param.c}" placeholder="Enter Category" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Jewellery Name</label>
				<input type="text" name="name" value="${param.nm}" placeholder="Enter Jewellery Name" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Grams</label>
				<input type="text" name="gram" value="${param.gm}" placeholder="Enter Jewellery Grams" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Price</label>
				<input type="text" name="price" value="${param.pr}" placeholder="Enter Price" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Update Jewellery" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
	<div class="main">
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>