<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>User SignUp</title>
</head>
<body>

	<%@include file="Navbar.jsp"%>
	<main style="padding-bottom: 80px;">
	<div class="container " >
		<div class="row">
			<div class="col-md-6 offset-md-3  mt-3">
				<div class="card ">
					<div class="card-header text-center primary-background text-white">
						<h4>Signup || Register here</h4>
						<p>Kindly fill correct details.</p>
						
						<%
							String success=(String)session.getAttribute("regis_success");	
							if(success!=null){
								
								%>
									<div class="alert alert-success" role="alert">
									  <%=success%>
									</div>
								
						<% 		
								session.removeAttribute("regis_success");
							}
							
							%>
							
							
							
							
							<% 
							
							String error=(String)session.getAttribute("error_reg");	
							if(error!=null){
						
						%>
						<div class="alert alert-danger" role="alert">
									  <%=error%>
									</div>
							<%
							session.removeAttribute("error_reg");
							}
							
							%>		
						
						
					</div>
					<div class="card-body">
						<form action="RegisterServlet" method="post">
							<div class="form-group">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="Fullname" required>
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="password" name="password"
									placeholder=" Create password" required>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="Email" required>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="address" name="address"
									placeholder="Address" required>
							</div>
							<div class="form-group">
								<select class="form-control" id="education " name="education" >
									<option selected>Higher Education</option>
									<option>BTech</option>
									<option>BCA</option>
									<option>MCA</option>
									<option>MTech</option>
									<option>Others</option>
								</select>
							</div>
							<div class="form-group">
								<input type="number" class="form-control" id="number" name="number"
									placeholder="Phone Number" required>
							</div>
							<div class="form-check">
									<input type="checkbox" class="form-check-input "
										id="check" name="check" required> <label class="check"
										for="check">I consent to <a href="#">the terms & conditions and Privacy Policies</a> of indeed_Jobs.</label>
								</div>
							<button type="submit" class="btn btn-outline-success">Submit</button>
							<button type="reset" class="btn btn-outline-success">Clear</button>
							<a href="signin.jsp" class="ml-4">Already have a account ? Login</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
	
		<div class="container">
				<!-- footer -->
			<footer class=" text-muted text-center ">
			 				 		<div class="text-center p-3">
			  					  
			   				<p >© 2021 Copyright: Himanshu Shaw and Team Techno Students  </p>
			   				<p class="text-danger"><b>Made with <span  style="color: #e25555; font-size:30px;" >&#9829; </span> in INDIA</b> </p>
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