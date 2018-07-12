<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>

	
	
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<base href="/">
		<title>Travel Board</title>
		
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
		
			<!--
			CSS
			============================================= -->
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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	
	
	<style>
div.gallery {
	margin: 5px;
	border: 1px solid #ccc;
	float: left;
	width: 180px;
}

div.gallery:hover {
	border: 1px solid #777;
}

div.gallery img {
	width: 100%;
	height: auto;
}

div.desc {
	padding: 15px;
	text-align: center;
}

form {
	margin: 5px;
	width: 100%;
	height: 100%;
}
form.box {
	overflow: hidden;
}

button.w3-yellow {
	width:40%;
	color:white;
	
}

w3-panel {
	align: center;
}


</style>
			
	
		
	</head>
	
	<body>
		<c:import url="nav_top.jsp"></c:import>
		<section class="about-banner relative">
	<div class="overlay overlay-bg"></div>
	<div class="container">
		<div class="row d-flex align-items-center justify-content-center">
			<div class="about-content col-lg-12">
				<h2 class="text-white" align="right">Let's go on a trip :)</h2>
			</div>
		</div>
	</div>
	</section>
	
		<form class="price-area section-gap box">
		<div class="container">
			<div>
			
				<div class="w3-panel">
  				<button class="w3-button w3-yellow">해외여행</button><button class="w3-button w3-yellow">국내여행</button>
  				
				</div>
				
				<div class="single-price">
				
					<c:forEach items="#{boards }" var="board">
						<div class="gallery">
								<a target="_blank" href="Maldives.jpg"> <img
									src="img/Maldives.jpg" alt="5Terre" width="1000" height="800">
								</a>
							<div class="desc">${board.title }</div>
						</div>
					</c:forEach>

				</div>
			</div>
		</div>
	</form>
		
		<div class="row">
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						<ul class="pagination">
							<c:set var="target" value="boards" />
							<c:if test="${pager.rows==0 }">
								<li class="active"><a href="#">1</a></li>
							</c:if>
							<c:if test="${pager.rows > 0 }">
								<c:set var="common"
									value="size=${pager.size }&bsize=${pager.bsize }" />
								<c:if test="${pager.bspage > pager.bsize }">
									<c:set var="home" value="page=1&${common }" />
									<c:set var="prev" value="page=${pager.bspage-1 }&${common }" />
									<li><a href="${target }?${home }">Home</a></li>
									<li><a href='<c:url value="${target }?${prev }"/>'>&laquo;</a></li>
								</c:if>
								<c:forEach var="pno" begin="${pager.bspage }"
									end="${pager.bepage }">
									<c:if test="${pno==pager.page }">
										<li class="active"><a href="#">${pno }</a></li>
									</c:if>
									<c:if test="${pno!=pager.page }">
										<c:if test="${pno <= pager.pages }">
											<c:set var="page" value="page=${pno }&${common }" />
											<li><a href='<c:url value="${target }?${page }"/>'>${pno }</a></li>
										</c:if>
									</c:if>
								</c:forEach>
								<c:if test="${pager.bepage < pager.pages }">
									<c:set var="next" value="page=${pager.bepage+1 }&${common }" />
									<c:set var="last" value="page=${pager.pages }&${common }" />
									<li><a href='<c:url value="${target }?${next }"/>'>&raquo;</a></li>
									<li><a href="${target }?${last }">Last</a></li>
								</c:if>
							</c:if>
						</ul>
					</div>
				</div>
	
	<c:import url="footer.jsp"></c:import>
	
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	
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