<%@page import="com.	job.entities.Post"%>
<%@page import="com.job.helper.db.connect.ConnectionProvide"%>
<%@page import="com.job.DAO.Post_Jobsdao"%>
<%@page import="com.job.entities.employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>








    		   <%
				employee msg=(employee)session.getAttribute("User-login");
				if(msg==null){
					session.setAttribute("redirect-msg", "Please Login to view Profile");
					response.sendRedirect("signin.jsp");
				}	
				
			%>
    

<!DOCTYPE html>
<html>
<head>
<title>Employee Profile || Logged In</title>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>indeed jobs || Job Portal</title>
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
		<!-- Navbar starts here -->
		
		<% employee log_msg=(employee)session.getAttribute("User-login"); %>
	
		
						<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand " href="index.jsp"><h3 class="text-success">
				<span class="fa fa-spinner text-primary fa-1x fa-spin"></span>
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
						<span class="fa fa-id-card-o" ></span>
									Home
								</p> <span class="sr-only">(current)</span></a></li>
						<li class="nav-item active"><a class="nav-link" href="Employee_Profile.jsp"><p>
						<span class="fa fa-user-secret"></span>
									My Profile
								</p></a></li>
						<li class="nav-item active"><a class="nav-link" href="#"><p>
						<span class="fa fa-institution"></span>
									Salaries
								</p></a></li>
							<%
			
				if(log_msg!=null){
			%>
				
								
						<li class="nav-item active"><a class="nav-link" href="#"><p>
						<span class="fa fa-user-secret"></span>
									<%=log_msg.getName() %>
								</p></a></li>	
					<%} %>			
										
						<li class="nav-item active"><a class="nav-link" href="LogoutServlet"><p>
						<span class="fa fa-power-off"></span>
									Logout 
								</p></a></li>
						<li class="nav-item active"><a class="nav-link" href="Contact.jsp"><p>
						<span class="	fa fa-volume-control-phone"></span>
									Contact
								</p></a></li>

					</ul>
					
				</div>
			</div>
		</nav>
	</div>
	
	


		<!-- Navbar ends here -->
		
		<!-- fetching Job post by id and calling function getPostBy Id -->
		
			<%
				int postID=Integer.parseInt(request.getParameter("Pid"));
			
				Post_Jobsdao postjobsdao=new Post_Jobsdao(ConnectionProvide.getConnection());
					Post pst_jobs=postjobsdao.getSinglePostById(postID);
						
			%>
		
		<!-- main body starts here -->
		
		
		
		
		
		
		
		
		
		
		<div class="container mt-5">
			<div class="row">
			
			<!-- first part for Jobs post starts here -->
			<div class="col-md-6">
				<div class="card">
					<div class="card">
						<div class="card-header text-center">
							<h5 class="text-success">Welcome <%=log_msg.getName() %></h5>
							<p>Carefully read the below details before applying</p>
						</div>
						<div class="card-body">
							<h4><%=pst_jobs.getDesignation() %></h4>
							<p><%=pst_jobs.getPid()%></p>
							<p><%=pst_jobs.getCompany() %></p>
							<p><%=pst_jobs.getSkills() %></p>
							<p><%=pst_jobs.getExperience() %></p>
							<p><%=pst_jobs.getDescription_of_jobProfile() %></p>
							<p><%=pst_jobs.getSalary() %></p>
							<p><%=pst_jobs.getDate() %></p>
						</div>
						<div class="card-footer ">
							<a href="Employee_Profile.jsp"  class="btn btn-outline-primary">Back</a>
							<a href="Contact.jsp"  class="btn btn-outline-info">Report this Job</a>
						</div>
					</div>
				</div>
			</div>
			<!-- first part for Jobs post ends here -->
			
			
			<!-- second part for form starts here -->
			
			<div class="col-md-6 ">
				<form method="post" action="ApplyFormServlet">
				<p class="mb-2 text-muted ">Take a break and Fill the form correctly !</p>
				<div class="form-group">
				    <label class="text-muted" for="resume">Upload Resume</label>
				    <input type="file" class="form-control-file" name="resume" id="resume" required>
				  </div>
				<div class="form-group">
				    <input type="text" class="form-control" id="fullname" name="fullname" required placeholder="Your Name">
				  </div>
				  <div class="form-group">
				    <input type="email" class="form-control" id="email" name="email" required aria-describedby="emailHelp" placeholder="Your Email">
				  </div>
				   <div class="form-group">
				    <input type="text" class="form-control" id="college" name="college" required placeholder="Your College">
				  </div>
				  <div class="form-group">
				    <input type="text" class="form-control" id="skills" name="skills" required placeholder="Your skills">
				  </div>
				  <div class="form-group">
				    <input type="number" class="form-control" id="contact" name="contact_number" required placeholder="Your Contact number">
				  </div>
				   <div class="form-group">

					    <input type="text" class="form-control" id="address" name="address" required placeholder="Your Full Adress">
					  </div>
					  <div class="form-row">
					    <div class="form-group col-md-6">
					   
					      <input type="text" class="form-control" id="inputCity" name="city" required placeholder="city">
					    </div>
					    <div class="form-group col-md-4">
					      <select id="inputState" name="state" required class="form-control">
					        <option selected disabled >Choose...</option>
					        <option>Delhi</option>
					        <option>UP</option>
					        <option>West Bengal</option>
					        <option>MP</option>
					        <option>Rajasthan</option>
					        <option>Bihar</option>
					        <option>UttaraKhand</option>
					         <option>Others</option>
			
					      </select>
					    </div>
					    <div class="form-group col-md-2">
					      <input type="text" class="form-control" name="Zip" required id="inputZip" placeholder="Zip">
					    </div>
					  </div>
				  
				   
				  <button type="submit" class="btn btn-outline-success ">Submit</button>
				  <button type="reset" class="btn btn-outline-danger  ">Clear All</button>
				</form>
			</div>
			<!-- second part for form ends here -->
			
			
			</div>
		</div>


			<div class="container">
				
				<!-- footer -->
			<footer class=" text-muted text-center " id="">
				<div class="text-center pt-5">

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




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- JavaScript -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
</body>
</html>