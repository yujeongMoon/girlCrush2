<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Payment</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<link rel="stylesheet" href="css/payment.css">
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
				<h1 class="text-white">Payment</h1>				
			</div>
		</div>
	</div>
	</section>
	<!-- End banner Area -->


	<main class="page payment-page">
	<section class="payment-form dark">
		<div class="container">
			<div class="block-heading">				
				<p>자, 이제 마지막 대망의 결재만 진행하면 함께 떠나는거예요!</p>
			</div>
			<form>
				<div class="products">
					<h3 class="title">Checkout</h3>
					<div class="item">
						<span class="price">$200</span>
						<p class="item-name">Product 1</p>
						<p class="item-description">Lorem ipsum dolor sit amet</p>
					</div>
					<div class="item">
						<span class="price">$120</span>
						<p class="item-name">Product 2</p>
						<p class="item-description">Lorem ipsum dolor sit amet</p>
					</div>
					<div class="total">
						Total<span class="price">$320</span>
					</div>
				</div>
				<div class="card-details">
					<h3 class="title">Credit Card Details</h3>
					<div class="row">
						<div class="form-group col-sm-7">
							<label for="card-holder">Card Holder</label> <input
								id="card-holder" type="text" class="form-control"
								placeholder="Card Holder" aria-label="Card Holder"
								aria-describedby="basic-addon1">
						</div>
						<div class="form-group col-sm-5">
							<label for="">Expiration Date</label>
							<div class="input-group expiration-date">
								<input type="text" class="form-control" placeholder="MM"
									aria-label="MM" aria-describedby="basic-addon1"> <span
									class="date-separator">/</span> <input type="text"
									class="form-control" placeholder="YY" aria-label="YY"
									aria-describedby="basic-addon1">
							</div>
						</div>
						<div class="form-group col-sm-8">
							<label for="card-number">Card Number</label> <input
								id="card-number" type="text" class="form-control"
								placeholder="Card Number" aria-label="Card Holder"
								aria-describedby="basic-addon1">
						</div>
						<div class="form-group col-sm-4">
							<label for="cvc">CVC</label> <input id="cvc" type="text"
								class="form-control" placeholder="CVC" aria-label="Card Holder"
								aria-describedby="basic-addon1">
						</div>
						<div class="form-group col-sm-12">
							<button type="button" class="btn btn-primary btn-block">Proceed</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	</main>
	<!-- start footer Area -->
	<c:import url="footer.jsp"></c:import>
	<!-- End footer Area -->

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
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
