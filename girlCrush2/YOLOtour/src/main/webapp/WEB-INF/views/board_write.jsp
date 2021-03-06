<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

/* The container */
.radiobtn {
	display: block;
	position: relative;
	padding-left: 35px;
	margin-bottom: 12px;
	cursor: pointer;
	font-size: 22px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/* Hide the browser's default radio button */
.radiobtn input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
	position: absolute;
	top: 0;
	left: 0;
	height: 25px;
	width: 25px;
	background-color: #eee;
	border-radius: 50%;
}

/* On mouse-over, add a grey background color  */
.radiobtn:hover input ~ .checkmark {
	background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.radiobtn input:checked ~ .checkmark {
	background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

/* Show the indicator (dot/circle) when checked */
.radiobtn input:checked ~ .checkmark:after {
	display: block;
}

/* Style the indicator (dot/circle) */
.radiobtn .checkmark:after {
	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}

.bs-example {
	margin-bottom: 20px;
	margin-left: 20px;
	margin-right: 40px;
	margin-top: 20px;
}

input[type="text"] {
	font-size: 16px;
}

textarea {
	font-size: 16px;
}
</style>



</head>
<body>

	<h3>board_write.jsp</h3>

	<c:import url="nav_top.jsp"></c:import>
	<!-- #header -->
	<!-- start banner Area -->
	<section class="about-banner relative">
	<div class="overlay overlay-bg"></div>
	<div class="container">
		<div class="row d-flex align-items-center justify-content-center">
			<div class="about-content col-lg-12">
				<h2 class="text-white" align="right">상품등록</h2>

			</div>
		</div>
	</div>
	</section>

	<!-- board -->
	<section class="price-area section-gap">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="menu-content pb-70 col-lg-8"></div>
		</div>
		<div>
			<div class="single-price">
				<h4>상품등록</h4>
				<div class="bs-example">


					<form class="form-horizontal"
						action="<c:url value='/travelboards/write'/>" method="post"
						enctype="multipart/form-data">


						<label class="radiobtn">Domestic <input type="radio"
							checked="checked" id="key" name="key" align="right" value=1>
							<span class="checkmark"></span>
						</label> <label class="radiobtn">Foreign <input type="radio"
							id="key" name="key" align="right" value=2> <span
							class="checkmark"></span>
						</label>





						<div class="form-group">
							<div class="form-group">
								<label for="price" class="control-label col-xs-2">Price</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" id="price" name="price"
										placeholder="가격을 입력하세요" required>
								</div>
							</div>
							<div class="form-group">
								<label for="title" class="control-label col-xs-2">Title</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" id="title" name="title"
										placeholder="제목을입력하세요" required>
								</div>
							</div>
							<div class="form-group">
								<label for="writer" class="control-label col-xs-2">Writer</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" id="writer"
										name="writer" required value="${user.email }"
										readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label for="content" class="control-label col-xs-2">Content</label>
								<div class="col-xs-10">
									<textarea style="font-size: 16px" class="form-control"
										rows="20" id="content" name="content"
										placeholder="상품정보를 입력하세요" required></textarea>
								</div>
							</div>

						</div>

						<input type="file" name="file">
						<div class="form-group">
							<div class="col-xs-offset-2 col-xs-10">
								<a href="<c:url value='/travelboards'/>" class="btn btn-primary" style="font-size: 16px">List</a>
								<button type="submit" class="btn btn-primary" style="font-size: 16px">Save</button>
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