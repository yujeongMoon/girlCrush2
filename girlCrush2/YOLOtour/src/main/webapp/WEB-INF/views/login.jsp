<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login & Register</title>

<link rel="icon" type="image/png" href="login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="login/stylesheet" type="text/css"
	href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="login/css/util.css">
<link rel="stylesheet" type="text/css" href="login/css/main.css">
<!--===============================================================================================-->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<script type="text/javascript">
	$(function() {
		$('.message a').click(function() {
			$('form').toggle( "slow" );
		});

		var result = "${result}";
		if (result) {
			$("#myModal").modal('show');
		}
	});
</script>
</head>
<body>

	<c:import url="nav_top.jsp"></c:import>

	<div class="container-login100"
		style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">

			<div class="login-page">
				<div class="form">

					<form class="login100-form login-form"
						action="<c:url value='/login'/>" method="post">
						<span class="login100-form-title p-b-37"> Login </span>

						<c:if test="${not empty error }">
							<h6 style="color:red;">${error }</h6>
							<br>
						</c:if>

						<div class="wrap-input100 validate-input m-b-20"
							data-validate="Enter email">
							<input class="input100" type="text" name="email" id="email"
								placeholder="Email" value="${login.email }">
								<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input m-b-25"
							data-validate="Enter password">
							<input class="input100" type="password" name="password" id="password"
								placeholder="Password"> <span class="focus-input100"></span>
						</div>

						<div class="container-login100-form-btn">
							<button class="login100-form-btn" type="submit">Sign In</button>
						</div>

						<div class="text-center">
							<p class="message"><a class="txt2 hov1"> Register </a></p>
						</div>
					</form>


					<form class="login100-form register-form"
						action="<c:url value='/users/enroll'/>" method="post"
						style="display:none">
						<span class="login100-form-title p-b-37"> Register </span>

						<div class="wrap-input100 validate-input m-b-20"
							data-validate="Enter email">
							<input class="input100" type="text" name="email" id="email"
								placeholder="Email"> <span
								class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input m-b-25"
							data-validate="Enter password">
							<input class="input100" id="password" type="password" name="password"
								placeholder="Password"> <span class="focus-input100"></span>
						</div>

						<div class="container-login100-form-btn">
							<button class="login100-form-btn" type="submit">Submit</button>
						</div>

						<div class="text-center">
							<p class="message">
								<a class="txt2 hov1"> Login </a>
							</p>
						</div>
					</form>



				</div>
			</div>
		</div>
	</div>

	<div id="myModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">가입이 완료되었습니다!!!</h4>
				</div>
				<div class="modal-body">
					<p>YOLO TOUR에 가입하신 것을 축하드립니다.</p>
					<p class="text-warning">
						<small>앞으로 좋은 여행을 만들어봐요.</small>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Congratulation!</button>
				</div>
			</div>
		</div>
	</div>
	<!--===============================================================================================-->
	<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/bootstrap/js/popper.js"></script>
	<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/daterangepicker/moment.min.js"></script>
	<script src="login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="login/js/main.js"></script>
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