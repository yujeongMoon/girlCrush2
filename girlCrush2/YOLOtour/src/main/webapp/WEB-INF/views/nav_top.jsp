<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="/">
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">
</head>

<body>
	<header id="header"> <%-- <div class="container main-menu">
		<div class="row align-items-center justify-content-between d-flex">
			<div id="logo">
				<a href="/"><img src="img/logo.png" alt="" title="" /></a>
			</div>
			<nav id="nav-menu-container">
			<ul class="nav-menu">
				<li><a href="/">Home</a></li>
				<li class="menu-has-children"><a href="travelboards">TRAVEL</a></li>
				<li><a href="notices">NOTICE</a></li>
				<li><a href="mypage">MY PAGE</a></li>

				<c:choose>
					<c:when test="${not empty user }">
						<li><a href="logout">LOGOUT</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="login">LOGIN</a></li>
					</c:otherwise>
				</c:choose>

			</ul>
			</nav>
		</div>
	</div> --%> <nav
		class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="/"><img src="img/logo.png" alt=""
			title="" /></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="/">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="travelboards">TRAVEL</a>
				</li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> TRAVEL </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="travelboards">여행</a> <a
							class="dropdown-item" href="#">국내여행</a> <a class="dropdown-item"
							href="#">해외여행</a>
						<!-- <div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a> -->
					</div></li>
				<li class="nav-item"><a class="nav-link" href="notices">NOTICE</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="mypage">MYPAGE</a></li>
				<c:choose>
					<c:when test="${not empty user and user.email != 'admin@gmail.com' }">
						<li class="nav-item"><a class="nav-link" href="logout">LOGOUT</a></li>
						<li class="nav-item"><a class="nav-link" href="breakaway">회원
								탈퇴</a></li>
						
					</c:when>
					<c:when test="${user.email == 'admin@gmail.com' }">
							<li class="nav-item"><a class="nav-link" href="order">주문
									관리</a></li>
						</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link" href="login">LOGIN</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
	</nav> </header>


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
