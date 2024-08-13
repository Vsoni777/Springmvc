<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>patient registration</title>
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

</head>
<body class="account-page">
		<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<%@include file="Header.jsp" %>

<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-8 offset-md-2">

						<!-- Account Content -->
						<div class="account-content">
							<div class="row align-items-center justify-content-center">
								<div class="col-md-7 col-lg-6 login-left">
									<img src="assets/img/login-banner.png" class="img-fluid"
										alt="Login Banner">
								</div>
								<div class="col-md-12 col-lg-6 login-right">
									<div class="login-header">
										<h3>
											Doctor Register <a href="register">Not a Doctor?</a>
										</h3>
									</div>
									<%String sms=(String)request.getAttribute("sms");
										if(sms!=null){
											out.println(out);
										}%>
									<!-- Register Form -->
									<form action="preg" method="Post">
										<%
													String username=(String)request.getAttribute("Username");
													%>
										<div class="form-group form-focus">
											<input type="text" class="form-control floating"
												value="<%=username %>" name="username"> <label
												class="focus-label">User Name</label>
										</div>

										<div class="form-group form-focus">
											<input type="password" class="form-control floating"
												name="pass"> <label class="focus-label">
												Password</label>
										</div>
										<div class="text-right">
											<a class="forgot-link" href="login.jsp">Already have an
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
						<!-- /Account Content -->

					</div>
				</div>

			</div>

		</div>
		<%@include file="Footer.jsp" %>
		</div>
<!-- jQuery -->
	<script src="assets/js/jquery.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"></script>
</body>
</html>