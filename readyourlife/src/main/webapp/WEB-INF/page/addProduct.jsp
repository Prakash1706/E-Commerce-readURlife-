<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/register.css"/>">
<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container" style="padding-bottom:19px;padding-top:20px;background-color:yellow" >
		<center><h1 class="well" style="color:red">Add Book !</h1></center>
		

				<!--  RegisterServlet  form -->
				<c:url value="/admin/product/addProduct" var="url"></c:url>
				<form:form method="post" action="${url}" commandName="productFormObj" enctype="multipart/form-data">
					<div class="col-sm-12">
						<div class="row">
							
							<div class="col-sm-6 form-group">
								<form:label path="productName">Book Name</form:label>
								 <form:input type="text"
									placeholder="Enter Book Name.." class="form-control"
									path="productName"></form:input>
								 <form:errors path="productName"></form:errors>
							</div>
						</div>
						<div class="form-group">
						<form:label path="productDescription">Book Description</form:label>
								 <form:textarea type="text"
									placeholder="Enter Book Description.." class="form-control"
									path="productDescription" style="resize:none"></form:textarea>
						</div>
						<div class="form-group">
						<form:label path="productCategory">Book Category</form:label>
								 <form:radiobutton path="productCategory" value="Fiction"/>Fiction
								 <form:radiobutton path="productCategory" value="Non-Fiction"/>Non-Fiction
								 <form:radiobutton path="productCategory" value="Literature"/>Literature
								 <form:radiobutton path="productCategory" value="Comic"/>Comic
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label path="productManufacturer">Book Publisher</form:label>
								 <form:input type="text"
									placeholder="Enter Book Publisher.." class="form-control"
									path="productManufacturer"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="productPrice">Book Price</form:label>
								 <form:input type="text"
									placeholder="Enter Book Price.." class="form-control"
									path="productPrice"></form:input>
								 <form:errors path="productPrice"></form:errors>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="unitStock">Number of Books</form:label>
								 <form:input type="text"
									placeholder="Number of Books.." class="form-control"
									path="unitStock"></form:input>
							</div>
						</div>
					 	<div class="form-group">
						<form:label path="productImage">Book Image</form:label>
							<form:input type="file" path="productImage"/>
						</div>  
						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info" style="background-color:red;margin-bottom:50px">Submit</button>
						</div>
					</div>
				</form:form>
			</div>
		
	<%@ include file="footer.jsp"%>
</body>
</html>