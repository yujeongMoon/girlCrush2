<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
							<th scope="col">No</th>
							<th scope="col">Title</th>
							<th scope="col">Writer</th>
							<th scope="col">Date</th>
							<th scope="col">Hits</th>
							<th scope="col">Price</th>
						</tr>
					</thead>
					<c:forEach items="#{mypageD }" var="mypaged">
						<tr>
							<td>${mypaged.id }</td>
							<td><a
								href="<c:url value='/travelboards/view/${mypaged.id }'/>">${mypaged.title }</a></td>
							<td>${mypaged.writer }</td>
							<td><fmt:formatDate pattern="MM-dd hh:mm"
									value="${mypaged.regDate }" /></td>
							<td>${mypaged.hitCount }</td>
							<td>${mypaged.price }</td>
						</tr>
					</c:forEach>
				</table>

				<div class="row">
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						<ul class="pagination">
							<c:set var="target" value="mypage" />
							<c:if test="${pagerD.rows==0 }">
								<li class="active"><a href="#">1</a></li>
							</c:if>
							<c:if test="${pagerD.rows > 0 }">
								<c:set var="common"
									value="size=${pagerD.size }&bsize=${pagerD.bsize }" />
								<c:if test="${pagerD.bspage > pagerD.bsize }">
									<c:set var="home" value="page=1&${common }" />
									<c:set var="prev" value="page=${pagerD.bspage-1 }&${common }" />
									<li><a href="${target }?${home }">Home</a></li>
									<li><a href='<c:url value="${target }?${prev }"/>'>&laquo;</a></li>
								</c:if>
								<c:forEach var="pno" begin="${pagerD.bspage }"
									end="${pagerD.bepage }">
									<c:if test="${pno==pagerD.page }">
										<li class="active"><a href="#">${pno }</a></li>
									</c:if>
									<c:if test="${pno!=pagerD.page }">
										<c:if test="${pno <= pagerD.pages }">
											<c:set var="page" value="page=${pno }&${common }" />
											<li><a href='<c:url value="${target }?${page }"/>'>${pno }</a></li>
										</c:if>
									</c:if>
								</c:forEach>
								<c:if test="${pagerD.bepage < pagerD.pages }">
									<c:set var="next" value="page=${pagerD.bepage+1 }&${common }" />
									<c:set var="last" value="page=${pagerD.pages }&${common }" />
									<li><a href='<c:url value="${target }?${next }"/>'>&raquo;</a></li>
									<li><a href="${target }?${last }">Last</a></li>
								</c:if>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<div class="single-price">
				<!-- 시작 -->
				<h4>국외</h4>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">Title</th>
							<th scope="col">Writer</th>
							<th scope="col">Date</th>
							<th scope="col">Hits</th>
							<th scope="col">Price</th>
						</tr>
					</thead>
					<c:forEach items="#{mypageF }" var="mypagef">
						<tr>
							<td>${mypagef.id }</td>
							<td><a
								href="<c:url value='/travelboards/view/${mypagef.id }'/>">${mypagef.title }</a></td>
							<td>${mypagef.writer }</td>
							<td><fmt:formatDate pattern="MM-dd hh:mm"
									value="${mypagef.regDate }" /></td>
							<td>${mypagef.hitCount }</td>
							<td>${mypagef.price }</td>
						</tr>
					</c:forEach>
				</table>

				<div class="row">
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						<ul class="pagination">
							<c:set var="target" value="mypage" />
							<c:if test="${pagerF.rows==0 }">
								<li class="active"><a href="#">1</a></li>
							</c:if>
							<c:if test="${pagerF.rows > 0 }">
								<c:set var="common"
									value="size=${pagerF.size }&bsize=${pagerF.bsize }" />
								<c:if test="${pagerF.bspage > pagerF.bsize }">
									<c:set var="home" value="page=1&${common }" />
									<c:set var="prev" value="page=${pagerF.bspage-1 }&${common }" />
									<li><a href="${target }?${home }">Home</a></li>
									<li><a href='<c:url value="${target }?${prev }"/>'>&laquo;</a></li>
								</c:if>
								<c:forEach var="pno" begin="${pagerF.bspage }"
									end="${pagerF.bepage }">
									<c:if test="${pno==pagerF.page }">
										<li class="active"><a href="#">${pno }</a></li>
									</c:if>
									<c:if test="${pno!=pagerF.page }">
										<c:if test="${pno <= pagerF.pages }">
											<c:set var="page" value="page=${pno }&${common }" />
											<li><a href='<c:url value="${target }?${page }"/>'>${pno }</a></li>
										</c:if>
									</c:if>
								</c:forEach>
								<c:if test="${pagerF.bepage < pagerF.pages }">
									<c:set var="next" value="page=${pagerF.bepage+1 }&${common }" />
									<c:set var="last" value="page=${pagerF.pages }&${common }" />
									<li><a href='<c:url value="${target }?${next }"/>'>&raquo;</a></li>
									<li><a href="${target }?${last }">Last</a></li>
								</c:if>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
			<!-- 끝 -->
		</div>
		<div>
			<div class="single-price">
				<!-- 시작 -->
				<div class="row d-flex justify-content-center">
					<div class="menu-content pb-70 col-lg-8">
						<div class="title text-center">
							<h2 class="mb-10">Payment</h2>
						</div>
					</div>
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">Name</th>
							<th scope="col">Address</th>
						</tr>
					</thead>
					<c:forEach items="#{payinfo }" var="payinfo">
						<tr>
							<td>${payinfo.payId }</td>
							<td>${payinfo.name }</td>
							<td>${payinfo.address }</td>
						</tr>
					</c:forEach>
				</table>

				<div class="row">
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						<ul class="pagination">
							<c:set var="target" value="mypage" />
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
