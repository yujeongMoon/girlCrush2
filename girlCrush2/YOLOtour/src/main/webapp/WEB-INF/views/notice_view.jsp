<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="/">
<title>Notice</title>
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.bs-example {
	margin-bottom: 20px;
	margin-left: 20px;
	margin-right: 40px;
	margin-top: 20px;
}
</style>
</head>
<body>
	<c:import url="nav_top.jsp"></c:import>
	<!-- #header -->
	<!-- start banner Area -->
	<section class="about-banner relative">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white">Notice</h1>
					<p class="text-white link-nav">
						<a href="/">Home </a> <span class="lnr lnr-arrow-right"></span> <a
							href="/notices"> Notice</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- board -->
	<section class="price-area section-gap">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">Notice</h1>
					</div>
				</div>
			</div>
			<div>
				<div class="single-price">
					<h4>Notice</h4>
					<div class="bs-example">
						<form class="form-horizontal"
							action="/examples/actions/confirmation.php" method="post">
							<div class="form-group">
								<label for="title" class="control-label col-xs-2">Title</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" id="title" name="title"
										placeholder="Title" required value="${notice.title }"
										readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label for="writer" class="control-label col-xs-2">Writer</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" id="writer"
										name="writer" placeholder="Writer" required
										value="${notice.writer }" readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label for="content" class="control-label col-xs-2">Content</label>
								<div class="col-xs-10">
									<textarea class="form-control" rows="20" id="content"
										name="content" placeholder="Content" required
										readonly="readonly">${notice.content }</textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="regDate" class="control-label col-xs-2">Date</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" id="regDate"
										name="regDate" placeholder="Date" required
										value="<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${notice.regDate }" />"
										readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-offset-2 col-xs-10">
									<a href="<c:url value='/boards'/>" class="btn btn-primary">List</a>
									<c:if test="${not empty user }">
										<c:if test="${user.email == notice.writer }">
											<a href="<c:url value='/notices/delete/${notice.noticeId }'/>"
												class="btn btn-primary">Delete</a>
											<a href="<c:url value='/notices/update/${notice.noticeId }'/>"
												class="btn btn-primary">Update</a>
										</c:if>
									</c:if>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<c:import url="footer.jsp"></c:import>
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
