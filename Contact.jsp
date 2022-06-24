<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
</head>
<body>

	<!-- Navigation -->
	
	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand " href="index.jsp"><h3
						class="text-success">
						<span class="fa fa-spinner text-primary  fa-spin"></span> <span
							class="fa fa-leaf text-success"></span> <b>indeed_Jobs</b>
					</h3></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto p-2 ">

						<li class="nav-item active"><a class="nav-link"
							href="index.jsp"><p>
									<span class="fa fa-home"></span> Home
								</p></a></li>
						<li class="nav-item active"><a class="nav-link"
							href="Employee_Profile.jsp"><p>
									<span class="fa fa-user-secret"></span> My Profile
								</p></a></li>


					</ul>
				</div>
			</div>
		</nav>
	</div>


	<!-- Navigation ends -->

	<h3 class="m-3 text-muted text-center">Welcome, contact us for
		any query , report or grievances.</h3>


	<%
		String contactSuccess = (String) session.getAttribute("contact_success");
	if (contactSuccess != null) {
	%>
	<div class="alert alert-success text-center" role="alert">
		<%=contactSuccess%>
	</div>


	<%
		session.removeAttribute("contact_success");
	}
	%>


	<!-- Contact section starts -->
	<section class="contact py-5" id="contact">
		<div class="container-lg py-4">
			<div class="row justify-content-center">
				<div class="col-lg-8 ">
					<div class="section-title text-center">
						<h3 class="fw-bold mb-4 ">Contact Us</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5">

					<!-- Contact items start-->
					<div class="contact-items d-flex mb-4">
						<div class="contact-icons fs-4  text-primary">
							<i class="fas fa-envelope"></i>
						</div>
						<div class="contact-info ms-3">
							<h3 class="fs-5">Email</h3>
							<p class="text-muted">contact@gmail.com</p>
						</div>
					</div>
					<div class="contact-items d-flex mb-4">
						<div class="contact-icons fs-4  text-primary">
							<i class="fas fa-phone"></i>
						</div>
						<div class="contact-info ms-3">
							<h3 class="fs-5">Phone</h3>
							<p class="text-muted">+91 889 934 2223</p>
						</div>
					</div>
					<div class="contact-items d-flex mb-4">
						<div class="contact-icons fs-4  text-primary">
							<i class="fas fa-map-marker-alt"></i>
						</div>
						<div class="contact-info ms-3">
							<h3 class="fs-5">Visit Office</h3>
							<p class="text-muted">Sector V , Kolkata</p>
							<p class="text-muted">WB,INDIA</p>
						</div>
					</div>


					<!--Contact items ends-->
				</div>
				<!-- form starts here -->
				<div class="col-md-7">
					<div class="contact-form">
						<form action="ContactServlet" method="post">
							<div class="row">
								<div class="col-lg-6 mb-4">
									<div class="form-group">
										<input type="text" placeholder="Your Name" name="name"
											required
											class="form-control form-control-lg fs-6 shadow-lg border-0 ">
									</div>
								</div>
								<div class="col-lg-6 mb-4">
									<div class="form-group">
										<input type="text" placeholder="Your Email" name="email"
											required
											class="form-control form-control-lg fs-6 shadow-lg border-0 ">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12 mb-4">
									<div class="form-group">
										<input type="text" placeholder="Subject" name="subject"
											required
											class="form-control form-control-lg fs-6 shadow-lg border-0 ">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12 mb-4">
									<div class="form-group">
										<textarea rows="5" placeholder="Your Message" name="message"
											required
											class="form-control form-control-lg fs-6 shadow-lg border-0 "></textarea>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12 ">
									<button type="submit" class="btn btn-danger px-3 "
										id="submit-contct">Send</button>
									<a href="index.jsp" class="btn btn-outline-danger px-3">Go
										to Home</a>

								</div>
							</div>

						</form>
					</div>
				</div>

			</div>
		</div>
	</section>


	<div class="container">

		<!-- footer -->
		<footer class=" text-muted text-center " id="">
			<div class="text-center pt-5">

				<p>© 2021 Copyright: Himanshu Shaw and Team Techno Students</p>
				<p class="text-danger">
					<b>Made with <span style="color: #e25555; font-size: 30px;">&#9829;
					</span> in INDIA
					</b>
				</p>
			</div>
		</footer>


		<!-- footer ends -->


		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
			crossorigin="anonymous"></script>


		<script type="text/javascript">
			$(document).ready(function() {
				//alert("loader");
			});
		</script>
</body>
</html>