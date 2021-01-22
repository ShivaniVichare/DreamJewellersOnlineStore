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
	<div class=main>
	<div class="container">
		<form action="AddJewelleryServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12" enctype="multipart/form-data">
			<div class="form-group">
				<label>Jewellery Category</label>
				<input type="text" name="category" placeholder="Enter category for eg. ring/chain" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Jewellery Name </label>
				<input type="text" name="name" placeholder="Enter name" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Grams</label>
				<input type="text" name="gram" placeholder="Enter grams" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Price</label>
				<input type="text" name="price" placeholder="Enter Price" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Select File</label>
				<input type="file" name="image" accept="image/*" placeholder="Select Image" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Add jewellery" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>