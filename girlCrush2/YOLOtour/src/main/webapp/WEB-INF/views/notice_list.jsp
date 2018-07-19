<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="colorlib">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
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
	width: 40%;
	color: white;
}

w3-panel {
	align: center;
}

.container {
	padding: 30px;
}
// font stuff
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,600,700,900);


// colour stuff
@white: #ffffff;
@lightBG: #dce1df;
@salmon: #ff6666;

@teal: #0096a0;
@tealMid: #0ebac7;
@tealContrast: #33ffff;
@tealShade:	#007c85;

@darkGrey: #4f585e;

body {
  background: @lightBG;
  color: @darkGrey;
  font-family: 'Source Sans Pro', sans-serif;
  text-rendering: optimizeLegibility;
}

a.btn {
  background: @teal;
  border-radius: 4px;
	box-shadow: 0 2px 0px 0 rgba(0,0,0,0.25);
  color: @white;
  display: inline-block;
  padding: 6px 30px 8px;
  position: relative;
  text-decoration: none;
	transition: all 0.1s 0s ease-out;
}

.no-touch a.btn:hover {
  background: lighten(@teal,2.5);
  box-shadow: 0px 8px 2px 0 rgba(0, 0, 0, 0.075);
  transform: translateY(-2px);
  transition: all 0.25s 0s ease-out;
}

.no-touch a.btn:active,
a.btn:active {
  background: darken(@teal,2.5);
  box-shadow: 0 1px 0px 0 rgba(255,255,255,0.25);
  transform: translate3d(0,1px,0);
  transition: all 0.025s 0s ease-out;
}

div.cards {
  margin: 80px auto;
  max-width: 960px;
  text-align: center;
}

div.card {
  background: @white;
  display: inline-block;
  margin: 8px;
  max-width: 300px;
  perspective: 1000;
  position: relative;
  text-align: left;
  transition: all 0.3s 0s ease-in;
  z-index: 1;

  img {
    max-width: 300px;
  }

  div.card-title {
    background: @white;
    padding: 6px 15px 10px;
    position: relative;
    z-index: 0;
    
    a.toggle-info {
      border-radius: 32px;
      height: 32px;
      padding: 0;
      position: absolute;
      right: 15px;
      top: 10px;
      width: 32px;
      
      span {
        background: @white;
        display: block;
        height: 2px;
        position: absolute;
        top: 16px;
        transition: all 0.15s 0s ease-out;
        width: 12px;
      }
      
      span.left {
        right: 14px;
        transform: rotate(45deg);
      }
      span.right {
        left: 14px;
        transform: rotate(-45deg);
      }
    }
    
    h2 {
      font-size: 24px;
      font-weight: 700;
      letter-spacing: -0.05em;
      margin: 0;
      padding: 0;
      
      small {
        display: block;
        font-size: 18px;
        font-weight: 600;
        letter-spacing: -0.025em;
      }
    }
  }

  div.card-description {
    padding: 0 15px 10px;
    position: relative;
    font-size: 14px;
  }

  div.card-actions {
  	box-shadow: 0 2px 0px 0 rgba(0,0,0,0.075);
    padding: 10px 15px 20px;
    text-align: center;
  }
  
  div.card-flap {
    background: darken(@white,15);
    position: absolute;
    width: 100%;
    transform-origin: top;
    transform: rotateX(-90deg);
  }
  div.flap1 {
    transition: all 0.3s 0.3s ease-out;
    z-index: -1;
  }
  div.flap2 {
    transition: all 0.3s 0s ease-out;
    z-index: -2;
  }
  
}

div.cards.showing {
  div.card {
    cursor: pointer;
    opacity: 0.6;
    transform: scale(0.88);
  }
}

.no-touch  div.cards.showing {
  div.card:hover {
    opacity: 0.94;
    transform: scale(0.92);
  }
}

div.card.show {
  opacity: 1 !important;
  transform: scale(1) !important;

  div.card-title {
    a.toggle-info {
      background: @salmon !important;
      span {
        top: 15px;
      }
      span.left {
        right: 10px;
      }
      span.right {
        left: 10px;
      }
    }
  }
  div.card-flap {
    background: @white;
    transform: rotateX(0deg);
  }
  div.flap1 {
    transition: all 0.3s 0s ease-out;
  }
  div.flap2 {
    transition: all 0.3s 0.2s ease-out;
  }
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
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">No</th>
								<th scope="col">Title</th>
								<th scope="col">Writer</th>
								<th scope="col">Date</th>
								<th scope="col">Hits</th>
							</tr>
						</thead>
						<c:forEach items="#{notices }" var="notice">
							<tr>
								<td>${notice.noticeId }</td>
								<td><a
									href="<c:url value='/notices/view/${notice.noticeId }'/>">${notice.title }</a></td>
								<td>${notice.writer }</td>
								<td><fmt:formatDate pattern="MM-dd hh:mm"
										value="${notice.regDate }" /></td>
								<td>${notice.hitCount }</td>
							</tr>
						</c:forEach>
					</table>

					<c:if test="${user.email == 'admin@gmail.com'}">
						<a href="<c:url value='/notices/write'/>" class="btn btn-primary">write</a>
					</c:if>

				</div>
				<div class="row">
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						<ul class="pagination">
							<c:set var="target" value="notices" />
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
