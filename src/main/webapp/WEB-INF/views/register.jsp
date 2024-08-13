<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">

<!-- doccure/register.html  30 Nov 2019 04:12:20 GMT -->
<head>
<meta charset="utf-8">
<title>Doccure</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="assets/css/style.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

</head>
<body class="account-page">

	<!-- Main Wrapper -->
	<%@include file="Header1.jsp" %>
		<!-- /Header -->

		<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-8 offset-md-2">

						<!-- Register Content -->
						<div class="account-content">
							<div class="row align-items-center justify-content-center">
								<div class="col-md-7 col-lg-6 login-left">
									<img src="assets/img/login-banner.png" class="img-fluid"
										alt="Doccure Register">
								</div>
								<div class="col-md-12 col-lg-6 login-right">
									<div class="login-header">
										<h3>
											Patient Register <a href="doctor-reg">Are you a
												Doctor?</a>
										</h3>
									</div>
									<%String user=(String)request.getAttribute("username"); %>
									<!-- Register Form -->
									<form action="Login1" method="post">
										<div class="form-group form-focus">
											<input type="text" class="form-control floating" name="username" value=<%=user %>> <label
												class="focus-label">USername</label>
										</div>
										
										<div class="form-group form-focus">
											<input type="password" class="form-control floating" name="password">
											<label class="focus-label">Create Password</label>
										</div>
										<div class="text-right">
											<a class="forgot-link" href="login">Already have an
												account?</a>
										</div>
										<button class="btn btn-primary btn-block btn-lg login-btn"
											type="submit">Signup</button>
										<div class="login-or">
											<span class="or-line"></span> <span class="span-or">or</span>
										</div>
										<div class="row form-row social-login">
											<div class="col-6">
												<a href="#" class="btn btn-facebook btn-block"><i
													class="fab fa-facebook-f mr-1"></i> Login</a>
											</div>
											<div class="col-6">
												<a href="#" class="btn btn-google btn-block"><i
													class="fab fa-google mr-1"></i> Login</a>
											</div>
										</div>
									</form>
									<!-- /Register Form -->

								</div>
							</div>
						</div>
						<!-- /Register Content -->

					</div>
				</div>

			</div>

		</div>
		<!-- /Page Content -->

		<!-- Footer -->
		<%@include file="Footer.jsp"  %>
		<!-- /Footer -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="assets/js/jquery.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"></script>

</body>

<!-- doccure/register.html  30 Nov 2019 04:12:20 GMT -->
</html>