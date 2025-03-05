<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>RedPulse</title>

	<link rel="stylesheet" href="css/style1.css"
	<link rel="stylesheet" href="css/style2.css">

	<!-- Favicon -->
	<link rel="shortcut icon" href="images/blood-drop.svg" type="image/x-icon">
	<style>
        html {
            min-height: 100%;
            position: relative;
        }

        /* Add hover effect for links */
        .navbar-nav .nav-item a {
            position: relative;
            color: #777;
            margin-right: 10px;
            text-decoration: none;
            overflow: hidden;
        }

        .navbar-nav li a:hover {
            color: #1abc9c !important;
        }
	</style>
</head>
<body style="background-color: #f5f5dc;">
	<!-- Bootstrap navigation bar with responsive button -->
	<div class="container" style="margin-bottom: 50px;">
		<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color:#F8F88F;">
			<a class="navbar-brand" href="index.php" style="color: #777;font-size:22px;letter-spacing:2px;">RedPulse</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="patient/register.php">REGISTER</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="patient/login.php">LOGIN</a>
					</li>
				</ul>
			</div>
		</nav>
	</div>

	<div class='container text-center' style="color:#000;padding-top: 100px;padding-bottom:50px;">
		<h1 class="display-6">Blood Bank Management System</h1>
		<div class="row align-items-center">
			<div class="col-lg-6">
				<p class="lead mt-3">
					This system makes it easier to manage blood donations, donor details, and recipient needs.
					It ensures that blood is safely collected, tracked, and given to those who need it most in
					emergencies or medical treatments.
				</p>
				<p class="lead mt-3 mb-5">
					By joining, you can help save lives and support your community.
					Whether you want to donate blood or need it, signing up ensures
					no one has to wait for the blood they urgently need.
				</p>
			</div>
			<div class="col-lg-6">
				<img id="animated-image" src="images/home.svg" alt="" class="img-fluid d-none d-lg-block">
			</div>
		</div>
	</div>
	<!-- Include Bootstrap JS and jQuery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<footer class="footer"
		style="background-color:#1abc9c; color: #FFF; padding: 15px; text-align: center; position: absolute; bottom: 0; width: 100%;">
	<!-- Add content for your footer here -->
	&copy; <a style="color:#FFF;" href="https://github.com/redwan786">redONE</a>,
	<a style="color:#FFF;" href="https://github.com/caesium72">caesium</a>,
	<a style="color:#FFF;" href="https://github.com/jakaria76">jakaria</a>,
	<a style="color:#FFF;" href="https://github.com/redwan786/RedPulse">Team</a>
	❤️. All rights reserved. 2025
</footer>
</html>
