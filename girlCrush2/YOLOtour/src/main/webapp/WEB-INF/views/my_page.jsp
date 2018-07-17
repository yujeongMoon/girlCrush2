<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyPage</title>
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
					<h1 class="text-white">My Page</h1>
					<p class="text-white link-nav">
						<a href="/">Home </a> <span class="lnr lnr-arrow-right"></span> <a
							href="/mypage"> my page</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- board -->
	<section class="price-area section-gap">
		<div class="container">
			<div>
				<div class="single-price">
					<!-- 시작 -->
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h2 class="mb-10">Cart</h2>
							</div>
						</div>
					</div>
					<h4>국내</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">     </th>
								<th scope="col">Title</th>
								<th scope="col">Writer</th>
								<th scope="col">Price</th>
							</tr>
						</thead>
						<c:forEach items="#{mypageD }" var="mypaged">
							<tr>
								<td><img src="/img/${mypaged.imgId }" witdh="100" height="100"></td>
								<td><a
									href="<c:url value='/travelboards/view/${mypaged.travelId }'/>">${mypaged.title }</a></td>
								<td>${mypaged.writer }</td>
								<td>${mypaged.price }</td>
							</tr>
						</c:forEach>
					</table>

				</div>
				<!-- 끝 -->
				<div class="single-price">
					<!-- 시작 -->
					<h4>국외</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">     </th>
								<th scope="col">Title</th>
								<th scope="col">Writer</th>
								<th scope="col">Price</th>
							</tr>
						</thead>
						<c:forEach items="#{mypageF }" var="mypagef">
							<tr>
								<td><img src="/img/${mypagef.imgId }" witdh="100" height="100"></td>
								<td><a
									href="<c:url value='/travelboards/view/${mypagef.travelId }'/>">${mypagef.title }</a></td>
								<td>${mypagef.writer }</td>
								<td>${mypagef.price }</td>
							</tr>
						</c:forEach>
					</table>

				</div>
				<div class="single-price">
					<!-- 시작 -->
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h2 class="mb-10">Payment</h2>
							</div>
						</div>
					</div>
					<h4>결제 확인</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">No</th>
								<th scope="col">Title</th>
								<th scope="col">Price</th>
							</tr>
						</thead>
						<c:forEach items="#{payinfo }" var="pay">
							<tr>
								<td>${pay.travelId }</td>
								<td>${pay.title }</td>
								<td>${pay.price }</td>
							</tr>
						</c:forEach>
						
					</table>
				</div>			
				<!-- 끝 -->
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
