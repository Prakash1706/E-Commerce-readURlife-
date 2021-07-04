<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>
<%@ page isELIgnored="false"%>
<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Thank you!</h1>

					<p>Your New Chapter will be opened in two business days!</p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<a href="<spring:url value="/" />" class="btn btn-default">OK</a>
			</p>
		</section>
	</div>
</div>
  <%@ include file="productGrid.jsp"%>
<%@ include file="/WEB-INF/page/footer.jsp"%>