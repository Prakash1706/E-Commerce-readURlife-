<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Book</title>
<link rel="icon" type="image/x-icon"
	href="<c:url value="/resource/images/favicon1.png"/>" />
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/register.css"/>">

</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container" style="margin-bottom: 19px">
		<h1 class="well">Update Book !</h1>
		<div class="col-lg-12 well">
			<div class="row">

				<!--  RegisterServlet  form -->
				<c:url value="/admin/product/editProduct" var="url"></c:url>
				<form:form method="post" action="${url}"
					commandName="editProductObj">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="productId">Book Id</form:label>
								<form:input type="text" placeholder="Enter ProductId.."
									class="form-control" path="productId" disabled="true"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="productName">Book Name</form:label>
								<form:input type="text" placeholder="Enter Product Name.."
									class="form-control" path="productName"></form:input>
							</div>
						</div>
						<div class="form-group">
							<form:label path="productDescription">Book Description</form:label>
							<form:textarea type="text" placeholder="Enter Book Description.."
								class="form-control" path="productId"></form:textarea>
						</div>
						<div class="form-group">
							<form:label path="productCategory">Book Category</form:label>
							<form:radiobutton path="productCategory" value="Fiction" />
							Fiction
							<form:radiobutton path="productCategory" value="Non-Fiction" />
							Non-Fiction
							<form:radiobutton path="productCategory" value="Literature" />
							Literature
							<form:radiobutton path="productCategory" value="Comic" />
							Comic
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label path="productManufacturer">Book Publisher</form:label>
								<form:input type="text"
									placeholder="Enter Product Manufacurer.." class="form-control"
									path="productManufacturer"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="productPrice">Book Price</form:label>
								<form:input type="text" placeholder="Enter Product Price.."
									class="form-control" path="productPrice"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="unitStock">Number of Books</form:label>
								<form:input type="text" placeholder="Number of Products.."
									class="form-control" path="unitStock"></form:input>
							</div>
						</div>
						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info">Update</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>