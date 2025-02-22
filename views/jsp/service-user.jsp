<!DOCTYPE HTML>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>HAD Service</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<!--  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=|Roboto+Sans:400,700|Playfair+Display:400,700"> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<link rel="stylesheet"
	href="<c:url value="/resources/css/button.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/image.css"></c:url>">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/css/fancybox.min.css">
<link rel="stylesheet" href="resources/css/jquery.timepicker.css">

<link rel="stylesheet"
	href="resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="resources/fonts/fontawesome/css/font-awesome.min.css">

<!-- Theme Style -->
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

	<header class="site-header js-site-header">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-6 col-lg-4 site-logo" data-aos="fade">
					<a href="index_user">HAD Hotel</a>
				</div>
				<div class="col-6 col-lg-8">


					<div class="site-menu-toggle js-site-menu-toggle" data-aos="fade">
						<span></span> <span></span> <span></span>
					</div>
					<!-- END menu-toggle -->

					<div class="site-navbar js-site-navbar">
						<nav role="navigation">
							<div class="container">
								<div class="row full-height align-items-center">
									<div class="col-md-6 mx-auto">
										<ul class="list-unstyled menu">
											<li><a href="index_user" />Home</a></li>
											<li><a href="rooms_user" />Rooms</a></li>
											<li><a href="about" />About</a></li>
											<li><a href="events" />Events</a></li>
											<li><a href="contact" />Contact</a></li>
											<li class="active"><a href="service-user" />Service</a></li>
										</ul>
									</div>
								</div>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- END head -->

	<section class="site-hero inner-page overlay"
		style="background-image: url(resources/images/hero_4.jpg)"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div
				class="row site-hero-inner justify-content-center align-items-center">
				<div class="col-md-10 text-center" data-aos="fade">
					<h1 class="heading mb-3">Service</h1>
					<ul class="custom-breadcrumbs mb-4">
						<li><a href="index_user">Home</a></li>
						<li>&bullet;</li>
						<li>Service</li>
					</ul>
				</div>
			</div>
		</div>

		<a class="mouse smoothscroll" href="#next">
			<div class="mouse-icon">
				<span class="mouse-wheel"></span>
			</div>
		</a>

	</section>
	<!-- END section -->
	<section class="section bg-light pb-0">
		<div class="container">

			<div class="row check-availabilty" id="next">
				<div class="block-32" data-aos="fade-up" data-aos-offset="-200">
					<h3
						style="color: black; font-size: 64px; text-align: center; cursor: pointer;">
						<a href="service-user">Service of Hotel</a>
					</h3>
				</div>
			</div>
		</div>
	</section>


	<section class="section bg-light" style="padding-top: 1em">
		<div class="container">
			<div class="site-block-half d-block d-lg-flex bg-white"
				data-aos="fade" data-aos-delay="100">
				<a href="#" class="image d-block bg-image-2"
					style="background-image: url('<%=request.getContextPath()%>/resources/image/image-food.jpg');"></a>
				<div class="text">
					<span class="d-block mb-4"><span
						class="display-4 text-primary"><c:if
								test="${not empty listservice}">
								<c:forEach var="service" items="${listservice}">
									<tr style="text-align: center">
										<td>${service.servicename}</td>
									</tr>
								</c:forEach>
							</c:if></span> <span class="text-uppercase letter-spacing-2">/ per day</span> </span>

					<p>
						<c:if test="${not empty listservice}">
							<c:forEach var="service" items="${listservice}">
								<tr style="text-align: center">
									<td>${service.servicedesc}</td>
								</tr>

							</c:forEach>
						</c:if>
					</p>
				</div>
			</div>
			<div class="site-block-half d-block d-lg-flex bg-white"
				data-aos="fade" data-aos-delay="200">
				<a href="#" class="image d-block bg-image-2 order-2"
					style="background-image: url('<%=request.getContextPath()%>/resources/image/image-giatdo.jpg');"></a>
				<div class="text order-1">
					<span class="d-block mb-4"><span
						class="display-4 text-primary"><c:if
								test="${not empty listservice}">
								<c:forEach var="service" items="${listservice}">
									<tr style="text-align: center">
										<td>${service.servicename}</td>
									</tr>
								</c:forEach>
							</c:if></span> <span class="text-uppercase letter-spacing-2"></span> </span>
					<c:if test="${not empty listservice}">
						<c:forEach var="service" items="${listservice}">
							<tr style="text-align: center">
								<td>${service.servicedesc}</td>
							</tr>
						</c:forEach>
					</c:if>
				</div>
			</div>
			<div class="site-block-half d-block d-lg-flex bg-white"
				data-aos="fade" data-aos-delay="100">
				<a href="#" class="image d-block bg-image-2"
					style="background-image: url('<%=request.getContextPath()%>/resources/image/image-duadon.jpg');"></a>
				<div class="text">
					<span class="d-block mb-4"><span
						class="display-4 text-primary"><c:if
								test="${not empty listservice}">
								<c:forEach var="service" items="${listservice}">
									<tr style="text-align: center">
										<td>${service.servicename}</td>
									</tr>
								</c:forEach>
							</c:if></span> <span class="text-uppercase letter-spacing-2"></span> </span>

					<p>
						<c:if test="${not empty listservice}">
							<c:forEach var="service" items="${listservice}">
								<tr style="text-align: center">
									<td>${service.servicedesc}</td>
								</tr>

							</c:forEach>
						</c:if>
					</p>
				</div>
			</div>
			<div class="site-block-half d-block d-lg-flex bg-white"
				data-aos="fade" data-aos-delay="200">
				<a href="#" class="image d-block bg-image-2 order-2"
					style="background-image: url('<%=request.getContextPath()%>/resources/image/image-air.jpg');"></a>
				<div class="text order-1">
					<span class="d-block mb-4"><span
						class="display-4 text-primary"><c:if
								test="${not empty listservice}">
								<c:forEach var="service" items="${listservice}">
									<tr style="text-align: center">
										<td>${service.servicename}</td>
									</tr>
								</c:forEach>
							</c:if></span> <span class="text-uppercase letter-spacing-2"></span> </span>
					<c:if test="${not empty listservice}">
						<c:forEach var="service" items="${listservice}">
							<tr style="text-align: center">
								<td>${service.servicedesc}</td>
							</tr>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</section>

	<section class="section bg-image overlay"
		style="background-image: url('images/hero_4.jpg');">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-12 col-md-6 text-center mb-4 mb-md-0 text-md-left"
					data-aos="fade-up">
					<h2 class="text-white font-weight-bold">A Best Place To Stay.
						Reserve Now!</h2>
				</div>
				<div class="col-12 col-md-6 text-center text-md-right"
					data-aos="fade-up" data-aos-delay="200">
					<a href="reservation.html"
						class="btn btn-outline-white-primary py-3 text-white px-5">Reserve
						Now</a>
				</div>
			</div>
		</div>
	</section>

	<footer class="section footer-section">
		<div class="container">
			<div class="row mb-4">
				<div class="col-md-3 mb-5">
					<ul class="list-unstyled link">
						<li><a href="#">About Us</a></li>
						<li><a href="#">Terms &amp; Conditions</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Rooms</a></li>
					</ul>
				</div>
				<div class="col-md-3 mb-5">
					<ul class="list-unstyled link">
						<li><a href="#">The Rooms &amp; Suites</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Restaurant</a></li>
					</ul>
				</div>
				<div class="col-md-3 mb-5 pr-md-5 contact-info">
					<!-- <li>198 West 21th Street, <br> Suite 721 New York NY 10016</li> -->
					<p>
						<span class="d-block"><span
							class="ion-ios-location h5 mr-3 text-primary"></span>Address:</span> <span>
							132 Ly Tu Trong Street, Quận 1, TP. Hồ Chí Minh, Việt Nam </span>
					</p>
					<p>
						<span class="d-block"><span
							class="ion-ios-telephone h5 mr-3 text-primary"></span>Phone:</span> <span>
							(+1) 435 3533</span>
					</p>
					<p>
						<span class="d-block"><span
							class="ion-ios-email h5 mr-3 text-primary"></span>Email:</span> <span>
							had@gmail.com</span>
					</p>
				</div>
				<div class="col-md-3 mb-5">
					<p>Sign up for our newsletter</p>
					<form action="#" class="footer-newsletter">
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Email...">
							<button type="submit" class="btn">
								<span class="fa fa-paper-plane"></span>
							</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row pt-5">
				<p class="col-md-6 text-left">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="icon-heart-o" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>

				<p class="col-md-6 text-right social">
					<a href="#"><span class="fa fa-tripadvisor"></span></a> <a href="#"><span
						class="fa fa-facebook"></span></a> <a href="#"><span
						class="fa fa-twitter"></span></a> <a href="#"><span
						class="fa fa-linkedin"></span></a> <a href="#"><span
						class="fa fa-vimeo"></span></a>
				</p>
			</div>
		</div>
	</footer>

	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.fancybox.min.js"></script>


	<script src="resources/js/aos.js"></script>

	<script src="resources/js/bootstrap-datepicker.js"></script>
	<script src="resources/js/jquery.timepicker.min.js"></script>



	<script src="resources/js/main.js"></script>





</body>
</html>