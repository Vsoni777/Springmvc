<%@page import="com.viv.model.Appointment"%>
<%@page import="com.viv.model.Paitent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<!-- doccure/login.html  30 Nov 2019 04:12:20 GMT -->
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
	<div class="main-wrapper">

		<!-- Header -->
	<%@include file="Pheader.jsp"  %>
		<!-- /Header -->

		<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-8 offset-md-2">

						<!-- Login Tab Content -->

						<div class="container py-5 h-100">
							<div class="row justify-content-center align-items-center h-100">
								<div class="col-12 col-lg-9 col-xl-7">
									<div class="card shadow-2-strong card-registration"
										style="border-radius: 15px;">
										<div class="card-body p-4 p-md-5">
											<h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Make Appointment
												Form</h3>
											<hr>
											<form action="bookapp" method="post">
												<%String docid=(String)request.getAttribute("did");
												
												%>
										<%  ArrayList<Paitent> al = (ArrayList<Paitent>) request.getAttribute("paitent");
							
											%>
											
												<div class="row">
													<div class="col-md-6 mb-4">

														<div class="form-outline">
													<%if(al!=null&&al.size()>0){ 
															for(Paitent ap:al){%>
															<input type="text" id="firstName"class="form-control form-control-lg" name="fname" value="<%=ap.getFname() %>">
															
															<label class="form-label" for="firstName">First Name</label>
														</div>

													</div>
													<div class="col-md-6 mb-4">

														<div class="form-outline">
															<input type="text" id="lastName"class="form-control form-control-lg" name="lname" value="<%=ap.getLname() %>">
															<label class="form-label" for="lastName">Last
Name</label>
														</div>

													</div>
												</div>

												<div class="row">
													<div class="col-md-6 mb-4 d-flex align-items-center">




														<h6 class="mb-2 m-2">Gender:</h6>

														<div class="form-check form-check-inline">
															<input class="form-check-input" type="radio"
																name="gender" id="femaleGender"
																value="female" checked /> <label
																class="form-check-label" for="femaleGender">Female</label>
														</div>

														<div class="form-check form-check-inline">
															<input class="form-check-input" type="radio"
																name="gender" id="maleGender" value="male">
															<label class="form-check-label" for="maleGender">Male</label>
														</div>

														<div class="form-check form-check-inline">
															<input class="form-check-input" type="radio"
																name="gender" id="otherGender" value="other" />
															<label class="form-check-label" for="otherGender">Other</label>
														</div>

													</div>
												</div>

												<div class="row">
													<div class="col-md-6 mb-4 pb-2">

														<div class="form-outline">
															<input type="date" id="Appointmentdate"
																class="form-control form-control-lg" name="appdate">
															<label class="form-label" for="Appointmentdate">Appointment
																Date</label>
														</div>

													</div>
													<div class="col-md-6 mb-4 pb-2">

														<div class="form-outline">
															<input type="tel" id="phoneNumber"
																class="form-control form-control-lg" name="m_no" value="<%=ap.getMno()%>">
															<label class="form-label" for="phoneNumber">Phone
																Number</label>
														</div>

													</div>
												</div>

												<div class="row">
													<div class="col-md-6 mb-4 pb-2">

														<div class="form-outline">
															<input type="text" class="form-control form-control-lg"
														name="docid" value="<%=docid%>"> <label
																class="form-label" for="docid">Doctor id</label>
														</div>

													</div>
													<div class="col-md-6 mb-4 pb-2">
														<label class="form-label select-label">Status</label> <select
															class="select form-control-sm" name="status">
															<option value="pending" Selected>pending</option>
															<option value="pending">cancel</option>

														</select>

													</div>
												</div>

												<div class="row">
													<div class="col-12">

														<div class="form-outline">
															<textarea class="form-control" rows="5" name="sysmptoms"></textarea>
															<label class="form-label" for="Symptoms">Symptous</label>
														</div>


													</div>
												</div>

												<div class="mt-4 pt-2">
													<input class="btn btn-primary btn-lg" type="submit"
														value="Submit">
												</div>

											</form>
										</div>
										<% }
       						} else { %>
							<div class="col-12">
								<p>No Appointment found.</p>
							</div>
							<%} %>
									</div>
								</div>
							</div>
						</div>

						<!-- /Login Tab Content -->

					</div>
				</div>

			</div>

		</div>
		<!-- /Page Content -->

		<!-- Footer -->
		<%@include file="Footer.jsp" %>
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

<!-- doccure/login.html  30 Nov 2019 04:12:20 GMT -->
</html>