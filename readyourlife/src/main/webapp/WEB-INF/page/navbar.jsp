<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/overall.css"/>">

</head>
<body>

	<nav class="navbar navbar-inverse" style="background-color:#5DADE2">
	<div class="container-fluid">

		

		
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href=" <c:url value="/index1" />" style="color:black">Home</a></li>
				<li><a href=" <c:url value="/getAllProducts" />" style="color:black">Products</a></li>
				<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="<c:url value="/cart/getCartById" />" style="color:black"> Cart</a></li>
					</security:authorize>
				
				
				
				
				<!-- 			Only admin can view this link -->
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href=" <c:url value="/admin/product/addProduct" />" style="color:black">Add
							Product</a></li>
				</security:authorize>
			</ul>

			<ul class="nav navbar-nav navbar-right">

				<c:if test="${!empty pageContext.request.userPrincipal.name}">
					<li><a href="<c:url value="/index1" />"><span
							class="glyphicon glyphicon-shopping-user" style="color:black"></span><p style="color:black">Welcome <span style="color:red">${pageContext.request.userPrincipal.name}</span> to the World of Books</p></a></li>

					
					<li><a href=" <c:url value="/aboutus" />" style="color:black">AboutUs</a></li>
					<li><a href="<c:url value="/logout" />" style="color:black"> Logout</a></li>
				</c:if>
			</ul>


			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li><a href="<c:url value="/login" />" style="color:black">My Cart</a></li>
					<li><a href="<c:url value="/customer/registration" />" style="color:black"><span
							class="glyphicon glyphicon-log-user" style="color:black"></span> SignUp</a></li>
					<li><a href="<c:url value="/login" />" style="color:black"> Login</a></li>
					<li><a href=" <c:url value="/aboutus" />" style="color:black">AboutUs</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>



</body>
</html>