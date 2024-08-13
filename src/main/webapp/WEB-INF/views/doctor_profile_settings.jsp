<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<!-- doccure/doctor-profile-settings.html  30 Nov 2019 04:12:14 GMT -->
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

<!-- Select2 CSS -->
<link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css">

<link rel="stylesheet" href="assets/plugins/dropzone/dropzone.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="assets/css/style.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

</head>
<body>

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<%@include file="Header.jsp"%>

		<!-- /Header -->

		<!-- Breadcrumb -->
		<div class="breadcrumb-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-md-12 col-12">
						<nav aria-label="breadcrumb" class="page-breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Profile
									Settings</li>
							</ol>
						</nav>
						<h2 class="breadcrumb-title">Profile Settings</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- /Breadcrumb -->

		<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">
				<div class="alert alert-danger" role="alert">
					<form:errors path="doc.*" />
				</div>

				<div class="row">
					<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">

						<!-- Profile Sidebar -->
						<%@include file="Dsidebar.jsp"%>
						<!-- /Profile Sidebar -->

					</div>


					<div class="col-md-7 col-lg-8 col-xl-9">

						<%
							String sms=(String)request.getAttribute("sms");
							if(sms!=null){
								out.println(sms);
							}
						%>
						<!-- Basic Information -->
						<div class="card">
							<div class="card-body">
								<form action="doctor_profile_settings" method="post"
									enctype="multipart/form-data">
									<div class="row form-row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="change-avatar">

													<div class="upload-img">
														<div>
															<span><i class="fa fa-upload"></i> Upload Photo</span> <input
																type="file" class="upload" name="profile">
														</div>
														<small class="form-text text-muted">Allowed JPG,
															GIF or PNG. Max size of 2MB</small>
													</div>
												</div>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Email <span class="text-danger">*</span></label> <input
													type="email" class="form-control" name="email">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>First Name <span class="text-danger">*</span></label>
												<input type="text" class="form-control" name="fname">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Last Name <span class="text-danger">*</span></label>
												<input type="text" class="form-control" name="lname">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Phone Number</label> <input type="text"
													class="form-control" name="pno">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Gender</label> <select class="form-control select"
													name="gender">
													<option>Select</option>
													<option>Male</option>
													<option>Female</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group mb-0">
												<label>Date of Birth</label> <input type="date"
													class="form-control" name="dob">
											</div>
										</div>

									</div>
							</div>
							<div class="col-md-12">
								<div class="form-group m-4">
									<h4 class="card-title ">About Me</h4>
									<label>Biography</label>
									<textarea class="form-control" rows="5" name="biography"></textarea>
								</div>
							</div>

							<div class="col-md-12">
								<h4 class="card-title">Clinic Info</h4>
								<div class="row form-row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Clinic Name</label> <input type="text"
												class="form-control" name="cname">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Clinic Address</label> <input type="text"
												class="form-control" name="cadd">
										</div>
									</div>

								</div>
							</div>
							<div class="col-md-12">
								<h4 class="card-title">Contact Details</h4>
								<div class="row form-row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Address Line 1</label> <input type="text"
												class="form-control" name="address_line1">
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">Address Line 2</label> <input
													type="text" class="form-control" name="address_line2">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">City</label> <input type="text"
													class="form-control" name="city">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">State / Province</label> <input
													type="text" class="form-control" name="state">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">Country</label> <input
													type="text" class="form-control" name="country">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">Postal Code</label> <input
													type="text" class="form-control" name="pcode">
											</div>
										</div>
									</div>
								</div>



								<div class="col-md-12">
									<h4 class="card-title">Services and Specialization</h4>
									<div class="form-group">
										<label>Services</label> <input type="text" name="service">
									</div>
									<div class="form-group mb-3">
										<label>Specialization </label> <input type="text"
											name="specialist">
									</div>
								</div>

								<div class="col-md-12">
									<h4 class="card-title">Education</h4>
									<div class="education-info">
										<div class="row form-row education-cont">
											<div class="col-12 col-md-10 col-lg-11">
												<div class="row form-row">
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>Degree</label> <input type="text"
																class="form-control" name="degree">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>College/Institute</label> <input type="text"
																class="form-control" name="c_name">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>Year of Completion</label> <input type="text"
																class="form-control" name="c_year">
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>

								<div class="col-md-12 mb-3">
									<h4 class="card-title">Experience</h4>
									<div class="experience-info">
										<div class="row form-row experience-cont">
											<div class="col-12 col-md-10 col-lg-11">
												<div class="row form-row">
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>Hospital Name</label> <input type="text"
																class="form-control" name="h_name">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>From</label> <input type="date"
																class="form-control" name="s_date">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>To</label> <input type="date" class="form-control"
																name="l_date">
														</div>
													</div>
													<div class="col-12 col-md-6 col-lg-4">
														<div class="form-group">
															<label>Designation</label> <input type="text"
																class="form-control" name="designation">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>


								</div>




								<div class="col-md-6">
									<button type="submit"
										class="btn btn-primary submit-btn submit-section submit-btn-bottom">Add
										details</button>
								</div>
								</form>




							</div>


						</div>

					</div>


				</div>




				<!-- /Footer -->
				<%@include file="Footer.jsp"%>

			</div>
		</div>




		<!-- /Page Content -->



		<!-- /Footer -->


		<!-- /Main Wrapper -->

		<!-- jQuery -->
		<script src="assets/js/jquery.min.js"></script>

		<!-- Bootstrap Core JS -->
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- Sticky Sidebar JS -->
		<script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
		<script
			src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

		<!-- Select2 JS -->
		<script src="assets/plugins/select2/js/select2.min.js"></script>

		<!-- Dropzone JS -->
		<script src="assets/plugins/dropzone/dropzone.min.js"></script>

		<!-- Bootstrap Tagsinput JS -->
		<script
			src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>

		<!-- Profile Settings JS -->
		<script src="assets/js/profile-settings.js"></script>

		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
</body>

<!-- doccure/doctor-profile-settings.html  30 Nov 2019 04:12:15 GMT -->
</html>