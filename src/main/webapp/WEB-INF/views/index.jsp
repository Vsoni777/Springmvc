<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype>
<html>

<!-- doccure/  30 Nov 2019 04:11:34 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Doccure</title>

<!-- Favicons -->
<link type="image/x-icon" href="assets/img/favicon.png" rel="icon">

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
				<%@include file="Header1.jsp"%>
		<!-- /Header -->

		<!-- Home Banner -->
		<section class="section section-search">
			<div class="container-fluid">
				<div class="banner-wrapper">
					<div class="banner-header text-center">
						<h1>Search Doctor, Make an Appointment</h1>
						<p>Discover the best doctors, clinic & hospital the city
							nearest to you.</p>
					</div>

					<!-- Search -->
					<div class="search-box">
						<form action="templateshub.net">
							<div class="form-group search-location">
								<input type="text" class="form-control"
									placeholder="Search Location"> <span class="form-text">Based
									on your Location</span>
							</div>
							<div class="form-group search-info">
								<input type="text" class="form-control"
									placeholder="Search Doctors, Clinics, Hospitals, Diseases Etc">
								<span class="form-text">Ex : Dental or Sugar Check up etc</span>
							</div>
							<button type="submit" class="btn btn-primary search-btn">
								<i class="fas fa-search"></i> <span>Search</span>
							</button>
						</form>
					</div>
					<!-- /Search -->

				</div>
			</div>
		</section>
		<!-- /Home Banner -->

		<!-- Clinic and Specialities -->
		<section class="section section-specialities">
			<div class="container-fluid">
				<div class="section-header text-center">
					<h2>Clinic and Specialities</h2>
					<p class="sub-title">At Doccure Hospital, we offer a diverse
						range of specialized clinics and medical services to address your
						unique healthcare needs. Our dedicated team of experts and
						state-of-the-art facilities ensure that you receive comprehensive
						and personalized care. Explore the various clinics and specialties
						available at Doccure Hospital:</p>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-9">
						<!-- Slider -->
						<div class="specialities-slider slider">

							<!-- Slider Item -->
							<div class="speicality-item text-center">
								<div class="speicality-img">
									<img src="assets/img/specialities/specialities-01.png"
										class="img-fluid" alt="Speciality"> <span><i
										class="fa fa-circle" aria-hidden="true"></i></span>
								</div>
								<p>Urology</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="speicality-item text-center">
								<div class="speicality-img">
									<img src="assets/img/specialities/specialities-02.png"
										class="img-fluid" alt="Speciality"> <span><i
										class="fa fa-circle" aria-hidden="true"></i></span>
								</div>
								<p>Neurology</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="speicality-item text-center">
								<div class="speicality-img">
									<img src="assets/img/specialities/specialities-03.png"
										class="img-fluid" alt="Speciality"> <span><i
										class="fa fa-circle" aria-hidden="true"></i></span>
								</div>
								<p>Orthopedic</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="speicality-item text-center">
								<div class="speicality-img">
									<img src="assets/img/specialities/specialities-04.png"
										class="img-fluid" alt="Speciality"> <span><i
										class="fa fa-circle" aria-hidden="true"></i></span>
								</div>
								<p>Cardiologist</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="speicality-item text-center">
								<div class="speicality-img">
									<img src="assets/img/specialities/specialities-05.png"
										class="img-fluid" alt="Speciality"> <span><i
										class="fa fa-circle" aria-hidden="true"></i></span>
								</div>
								<p>Dentist</p>
							</div>
							<!-- /Slider Item -->

						</div>
						<!-- /Slider -->

					</div>
				</div>
			</div>
		</section>
		<!-- Clinic and Specialities -->

		<!-- Popular Section -->
		<section class="section section-doctor">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-4">
						<div class="section-header ">
							<h2>Book Our Doctor</h2>
							<p>We prioritize the privacy and security of your
								information. Our online booking system uses advanced encryption
								to safeguard your data.</p>
						</div>
						<div class="about-content">
							<p>At Doccure Hospital, we've made it easy for you to
								schedule appointments with our team of expert doctors. Whether
								you're seeking specialized care or routine check-ups, our
								experienced medical professionals are here to meet your
								healthcare needs. Follow these simple steps to book an
								appointment:</p>
							<p>Booking an appointment with our expert doctors at Doccure
								Hospital is a seamless process designed with your convenience in
								mind. Choose your medical speciality, select a preferred doctor,
								and pick a date and time that suits your schedule. Provide your
								information for a personalized experience, and confirm your
								appointment with ease. Our diverse team of specialists in
								cardiology, orthopedics, women's health, dentistry, neurology,
								psychiatry, and more is ready to meet your healthcare needs.
								Whether it's a routine check-up or specialized care, our online
								portal or appointment hotline ensures a secure and efficient
								booking process. If you have any questions or need assistance,
								our dedicated support team is here to help. Take control of your
								health journey and book your expert doctor at Doccure Hospital
								today."</p>
							<a href="javascript:;">Read More..</a>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="doctor-slider slider">

							<!-- Doctor Widget -->
							<div class="profile-widget">
								<div class="doc-img">
									<a href="doctor-profile.html"> <img class="img-fluid"
										alt="User Image" src="assets/img/doctors/doctor-01.jpg">
									</a> <a href="javascript:void(0)" class="fav-btn"> <i
										class="far fa-bookmark"></i>
									</a>
								</div>
								<div class="pro-content">
									<h3 class="title">
										<a href="doctor-profile.html">Ruby Perrin</a> <i
											class="fas fa-check-circle verified"></i>
									</h3>
									<p class="speciality">MDS - Periodontology and Oral
										Implantology, BDS</p>
									<div class="rating">
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <i class="fas fa-star filled"></i>
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <span
											class="d-inline-block average-rating">(17)</span>
									</div>
									<ul class="available-info">
										<li><i class="fas fa-map-marker-alt"></i> Florida, USA</li>
										<li><i class="far fa-clock"></i> Available on Fri, 22 Mar
										</li>
										<li><i class="far fa-money-bill-alt"></i> $300 - $1000 <i
											class="fas fa-info-circle" data-toggle="tooltip"
											title="Lorem Ipsum"></i></li>
									</ul>
									<div class="row row-sm">
										<div class="col-6">
											<a href="doctor-profile.html" class="btn view-btn">View
												Profile</a>
										</div>
										<div class="col-6">
											<a href="booking.html" class="btn book-btn">Book Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->

							<!-- Doctor Widget -->
							<div class="profile-widget">
								<div class="doc-img">
									<a href="doctor-profile.html"> <img class="img-fluid"
										alt="User Image" src="assets/img/doctors/doctor-02.jpg">
									</a> <a href="javascript:void(0)" class="fav-btn"> <i
										class="far fa-bookmark"></i>
									</a>
								</div>
								<div class="pro-content">
									<h3 class="title">
										<a href="doctor-profile.html">Darren Elder</a> <i
											class="fas fa-check-circle verified"></i>
									</h3>
									<p class="speciality">BDS, MDS - Oral & Maxillofacial
										Surgery</p>
									<div class="rating">
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <i class="fas fa-star filled"></i>
										<i class="fas fa-star filled"></i> <i class="fas fa-star"></i>
										<span class="d-inline-block average-rating">(35)</span>
									</div>
									<ul class="available-info">
										<li><i class="fas fa-map-marker-alt"></i> Newyork, USA</li>
										<li><i class="far fa-clock"></i> Available on Fri, 22 Mar
										</li>
										<li><i class="far fa-money-bill-alt"></i> $50 - $300 <i
											class="fas fa-info-circle" data-toggle="tooltip"
											title="Lorem Ipsum"></i></li>
									</ul>
									<div class="row row-sm">
										<div class="col-6">
											<a href="doctor-profile.html" class="btn view-btn">View
												Profile</a>
										</div>
										<div class="col-6">
											<a href="booking.html" class="btn book-btn">Book Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->

							<!-- Doctor Widget -->
							<div class="profile-widget">
								<div class="doc-img">
									<a href="doctor-profile.html"> <img class="img-fluid"
										alt="User Image" src="assets/img/doctors/doctor-03.jpg">
									</a> <a href="javascript:void(0)" class="fav-btn"> <i
										class="far fa-bookmark"></i>
									</a>
								</div>
								<div class="pro-content">
									<h3 class="title">
										<a href="doctor-profile.html">Deborah Angel</a> <i
											class="fas fa-check-circle verified"></i>
									</h3>
									<p class="speciality">MBBS, MD - General Medicine, DNB -
										Cardiology</p>
									<div class="rating">
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <i class="fas fa-star filled"></i>
										<i class="fas fa-star filled"></i> <i class="fas fa-star"></i>
										<span class="d-inline-block average-rating">(27)</span>
									</div>
									<ul class="available-info">
										<li><i class="fas fa-map-marker-alt"></i> Georgia, USA</li>
										<li><i class="far fa-clock"></i> Available on Fri, 22 Mar
										</li>
										<li><i class="far fa-money-bill-alt"></i> $100 - $400 <i
											class="fas fa-info-circle" data-toggle="tooltip"
											title="Lorem Ipsum"></i></li>
									</ul>
									<div class="row row-sm">
										<div class="col-6">
											<a href="doctor-profile.html" class="btn view-btn">View
												Profile</a>
										</div>
										<div class="col-6">
											<a href="booking.html" class="btn book-btn">Book Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->

							<!-- Doctor Widget -->
							<div class="profile-widget">
								<div class="doc-img">
									<a href="doctor-profile.html"> <img class="img-fluid"
										alt="User Image" src="assets/img/doctors/doctor-04.jpg">
									</a> <a href="javascript:void(0)" class="fav-btn"> <i
										class="far fa-bookmark"></i>
									</a>
								</div>
								<div class="pro-content">
									<h3 class="title">
										<a href="doctor-profile.html">Sofia Brient</a> <i
											class="fas fa-check-circle verified"></i>
									</h3>
									<p class="speciality">MBBS, MS - General Surgery, MCh -
										Urology</p>
									<div class="rating">
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <i class="fas fa-star filled"></i>
										<i class="fas fa-star filled"></i> <i class="fas fa-star"></i>
										<span class="d-inline-block average-rating">(4)</span>
									</div>
									<ul class="available-info">
										<li><i class="fas fa-map-marker-alt"></i> Louisiana, USA
										</li>
										<li><i class="far fa-clock"></i> Available on Fri, 22 Mar
										</li>
										<li><i class="far fa-money-bill-alt"></i> $150 - $250 <i
											class="fas fa-info-circle" data-toggle="tooltip"
											title="Lorem Ipsum"></i></li>
									</ul>
									<div class="row row-sm">
										<div class="col-6">
											<a href="doctor-profile.html" class="btn view-btn">View
												Profile</a>
										</div>
										<div class="col-6">
											<a href="booking.html" class="btn book-btn">Book Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->

							<!-- Doctor Widget -->
							<div class="profile-widget">
								<div class="doc-img">
									<a href="doctor-profile.html"> <img class="img-fluid"
										alt="User Image" src="assets/img/doctors/doctor-05.jpg">
									</a> <a href="javascript:void(0)" class="fav-btn"> <i
										class="far fa-bookmark"></i>
									</a>
								</div>
								<div class="pro-content">
									<h3 class="title">
										<a href="doctor-profile.html">Marvin Campbell</a> <i
											class="fas fa-check-circle verified"></i>
									</h3>
									<p class="speciality">MBBS, MD - Ophthalmology, DNB -
										Ophthalmology</p>
									<div class="rating">
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <i class="fas fa-star filled"></i>
										<i class="fas fa-star filled"></i> <i class="fas fa-star"></i>
										<span class="d-inline-block average-rating">(66)</span>
									</div>
									<ul class="available-info">
										<li><i class="fas fa-map-marker-alt"></i> Michigan, USA</li>
										<li><i class="far fa-clock"></i> Available on Fri, 22 Mar
										</li>
										<li><i class="far fa-money-bill-alt"></i> $50 - $700 <i
											class="fas fa-info-circle" data-toggle="tooltip"
											title="Lorem Ipsum"></i></li>
									</ul>
									<div class="row row-sm">
										<div class="col-6">
											<a href="doctor-profile.html" class="btn view-btn">View
												Profile</a>
										</div>
										<div class="col-6">
											<a href="booking.html" class="btn book-btn">Book Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->

							<!-- Doctor Widget -->
							<div class="profile-widget">
								<div class="doc-img">
									<a href="doctor-profile.html"> <img class="img-fluid"
										alt="User Image" src="assets/img/doctors/doctor-06.jpg">
									</a> <a href="javascript:void(0)" class="fav-btn"> <i
										class="far fa-bookmark"></i>
									</a>
								</div>
								<div class="pro-content">
									<h3 class="title">
										<a href="doctor-profile.html">Katharine Berthold</a> <i
											class="fas fa-check-circle verified"></i>
									</h3>
									<p class="speciality">MS - Orthopaedics, MBBS, M.Ch -
										Orthopaedics</p>
									<div class="rating">
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <i class="fas fa-star filled"></i>
										<i class="fas fa-star filled"></i> <i class="fas fa-star"></i>
										<span class="d-inline-block average-rating">(52)</span>
									</div>
									<ul class="available-info">
										<li><i class="fas fa-map-marker-alt"></i> Texas, USA</li>
										<li><i class="far fa-clock"></i> Available on Fri, 22 Mar
										</li>
										<li><i class="far fa-money-bill-alt"></i> $100 - $500 <i
											class="fas fa-info-circle" data-toggle="tooltip"
											title="Lorem Ipsum"></i></li>
									</ul>
									<div class="row row-sm">
										<div class="col-6">
											<a href="doctor-profile.html" class="btn view-btn">View
												Profile</a>
										</div>
										<div class="col-6">
											<a href="booking.html" class="btn book-btn">Book Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->

							<!-- Doctor Widget -->
							<div class="profile-widget">
								<div class="doc-img">
									<a href="doctor-profile.html"> <img class="img-fluid"
										alt="User Image" src="assets/img/doctors/doctor-07.jpg">
									</a> <a href="javascript:void(0)" class="fav-btn"> <i
										class="far fa-bookmark"></i>
									</a>
								</div>
								<div class="pro-content">
									<h3 class="title">
										<a href="doctor-profile.html">Linda Tobin</a> <i
											class="fas fa-check-circle verified"></i>
									</h3>
									<p class="speciality">MBBS, MD - General Medicine, DM -
										Neurology</p>
									<div class="rating">
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <i class="fas fa-star filled"></i>
										<i class="fas fa-star filled"></i> <i class="fas fa-star"></i>
										<span class="d-inline-block average-rating">(43)</span>
									</div>
									<ul class="available-info">
										<li><i class="fas fa-map-marker-alt"></i> Kansas, USA</li>
										<li><i class="far fa-clock"></i> Available on Fri, 22 Mar
										</li>
										<li><i class="far fa-money-bill-alt"></i> $100 - $1000 <i
											class="fas fa-info-circle" data-toggle="tooltip"
											title="Lorem Ipsum"></i></li>
									</ul>
									<div class="row row-sm">
										<div class="col-6">
											<a href="doctor-profile.html" class="btn view-btn">View
												Profile</a>
										</div>
										<div class="col-6">
											<a href="booki" class="btn book-btn">Book Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->

							<!-- Doctor Widget -->
							<div class="profile-widget">
								<div class="doc-img">
									<a href="doctor-profile.html"> <img class="img-fluid"
										alt="User Image" src="assets/img/doctors/doctor-08.jpg">
									</a> <a href="javascript:void(0)" class="fav-btn"> <i
										class="far fa-bookmark"></i>
									</a>
								</div>
								<div class="pro-content">
									<h3 class="title">
										<a href="doctor-profile.html">Paul Richard</a> <i
											class="fas fa-check-circle verified"></i>
									</h3>
									<p class="speciality">MBBS, MD - Dermatology , Venereology
										& Lepros</p>
									<div class="rating">
										<i class="fas fa-star filled"></i> <i
											class="fas fa-star filled"></i> <i class="fas fa-star filled"></i>
										<i class="fas fa-star filled"></i> <i class="fas fa-star"></i>
										<span class="d-inline-block average-rating">(49)</span>
									</div>
									<ul class="available-info">
										<li><i class="fas fa-map-marker-alt"></i> California, USA
										</li>
										<li><i class="far fa-clock"></i> Available on Fri, 22 Mar
										</li>
										<li><i class="far fa-money-bill-alt"></i> $100 - $400 <i
											class="fas fa-info-circle" data-toggle="tooltip"
											title="Lorem Ipsum"></i></li>
									</ul>
									<div class="row row-sm">
										<div class="col-6">
											<a href="doctor-profile.html" class="btn view-btn">View
												Profile</a>
										</div>
										<div class="col-6">
											<a href="booking.html" class="btn book-btn">Book Now</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Doctor Widget -->

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /Popular Section -->

		<!-- Availabe Features -->
		<section class="section section-features">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-5 features-img">
						<img src="assets/img/features/feature.png" class="img-fluid"
							alt="Feature">
					</div>
					<div class="col-md-7">
						<div class="section-header">
							<h2 class="mt-2">Availabe Features in Our Clinic</h2>
							<p>"At Doccure Hospital, our clinics are equipped with
								state-of-the-art facilities and feature a range of services
								designed to ensure comprehensive and patient-centric care. Our
								modern clinics boast advanced diagnostic equipment, enabling
								quick and accurate assessments. The comfortable and welcoming
								environment is complemented by a team of qualified healthcare
								professionals who specialize in various fields, including
								cardiology, orthopedics, women's health, dentistry, neurology,
								psychiatry, and more. Patients benefit from personalized
								treatment plans, cutting-edge technology, and a commitment to
								excellence in healthcare. Additionally, our clinics prioritize
								efficiency with streamlined appointment booking processes,
								online portals for medical records, and a dedicated support team
								ready to assist. Medicio Hospital is dedicated to providing a
								seamless healthcare experience, ensuring you receive the highest
								quality care in a state-of-the-art clinical setting."</p>
						</div>
						<div class="features-slider slider">
							<!-- Slider Item -->
							<div class="feature-item text-center">
								<img src="assets/img/features/feature-01.jpg" class="img-fluid"
									alt="Feature">
								<p>Patient Ward</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="feature-item text-center">
								<img src="assets/img/features/feature-02.jpg" class="img-fluid"
									alt="Feature">
								<p>Test Room</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="feature-item text-center">
								<img src="assets/img/features/feature-03.jpg" class="img-fluid"
									alt="Feature">
								<p>ICU</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="feature-item text-center">
								<img src="assets/img/features/feature-04.jpg" class="img-fluid"
									alt="Feature">
								<p>Laboratory</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="feature-item text-center">
								<img src="assets/img/features/feature-05.jpg" class="img-fluid"
									alt="Feature">
								<p>Operation</p>
							</div>
							<!-- /Slider Item -->

							<!-- Slider Item -->
							<div class="feature-item text-center">
								<img src="assets/img/features/feature-06.jpg" class="img-fluid"
									alt="Feature">
								<p>Medical</p>
							</div>
							<!-- /Slider Item -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Availabe Features -->

		<!-- Footer -->
		<%@include file="Footer.jsp"%>

		<!-- /Footer -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="assets/js/jquery.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- Slick JS -->
	<script src="assets/js/slick.js"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"></script>

</body>

<!-- doccure/  30 Nov 2019 04:11:53 GMT -->
</html>