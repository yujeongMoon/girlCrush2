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
	<header id="header">

	<div class="container main-menu">
		<div class="row align-items-center justify-content-between d-flex">
			<div id="logo">
				<a href="/"><img src="img/logo.png" alt="" title="" /></a>
			</div>
			<nav id="nav-menu-container">
			<ul class="nav-menu">
				<li><a href="/">Home</a></li>
				<li class="menu-has-children"><a href="travelboards">TRAVEL</a>
					<ul>
						<li><a href="blog-home.html">국내 여행</a></li>
						<li><a href="blog-single.html">국외 여행</a></li>
					</ul></li>
				<li><a href="notices">NOTICE</a></li>
				<li><a href="mypage">MY PAGE</a></li>

				<c:choose>
					<c:when test="${not empty user }"><li><a href="logout">LOGOUT</a></li></c:when>
					<c:otherwise><li><a href="login">LOGIN</a></li></c:otherwise>
				</c:choose>

			</ul>
			</nav>
		</div>
	</div>
	</header>

</body>
</html>
