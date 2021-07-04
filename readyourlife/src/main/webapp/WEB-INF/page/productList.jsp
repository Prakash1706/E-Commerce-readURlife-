<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!-- 	navigation Bar -->
<%@ include file="navbar.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Management</title>
<link rel="icon" type="image/x-icon"
	href="<c:url value="/resource/images/favicon1.png"/>" />
<link rel="stylesheet"
	href="<c:url value="../resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="../resource/js/jquery.js"/>"></script>
<script src="<c:url value="../resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="../resource/css/ProductList.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="../resource/js/productController.js"/>"></script>
<style>

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: yellow; /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>

</head>
<body ng-app="myapp">
	<div  style="background-color:yellow">
	<div class="container" id="productTable"
		style="width: 1145px; padding-bottom: 180px;background-color:yellow">
		<center><h2 style="color:red">Book Management</h2></center>
		
		<table class="table table-hover" id="productList">
			<thead>
				<tr>
					<th>Image</th>
					<th>Book Id</th>
					<th>Category</th>
					<th>Book Name</th>
					<th>Book's Price</th>
					<th>Stock Unit</th>
					<th>Description</th>
					<th>Publisher</th>
					<th>View <security:authorize access="hasAnyRole('ROLE_USER')">
					/ Add to Cart
					</security:authorize> <!-- 					views only to the admin --> <security:authorize
							 access="hasAnyRole('ROLE_ADMIN')">
					/Edit/Delete
					</security:authorize>
					</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="prod">
					<tr>
						<td style="width: 171px"><img
							src="<c:url value="/resource/images/products/${prod.productId}.jpg"/>"
							style="width: 100px; height: 90px;" ${prod.productName}"  /></td>
						<td>${prod.productId}</td>
						<td>${prod.productCategory}</td>
						<td>${prod.productName}</td>
						<td>${prod.productPrice}</td>
						<td>${prod.unitStock}</td>
						<td style="width: 180px">${prod.productDescription}</td>
						<td>${prod.productManufacturer}</td>
						<td ng-controller="myController"><a
							href="getProductById/${prod.productId}" class="btn btn-info"
							role="button"> <span class="glyphicon glyphicon-info-sign"></span></a>

							<!-- 						view only for user --> <security:authorize
								 access="hasAnyRole('ROLE_USER')">
								
							</security:authorize> <!-- 						view only to the admin --> <security:authorize
								access="hasAnyRole('ROLE_ADMIN')">
								<a href="admin/product/editProduct/${prod.productId}"
									class="btn btn-success" style="margin-left: 5px"> <span
									class="glyphicon glyphicon-edit"></span></a>
								<a data-target="#del" id="myBtn" class="btn btn-danger"
									style="margin-left: 5px"> <span
									class="glyphicon glyphicon-trash"></span></a>
									<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <center><div id="del" >
									
										<h3>Are you sure you want to delete?</h3>
									
										<a href="/readyourlife/getAllProducts" class="btn btn-danger"
									style="margin-left: 5px"> No</a>
									
										<a href="admin/delete/${prod.productId}" class="btn btn-danger"
									style="margin-left: 5px" id="yesBtn"> yes</a>
									
									</div></center>
  </div>

</div>
									
							</security:authorize></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

var yes = document.getElementById("yesBtn");
yes.onclick = function(event){
	document.getElementById("delMsg").style.display = "block";
}
</script>
<h4 id="delMsg" style="display:none">Book Deleted Successfully</h4>
</body>
</html>
<%@ include file="footer.jsp"%>