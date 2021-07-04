<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/aboutus.css"/>">
<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
</head>

<body>

<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>

<!-- Content -->
	<div style="margin-top:4px; margin-right:0px; margin-left:0px;margin-bottom:19px">
		<div style="float:left;width:100%;">
			<div class="container-fluid bg-1 text-center" style="background-color:yellow">
				<h3>readURlife</h3>
				<img src="<c:url value="/resource/images/aboutus.png"/>" class="img-circle" alt="AboutUs" width="350"
					height="350">
				<h3>Read Your Life lessons through readURlife e-Commerce Book Store</h3>
				
				<h3>readURlife</h3>
			<div id="para"><p>We are here to inspire you. 
			We understand what you want. 
			A good book store for your whole life. 
			Get great ideas for your interest.</p>
			</div>
			<div id="para"><p>We have always taken pride in our culture. There are some core
				values that have been inherent and are an integral part of our
				success story. These values are a pure reflection of what is
				important to us as a Team and Business..
				Here is a treasure for an investigative mind.</p>
		</div></div></div><div style="float:left;width:100%"></div></div>
<!-- 	importing footer  -->
<%@ include file="footer.jsp"%> 

</body>
</html>