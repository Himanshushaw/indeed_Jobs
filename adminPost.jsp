<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Post</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="js/jquery.min.js"></script>
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
									<span class="fa fa-id-card-o"></span> Home
								<li class="nav-item active"><a class="nav-link"
									href="Contact.jsp"><p>
											<span class="	fa fa-volume-control-phone"></span> Contact
										</p></a></li>
								<li class="nav-item active"><a class="nav-link"
									href="AdminLogout"><p>
											<span class="fa fa-sign-in"></span> Logout
										</p></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>


	<!-- Navigation ends -->




	<main style="padding-bottom: 80px;">
		<div class="container ">
			<div class="row">
				<div class="col-md-6 offset-md-3  mt-3">
					<div class="card ">
						<div class="card-header text-center primary-background text-white">
							<h4>Hello Admin !</h4>
							<p style="font-size: 20px;">Kindly fill jobs details here to
								post.</p>
								
								
								
							<%
									String saveAdmin=(String)session.getAttribute("saveAdminPost");
									if(saveAdmin!=null){
							%>

							<div class="alert alert-success text-center" role="alert">
								<%=saveAdmin %>
							</div>

							<%
									session.removeAttribute("saveAdminPost");
									}
							%>
							
							
							<%
									String ErrorAdmin=(String)session.getAttribute("ErroradminPost");
									if(ErrorAdmin!=null){
							%>

							<div class="alert alert-success text-center" role="alert">
								<%=ErrorAdmin %>
							</div>

							<%
									session.removeAttribute("ErroradminPost");
									}
							%>



						</div>
						<div class="card-body">
							<form method="post" action="AdminSavePostServlet">
								<div class="form-group">
									<input type="text" class="form-control" id="designation"
										name="designation" placeholder="Designation" required>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="experience"
										name="experience" placeholder="Experience" required>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="company"
										name="company" placeholder="Company" required>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="skills"
										name="skills" placeholder="Skills" required>
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										id="description_of_jobProfile"
										name="description_of_jobProfile"
										placeholder="Description of job" required>
								</div>
								<div class="form-group">
									 <input type="date"
										name="date" required placeholder="dd/mm/yyyy">
									

								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="salary"
										name="salary" placeholder="Salary" required>
								</div>
								<div class="form-group">

									<select class="form-control" id="cat_Id" name="cat_Id">
										<option selected disabled>Cat Id</option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
									</select>
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




</body>
</html>