<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="jewellery.css" rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="container">
			<div class="card">
				<div class="container-fliud">
					<div class="wrapper row">
						<div class="preview col-md-6">
							<div class="preview-pic tab-content">
								<div class="tab-pane active" id="pic-1">
									<img src="ImageServlet?jid=${param.jid}" />
								</div>
							</div>
						</div>
						<div class="details col-md-6">

							<h1 class="product-description"><b>${param.nm}</b></h1>
							<p class="product-description">Celebrate everlasting feelings
								of love with this exquisite jewellery. The sterling
								silver knot is an elegant representation of a timeless bond of
								love and affection that connects two people. Elegant and classy,
								this jewellery makes a beautiful gift option that is sure to
								show how much you care.</p>
							<fmt:parseNumber var="price" value="${param.pr}" type="number" />
							<h4 class="price">
								Price: <span>&#8377; ${price}</span>
							</h4>
							<div class="action">
								<p>
									<c:if test="${price > 0}">
										<a href="" class="btn btn-primary btn-block">Buy</a>
									</c:if>

									<c:if test="${price == 0}">
										<a href="${row.link}" target="_blank"
											class="btn btn-primary btn-block">Read</a>
									</c:if>
								</p>

								<p>
									<c:if test="${role=='admin'}">
										<a class="btn btn-primary btn-block"
											href="edit.jsp?jid=${row.jid}&c=${row.category}&nm=${row.name}&gm=${row.gram}&pr=${row.price}">Edit</a>
										<a class="btn btn-danger btn-block"
											href="DeleteServlet?jid=${row.jid}">Delete</a></
								</c:if>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>