<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/jewellers"
					   user="root"
					   password="root"
					   var="con"/> 
					    
	<c:if test="${param.name!=null}">
		<sql:query var="rs" dataSource="${con}">
			select * from jewellery where name like '%' ? '%' 
			<sql:param>${param.name}</sql:param>
		</sql:query>
	</c:if>
	
	<c:if test="${param.name==null}">
		<sql:query var="rs" dataSource="${con}">
			select * from jewellery
		</sql:query>
	</c:if>
	<div class="main">
	<div class="container">
			<div class="row">
			<c:forEach items="${rs.rows}" var="row">
				<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 text-center">
					<a href="jewellery.jsp?jid=${row.jid}&c=${row.category}&nm=${row.name}&gm=${row.gram}&pr=${row.price}" >
						<img src="ImageServlet?jid=${row.jid}" height="300px" class="col-lg-12"/>
					</a>
					
					<h4>${row.name}</h4>
					<p>${row.gram}<b>gm</b></p>
					<p>&#8377; ${row.price}</p>
					
					<p>
						<c:if test="${row.price>0}">
							<a href=""  class="btn btn-primary btn-block">Buy</a>
						</c:if>
					</p>
					
					<p>
						<c:if test="${role=='admin'}">
							<a class="btn btn-primary btn-block" href="edit.jsp?jid=${row.jid}&c=${row.category}&nm=${row.name}&gm=${row.gram}&pr=${row.price}">Edit</a> <a class="btn btn-danger btn-block" href="DeleteServlet?jid=${row.jid}">Delete</a></
						</c:if>
					</p>
				</div>
			</c:forEach>
			</div>
	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>