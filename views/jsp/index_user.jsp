<!DOCTYPE HTML>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home HAD Hotel</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<!-- <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=|Roboto+Sans:400,700|Playfair+Display:400,700">
 -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/css/image.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/button.css"></c:url>">
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
					<a href="index_user">MUSHTAQ SHOP</a>
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
											<li class="active"><a href="index_user" />Home</a></li>
											<li><a href="rooms_user" />Rooms</a></li>
											<li><a href="about" />About</a></li>
											<li><a href="events" />Events</a></li>
											<li><a href="contact" />Contact</a></li>
											<li><a href="service-user" />Service</a></li>
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

	<section class="site-hero overlay"
		style="background-image: url(resources/images/hero_4.jpg)"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div
				class="row site-hero-inner justify-content-center align-items-center">
				<div class="col-md-10 text-center" data-aos="fade-up">
					<span
						class="custom-caption text-uppercase text-white d-block  mb-3">Welcome
						To <span class="fa fa-star text-primary"></span> Mushtaq Shop
					</span>
					<h1 class="heading">A Best Place To Stay</h1>
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

	<section class="py-5 bg-light">
		<div class="container">
			<div class="row align-items-center">
				<div
					class="col-md-12 col-lg-7 ml-auto order-lg-2 position-relative mb-5"
					data-aos="fade-up">
					<figure class="img-absolute">
						<img src="resources/images/food-1.jpg" alt="Image"
							class="img-fluid">
					</figure>
					<img src="resources/images/img_1.jpg" alt="Image"
						class="img-fluid rounded">
				</div>
				<div class="col-md-12 col-lg-4 order-lg-1" data-aos="fade-up">
					<h2 class="heading">Welcome!</h2>
					<p class="mb-4">Far far away, behind the word mountains, far
						from the countries Vokalia and Consonantia, there live the blind
						texts. Separated they live in Bookmarksgrove right at the coast of
						the Semantics, a large language ocean.</p>
					<p>
						<a href="#" class="btn btn-primary text-white py-2 mr-3">Learn
							More</a> <span class="mr-3 font-family-serif"><em>or</em></span> <a
							href="https://vimeo.com/25507871" data-fancybox
							class="text-uppercase letter-spacing-1">See video</a>
					</p>
				</div>

			</div>
		</div>
	</section>

	<section class="section">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-md-7">
					<h2 class="heading" data-aos="fade-up">Rooms &amp; Suites</h2>
				</div>
			</div>

			<div class="row">

				<div id="myImg" class="col-md-12 thumbnail">

					<c:if test="${not empty listRoom}">
						<c:forEach var="room" items="${listRoom}">
							<div id="myImg" class="col-md-4 col-lg-4 thumbnail"
								style="padding: 10px;">
								<div>
									<img
										src="<%=request.getContextPath()%>/resources/image/${room.roomimage}"
										style="height: 230px; width: 346px" />
								</div>
								<br />
								<div style="text-align: center; font-size: 120%; color: maroon;">
									<p>${room.roomtypename}</p>
								</div>
								<div style="text-align: center">
									<p style="color: Black;">
										<fmt:formatNumber value="${room.roomprice}" />
										VND
									</p>
									<button class="button">
										<a href="customer_user" /><span>Booking </span>
									</button>
								</div>
							</div>
						</c:forEach>
					</c:if>

				</div>
			</div>

		</div>
	</section>


	<section class="section slider-section bg-light">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-md-7">
					<h2 class="heading" data-aos="fade-up">Photos</h2>
					<p data-aos="fade-up" data-aos-delay="100">Far far away, behind
						the word mountains, far from the countries Vokalia and
						Consonantia, there live the blind texts. Separated they live in
						Bookmarksgrove right at the coast of the Semantics, a large
						language ocean.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="home-slider major-caousel owl-carousel mb-5"
						data-aos="fade-up" data-aos-delay="200">
						<div class="slider-item">
							<a href="images/slider-1.jpg" data-fancybox="images"
								data-caption="Caption for this image"><img
								src="<%=request.getContextPath()%>/resources/images/slider-1.jpg"
								alt="Image placeholder" class="img-fluid"></a>
						</div>
						<div class="slider-item">
							<a href="/resources/images/slider-2.jpg" data-fancybox="images"
								data-caption="Caption for this image"><img
								src="<%=request.getContextPath()%>/resources/images/slider-2.jpg"
								alt="Image placeholder" class="img-fluid"></a>
						</div>
						<div class="slider-item">
							<a href="/resources/images/slider-3.jpg" data-fancybox="images"
								data-caption="Caption for this image"><img
								src="<%=request.getContextPath()%>/resources/images/slider-3.jpg"
								alt="Image placeholder" class="img-fluid"></a>
						</div>
						<div class="slider-item">
							<a href="/resources/images/slider-4.jpg" data-fancybox="images"
								data-caption="Caption for this image"><img
								src="<%=request.getContextPath()%>/resources/images/slider-4.jpg"
								alt="Image placeholder" class="img-fluid"></a>
						</div>
						<div class="slider-item">
							<a href="/resources/images/slider-5.jpg" data-fancybox="images"
								data-caption="Caption for this image"><img
								src="<%=request.getContextPath()%>/resources/images/slider-5.jpg"
								alt="Image placeholder" class="img-fluid"></a>
						</div>
						<div class="slider-item">
							<a href="/resources/images/slider-6.jpg" data-fancybox="images"
								data-caption="Caption for this image"><img
								src="<%=request.getContextPath()%>/resources/images/slider-6.jpg"
								alt="Image placeholder" class="img-fluid"></a>
						</div>
						<div class="slider-item">
							<a href="/resources/images/slider-7.jpg" data-fancybox="images"
								data-caption="Caption for this image"><img
								src="<%=request.getContextPath()%>/resources/images/slider-7.jpg"
								alt="Image placeholder" class="img-fluid"></a>
						</div>
					</div>
					<!-- END slider -->
				</div>

			</div>
		</div>
	</section>
	<!-- END section -->

	<section class="section bg-image overlay"
		style="background-image: url('resources/images/hero_3.jpg');">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-md-7">
					<h2 class="heading text-white" data-aos="fade">Our Restaurant
						Menu</h2>
					<p class="text-white" data-aos="fade" data-aos-delay="100">Far
						far away, behind the word mountains, far from the countries
						Vokalia and Consonantia, there live the blind texts. Separated
						they live in Bookmarksgrove right at the coast of the Semantics, a
						large language ocean.</p>
				</div>
			</div>
			<div class="food-menu-tabs" data-aos="fade">
				<ul class="nav nav-tabs mb-5" id="myTab" role="tablist">
					<li class="nav-item"><a
						class="nav-link active letter-spacing-2" id="mains-tab"
						data-toggle="tab" href="#mains" role="tab" aria-controls="mains"
						aria-selected="true">Mains</a></li>
					<li class="nav-item"><a class="nav-link letter-spacing-2"
						id="desserts-tab" data-toggle="tab" href="#desserts" role="tab"
						aria-controls="desserts" aria-selected="false">Desserts</a></li>
					<li class="nav-item"><a class="nav-link letter-spacing-2"
						id="drinks-tab" data-toggle="tab" href="#drinks" role="tab"
						aria-controls="drinks" aria-selected="false">Drinks</a></li>
				</ul>
				<div class="tab-content py-5" id="myTabContent">


					<div class="tab-pane fade show active text-left" id="mains"
						role="tabpanel" aria-labelledby="mains-tab">
						<div class="row">
							<div class="col-md-6">
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$20.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Murgh Tikka Masala</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$35.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Fish Moilee</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$15.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Safed Gosht</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$10.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">French Toast Combo</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$8.35</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Vegie Omelet</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$22.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Chorizo &amp; Egg Omelet</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
							</div>
						</div>


					</div>
					<!-- .tab-pane -->

					<div class="tab-pane fade text-left" id="desserts" role="tabpanel"
						aria-labelledby="desserts-tab">
						<div class="row">
							<div class="col-md-6">
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$11.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Banana Split</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$72.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Sticky Toffee Pudding</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$26.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Pecan</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$42.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Apple Strudel</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$7.35</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Pancakes</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$22.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Ice Cream Sundae</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
							</div>
						</div>
					</div>
					<!-- .tab-pane -->
					<div class="tab-pane fade text-left" id="drinks" role="tabpanel"
						aria-labelledby="drinks-tab">
						<div class="row">
							<div class="col-md-6">
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$32.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Spring Water</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$14.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Coke, Diet Coke, Coke Zero</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$93.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Orange Fanta</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$18.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Lemonade, Lemon Squash</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$38.35</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Sparkling Mineral Water</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
								<div class="food-menu mb-5">
									<span class="d-block text-primary h4 mb-3">$69.00</span>
									<h3 class="text-white">
										<a href="#" class="text-white">Lemon, Lime &amp; Bitters</a>
									</h3>
									<p class="text-white text-opacity-7">Far far away, behind
										the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.</p>
								</div>
							</div>
						</div>
					</div>
					<!-- .tab-pane -->
				</div>
			</div>
		</div>
	</section>

	<!-- END section -->
	<section class="section testimonial-section">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-md-7">
					<h2 class="heading" data-aos="fade-up">People Says</h2>
				</div>
			</div>
			<div class="row">
				<div class="js-carousel-2 owl-carousel mb-5" data-aos="fade-up"
					data-aos-delay="200">

					<div class="testimonial text-center slider-item">
						<div class="author-image mb-3">
							<img
								src="<%=request.getContextPath()%>/resources/images/person_1.jpg"
								alt="Image placeholder" class="rounded-circle mx-auto">
						</div>
						<blockquote>

							<p>&ldquo;A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.&rdquo;</p>
						</blockquote>
						<p>
							<em>&mdash; Jean Smith</em>
						</p>
					</div>

					<div class="testimonial text-center slider-item">
						<div class="author-image mb-3">
							<img
								src="<%=request.getContextPath()%>/resources/images/person_2.jpg"
								alt="Image placeholder" class="rounded-circle mx-auto">
						</div>
						<blockquote>
							<p>&ldquo;Even the all-powerful Pointing has no control about
								the blind texts it is an almost unorthographic life One day
								however a small line of blind text by the name of Lorem Ipsum
								decided to leave for the far World of Grammar.&rdquo;</p>
						</blockquote>
						<p>
							<em>&mdash; John Doe</em>
						</p>
					</div>

					<div class="testimonial text-center slider-item">
						<div class="author-image mb-3">
							<img
								src="<%=request.getContextPath()%>/resources/images/person_3.jpg"
								alt="Image placeholder" class="rounded-circle mx-auto">
						</div>
						<blockquote>

							<p>&ldquo;When she reached the first hills of the Italic
								Mountains, she had a last view back on the skyline of her
								hometown Bookmarksgrove, the headline of Alphabet Village and
								the subline of her own road, the Line Lane.&rdquo;</p>
						</blockquote>
						<p>
							<em>&mdash; John Doe</em>
						</p>
					</div>


					<div class="testimonial text-center slider-item">
						<div class="author-image mb-3">
							<img
								src="<%=request.getContextPath()%>/resources/images/person_1.jpg"
								alt="Image placeholder" class="rounded-circle mx-auto">
						</div>
						<blockquote>

							<p>&ldquo;A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.&rdquo;</p>
						</blockquote>
						<p>
							<em>&mdash; Jean Smith</em>
						</p>
					</div>

					<div class="testimonial text-center slider-item">
						<div class="author-image mb-3">
							<img
								src="<%=request.getContextPath()%>/resources/images/person_2.jpg"
								alt="Image placeholder" class="rounded-circle mx-auto">
						</div>
						<blockquote>
							<p>&ldquo;Even the all-powerful Pointing has no control about
								the blind texts it is an almost unorthographic life One day
								however a small line of blind text by the name of Lorem Ipsum
								decided to leave for the far World of Grammar.&rdquo;</p>
						</blockquote>
						<p>
							<em>&mdash; John Doe</em>
						</p>
					</div>

					<div class="testimonial text-center slider-item">
						<div class="author-image mb-3">
							<img
								src="<%=request.getContextPath()%>/resources/images/person_3.jpg"
								alt="Image placeholder" class="rounded-circle mx-auto">
						</div>
						<blockquote>

							<p>&ldquo;When she reached the first hills of the Italic
								Mountains, she had a last view back on the skyline of her
								hometown Bookmarksgrove, the headline of Alphabet Village and
								the subline of her own road, the Line Lane.&rdquo;</p>
						</blockquote>
						<p>
							<em>&mdash; John Doe</em>
						</p>
					</div>

				</div>
				<!-- END slider -->
			</div>

		</div>
	</section>


	<section class="section blog-post-entry bg-light">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-md-7">
					<h2 class="heading" data-aos="fade-up">Events</h2>
					<p data-aos="fade-up">Far far away, behind the word mountains,
						far from the countries Vokalia and Consonantia, there live the
						blind texts. Separated they live in Bookmarksgrove right at the
						coast of the Semantics, a large language ocean.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-6 col-12 post"
					data-aos="fade-up" data-aos-delay="100">

					<div class="media media-custom d-block mb-4 h-100">
						<a href="#" class="mb-4 d-block"><<img
							src="<%=request.getContextPath()%>/resources/images/img_1.jpg"
							alt="Image placeholder" class="img-fluid"></a>
						<div class="media-body">
							<span class="meta-post">February 26, 2018</span>
							<h2 class="mt-0 mb-3">
								<a href="#">Travel Hacks to Make Your Flight More
									Comfortable</a>
							</h2>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>

				</div>
				<div class="col-lg-4 col-md-6 col-sm-6 col-12 post"
					data-aos="fade-up" data-aos-delay="200">
					<div class="media media-custom d-block mb-4 h-100">
						<a href="#" class="mb-4 d-block"><img
							src="<%=request.getContextPath()%>/resources/images/img_2.jpg"
							alt="Image placeholder" class="img-fluid"></a>
						<div class="media-body">
							<span class="meta-post">February 26, 2018</span>
							<h2 class="mt-0 mb-3">
								<a href="#">5 Job Types That Aallow You To Earn As You
									Travel The World</a>
							</h2>
							<p>Separated they live in Bookmarksgrove right at the coast
								of the Semantics, a large language ocean.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6 col-12 post"
					data-aos="fade-up" data-aos-delay="300">
					<div class="media media-custom d-block mb-4 h-100">
						<a href="#" class="mb-4 d-block"><img
							src="<%=request.getContextPath()%>/resources/images/img_3.jpg"
							alt="Image placeholder" class="img-fluid"></a>
						<div class="media-body">
							<span class="meta-post">February 26, 2018</span>
							<h2 class="mt-0 mb-3">
								<a href="#">30 Great Ideas On Gifts For Travelers</a>
							</h2>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. t is a paradisematic
								country, in which roasted parts of sentences.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="section bg-image overlay"
		style="background-image: url('resources/images/hero_4.jpg');">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-12 col-md-6 text-center mb-4 mb-md-0 text-md-left"
					data-aos="fade-up">
					<h2 class="text-white font-weight-bold">A Best Place To Stay.
						Reserve Now!</h2>
				</div>
				<div class="col-12 col-md-6 text-center text-md-right"
					data-aos="fade-up" data-aos-delay="200">
					<a href="reservation_user"
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
					<p style="font-size: 16px">

						<b>HỆ THỐNG CỬA HÀNG</b> <br />
					</p>
					</a>

					<p style="font-size: 14px">

						<b>SHOWROOM HCM</b> <br />- Địa chỉ: 78-80-82 Hoàng Hoa Thám,
						Phường 12, Quận Tân Bình.<br />- Thời gian làm việc: 08:30 –
						21:30 | T2 – CN.<br /> <b>SHOWROOM HN </b><br />- Địa chỉ : 37
						Ngõ 121 Thái Hà, Phường Trung Liệt, Quận Đống Đa.<br />- Thời
						gian làm việc: 08:30 – 20:30 | T2 – CN.

					</p>
					<p>
						<span class="d-block"><span
							class="ion-ios-telephone h5 mr-3 text-primary"></span>Phone:</span> <span>
							(+1) 435 3533</span>
					</p>
					<p>
						<span class="d-block"><span
							class="ion-ios-email h5 mr-3 text-primary"></span>Email:</span> <span>
							mushtaqshop@gmail.com</span>
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
				<p class="col-md-6 text-left"></p>

				<p class="col-md-5 text-center social">
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

	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('myImg');
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		img.onclick = function() {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}
	</script>

</body>
</html>