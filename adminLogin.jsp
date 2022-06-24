<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>

	<%@include file="Navbar.jsp"%>
	
	
							

	<main style="padding-bottom: 80px;">
		<div class="container ">
			<div class="row">
				<div class="col-md-6 offset-md-3  mt-3">
					<div class="card ">
						<div class="card-header text-center primary-background text-white">
							<h4>Admin login</h4>
							<p style="font-size: 20px;">
								For Admin Login only 
							</p>
						</div>
						<div class="card-body">
						
						
							<%
									String adminLog=(String)session.getAttribute("Logout-admin");
									if(adminLog!=null){
							%>

							<div class="alert alert-success text-center" role="alert">
								<%=adminLog %>
							</div>

							<%
									session.removeAttribute("Logout-admin");
									}
							%>
							
							
							
							
							<%
									String adminError=(String)session.getAttribute("Admin-login-error");
									if(adminError!=null){
							%>

							<div class="alert alert-danger text-center" role="alert">
								<%=adminError %>
							</div>

							<%
									session.removeAttribute("Admin-login-error");
									}
							%>
							
						
						
						
							<form method="post" action="AdminServlet">
								<div class="form-group">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="Enter name" required>
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
								<button type="reset" class="btn btn-outline-danger">Clear</button>
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

					<p>© 2021 Copyright: Himanshu Shaw </p>
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