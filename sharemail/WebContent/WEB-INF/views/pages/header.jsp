<!DOCTYPE html>
<html lang="en">
<head>


</head>
<body>

	<!-- Navbar & Carousel Start -->
	<div class="container-fluid position-relative p-0">
		<nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
			<!-- <a href="index.web?mm=index" class="navbar-brand p-0">
				<h1 class="m-0">
					<i class="fa fa-user-tie me-2"></i>Startup
				</h1>
			</a> -->
			<a href="index.web?mm=index" class="navbar-brand p-0"> <img
				src="<%=request.getContextPath()%>/resource/assets/img/logo.png"
				alt="Startup Logo" style="max-height: 45px;">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="fa fa-bars"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto py-0">
					<a href="index.web?mm=index"
						class="nav-item nav-link ${sessionScope.mm== 'index' ? 'active' : ' '}">Home</a>
					<a href="about.web?mm=about"
						class="nav-item nav-link ${sessionScope.mm== 'about' ? 'active' : ' '}">About</a>
					<a href="service.web?mm=service"
						class="nav-item nav-link ${sessionScope.mm== 'service' ? 'active' : ' '}">Services</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Pages</a>
						<div class="dropdown-menu m-0">
							<a href="feature.html" class="dropdown-item">Our features</a> <a
								href="team.html" class="dropdown-item">Team Members</a> <a
								href="testimonial.html" class="dropdown-item">Testimonial</a> <a
								href="quote.html" class="dropdown-item">Free Quote</a>
						</div>
					</div>
					<a href="contact.web?mm=contact"
						class="nav-item nav-link ${sessionScope.mm== 'contact' ? 'active' : ' '}">Contact</a>
				</div>
				<!-- <butaton type="button" class="btn text-primary ms-3"
					data-bs-toggle="modal" data-bs-target="#searchModal"> <i
					class="fa fa-search"></i></butaton>
				<a href="https://htmlcodex.com/downloading/?item=1858"
					class="btn btn-primary py-2 px-4 ms-3">Buy Pro Version</a> -->
			</div>
		</nav>

		<%-- <div id="header-carousel" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100"
						src="<%=request.getContextPath()%>/resource/assets/img/carousel-1.jpg"
						alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h5 class="text-white text-uppercase mb-3 animated slideInDown">Creative
								& Innovative</h5>
							<h1 class="display-1 text-white mb-md-4 animated zoomIn">Creative
								& Innovative Digital Solution</h1>
							<a href="quote.html"
								class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Free
								Quote</a> <a href=""
								class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">Contact
								Us</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="w-100"
						src="<%=request.getContextPath()%>/resource/assets/img/carousel-2.jpg"
						alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h5 class="text-white text-uppercase mb-3 animated slideInDown">Creative
								& Innovative</h5>
							<h1 class="display-1 text-white mb-md-4 animated zoomIn">Creative
								& Innovative Digital Solution</h1>
							<a href="quote.html"
								class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Free
								Quote</a> <a href=""
								class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">Contact
								Us</a>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#header-carousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#header-carousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div> --%>

	</div>
	<!-- Navbar & Carousel End -->

</body>
</html>
