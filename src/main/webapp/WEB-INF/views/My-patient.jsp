<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.viv.model.Paitent"%>

<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">

<!-- doccure/my-patients.html  30 Nov 2019 04:12:09 GMT -->
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
<body>

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<%@include file="Header.jsp" %>
		<!-- /Header -->

		<!-- Breadcrumb -->
		<div class="breadcrumb-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-md-12 col-12">
						<nav aria-label="breadcrumb" class="page-breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="home">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">My
									Patients</li>
							</ol>
						</nav>
						<h2 class="breadcrumb-title">My Patients</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- /Breadcrumb -->

		<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">

						<!-- Profile Sidebar -->
						<%@include file="Dsidebar.jsp"%>

						<!-- /Profile Sidebar -->

					</div>
					<div class="col-md-7 col-lg-8 col-xl-9">

						<div class="row row-grid">

							<%            ArrayList<Paitent> al = (ArrayList<Paitent>) request.getAttribute("allpaitent");%>
							<% if(al!=null&&!al.isEmpty()){
									for(Paitent p:al){%>


							<div class="col-md-6 col-lg-4 col-xl-3">
								<div class="card widget-profile pat-widget-profile">
									<div class="card-body">
										<div class="pro-widget-content">
											<div class="profile-info-widget">
												<a href="patient-profile" class="booking-doc-img"> <img
													src="pupload/<%=p.getPimg()%>" alt="User Image">
												</a>
												<div class="profile-det-info">
													<h3>
														<a href="patient-profile.jsp"><%=p.getFname() %> <%=p.getLname() %></a>
													</h3>

													<div class="patient-details">
														<h5>
															<b>Patient ID :</b> P00<%=p.getPid() %></h5>
														<h5 class="mb-0">
															<i class="fas fa-map-marker-alt"></i><%=p.getCity() %>,
															<%=p.getState() %></h5>
													</div>
												</div>
											</div>
										</div>
										<div class="patient-info">
											<ul>
												<li>Phone <span><%=p.getMno() %></span></li>
												<li>Age <span><%=p.getDob() %></span></li>
												<li>Blood Group <span><%=p.getBlood_g() %></span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<% }
       						} else { %>
							<div class="col-12">
								<p>No patients found.</p>
							</div>
							<% } %>


						</div>

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

	<!-- Sticky Sidebar JS -->
	<script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
	<script
		src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"></script>

</body>

<!-- doccure/my-patients.html  30 Nov 2019 04:12:09 GMT -->
</html>