<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>indeed jobs || Job Portal</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>SignIn Page || User Login</title>
</head>
<body>
	<%@include file="Navbar.jsp"%>

	<main style="padding-bottom: 80px;">
		<div class="container ">
			<div class="row">
				<div class="col-md-6 offset-md-3  mt-3">
					<div class="card ">
						<div class="card-header text-center primary-background text-white">
							<h4>SignIn || Login</h4>
							<p style="font-size: 20px;">
								<b>Please input correct credentials</b>
							</p>

							<%
									String logout=(String)session.getAttribute("Logout-msg");
									if(logout!=null){
							%>

							<div class="alert alert-success text-center" role="alert">
								<%=logout %>
							</div>

							<%
									session.removeAttribute("Logout-msg");
									}
							%>
							
							
							<%
							
								String error_msg=(String)session.getAttribute("error-login");
									if(error_msg!=null){
							%>
									
									<div class="alert alert-danger text-center" role="alert">
										<%=error_msg %>
									</div>
							
							<%
									session.removeAttribute("error-login");
									}
							%>


						</div>
						<div class="card-body">
							<form method="post" action="LoginServlet">
								<div class="form-group">
									<input type="text" class="form-control" id="email" name="email"
										placeholder="Enter Email" required>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="password"
										name="password" placeholder="Enter Password" required>
								</div>
								<div class="form-check">
									<input type="checkbox" class="form-check-input" id="check">
									<label class="check" for="check">Remember me.</label>
								</div>
								<button type="submit" class="btn btn-outline-success">Submit</button>
								<button type="reset" class="btn btn-outline-success">Clear</button>
								<a href="signup.jsp" class="ml-4">Create new account</a>
							</form>
						</div>
					</div>
				</div>
			</div>

			

		</div>
	</main>
	
	<div class="container ">
		<!-- footer -->
			<footer class=" text-muted text-center ">
				<div class="text-center p-3">

					<p>© 2021 Copyright: Himanshu Shaw and Team Techno Students</p>
					<p class="text-danger">
						<b>Made with <span style="color: #e25555; font-size: 30px;">&#9829;
						</span> in INDIA
						</b>
					</p>
				</div>
			</footer>


			<!-- footer ends -->
		
	</div>




















	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>