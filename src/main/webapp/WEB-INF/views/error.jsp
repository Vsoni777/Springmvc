<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isErrorPage="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>404 Not Found</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f8f9fa;
}

.error-container {
	text-align: center;
}

.error-code {
	font-size: 10rem;
	font-weight: bold;
	color: #dc3545;
}

.error-message {
	font-size: 1.5rem;
	margin-bottom: 1.5rem;
}

.search-box input {
	max-width: 300px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<div class="container">
		<div class="error-container">
			<div class="error-code">404</div>
			<div class="error-message">Page Not Found</div>
			<p>Sorry, the page you are looking for could not be found. Please
				check the URL or try using the search box below.</p>
			<div class="search-box">
				<a href="contact" class="btn btn-secondary">Contact us</a>
			</div>
			<div class="mt-4">
				<a href="home" class="btn btn-secondary">Go to Homepage</a>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
