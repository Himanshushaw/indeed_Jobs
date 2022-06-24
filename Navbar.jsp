<!DOCTYPE html>
<%@page import="com.job.entities.employee"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	

<script src="js/jquery.min.js"></script>
	

</head>
<body>
		<!-- Navigation  starts-->
		<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand " href="index.jsp"><h3 class="text-success">
				<span class="fa fa-spinner text-primary  fa-spin"></span>
				<span class="fa fa-leaf text-success"></span>
						<b>indeed_Jobs</b>
					</h3></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto p-2 ">
						
						<li class="nav-item active"><a class="nav-link" href="index.jsp"><p>
						<span class="fa fa-home"></span>
									Home
								</p></a></li>
						<li class="nav-item active"><a class="nav-link" href="Employee_Profile.jsp"><p>
						<span class="fa fa-user-secret"></span>
									My Profile
								</p></a></li>
						<li class="nav-item active"><a class="nav-link" href="#"><p>
						<span class="fa fa-institution"></span>
									Salaries
								</p></a></li>
								
																
								<%
									employee msg = (employee) session.getAttribute("User-login");
								if (msg != null) {
									
									
									%>
									
									<li class="nav-item active"><a class="nav-link" href="Employee_Profile.jsp"><p>
						<span class="fa fa-sign-in"></span>
									<%=msg.getName()%> |
								</p></a></li>
									
									
									
									<% 
									
								}
								else{
								%>
																
						<li class="nav-item active"><a class="nav-link" href="signin.jsp"><p>
						<span class="fa fa-sign-in"></span>
									Signin |
								</p></a></li>
						<li class="nav-item active"><a class="nav-link" href="signup.jsp"><p>
						<span class="	fa fa-address-book-o"></span>
									SignUp
								</p></a></li>
								
									
						<%
						
								}
						%>
								
								
						<li class="nav-item active"><a class="nav-link" href="Contact.jsp"><p>
						<span class="	fa fa-volume-control-phone"></span>
									Contact
								</p></a></li>
												
										<li class="nav-item active"><a class="nav-link" href="adminLogin.jsp"><p>
								<span class="fa fa-address-book-o"></span>
											Admin login
										</p></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>


	<!-- Navigation ends -->




</body>
</html>