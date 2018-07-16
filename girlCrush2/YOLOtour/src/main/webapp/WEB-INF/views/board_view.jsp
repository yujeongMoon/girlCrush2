<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="/">
<title>상품정보</title>
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">

<!--Core Style CSS -->
 <link rel="stylesheet" href="board/css/core-style.css">
<link rel="stylesheet" href="board/style.css">



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
				<h1 class="text-white">상품정보</h1>
			</div>
		</div>
	</div>
	</section>


	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">

		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="board/img/core-img/logo.png"	alt=""></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<!-- Product Details Area Start -->
		<div class="single-product-area section-padding-100 clearfix">
			<div class="container-fluid">

				<div class="row">
					<div class="col-12 col-lg-7">
						<div class="single_product_thumb">
							<div id="product_details_slider" class="carousel slide"
								data-ride="carousel">
								<ol class="carousel-indicators">
									<li class="active" data-target="#product_details_slider"
										data-slide-to="0"
										style="background-image: url(board/img/product-img/pro-big-1.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="1"
										style="background-image: url(board/img/product-img/pro-big-2.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="2"
										style="background-image: url(board/img/product-img/pro-big-3.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="3"
										style="background-image: url(board/img/product-img/pro-big-4.jpg);">
									</li>
								</ol>
								<div class="carousel-inner">
									<div class="carousel-item active">
										<a class="gallery_img"
											href="board/img/product-img/pro-big-1.jpg"> <img
											class="d-block w-100"
											src="board/img/product-img/pro-big-1.jpg" alt="First slide">
										</a>
									</div>
									<div class="carousel-item">
										<a class="gallery_img"
											href="board/img/product-img/pro-big-2.jpg"> <img
											class="d-block w-100"
											src="board/img/product-img/pro-big-2.jpg" alt="Second slide">
										</a>
									</div>
									<div class="carousel-item">
										<a class="gallery_img"
											href="board/img/product-img/pro-big-3.jpg"> <img
											class="d-block w-100"
											src="board/img/product-img/pro-big-3.jpg" alt="Third slide">
										</a>
									</div>
									<div class="carousel-item">
										<a class="gallery_img"
											href="board/img/product-img/pro-big-4.jpg"> <img
											class="d-block w-100"
											src="board/img/product-img/pro-big-4.jpg" alt="Fourth slide">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-5">
						<div class="single_product_desc">
							<!-- Product Meta Data -->
							<div class="product-meta-data">
								<div class="line"></div>
								<p class="product-price">${travel.price }</p>
								<a href="product-details.html">
									<h6>${travel.title }</h6>
								</a>
								<!-- Ratings & Review -->
								
							</div>

							<div class="short_overview my-5">
								<p>${travel.content }</p>
							</div>

							<!-- Add to Cart Form -->
							<form class="cart clearfix" method="post">
								<button type="submit" name="addtocart" value="5"
									class="btn amado-btn">Add to cart</button>
							</form>
							
							<c:if test="${user.email == 'admin@gmail.com' }" var="admin">
								<a href="/travelboards/update/${travel.travelId}">Update</a>
							</c:if>
							<c:if test="${user.email == 'admin@gmail.com' }" var="admin">
								<a href="/travelboards/delete/${travel.travelId}">Delete</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<c:import url="footer.jsp"></c:import>

	<!-- <script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script> -->

	<!-- <script src="js/vendor/jquery-2.2.4.min.js"></script>
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
	<script src="js/main.js"></script> -->


	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="board/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="board/js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="board/js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="board/js/plugins.js"></script>
	<!-- Active js -->
	<script src="board/js/active.js"></script>


</body>
</html>