<%@page import="java.util.List"%>
<%@page import="com.job.entities.Category"%>
<%@page import="com.job.entities.Post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.job.helper.db.connect.ConnectionProvide"%>
<%@page import="com.job.DAO.Post_Jobsdao"%>
<%@page import="com.job.entities.employee"%>
<%@page import="org.apache.tomcat.util.descriptor.web.LoginConfig"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	employee msg = (employee) session.getAttribute("User-login");
if (msg == null) {
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="js/jquery.min.js"></script>
 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>


</head>
<body>
	<!-- Navbar starts here -->

	<%
		employee log_msg = (employee) session.getAttribute("User-login");
	%>


	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand " href="index.jsp"><h3
						class="text-success">
						<span class="fa fa-spinner text-primary fa-1x fa-spin"></span> <span
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
								</p> <span class="sr-only">(current)</span></a></li>
						<li class="nav-item active"><a class="nav-link" href="#"><p>
									<span class="fa fa-institution"></span> Salaries
								</p></a></li>
						<%
							if (log_msg != null) {
						%>


						<li class="nav-item active"><a class="nav-link" href="#"><p>
									<span class="fa fa-user-secret"></span>
									<%=log_msg.getName()%>
								</p></a></li>
						<%
							}
						%>

						<li class="nav-item active"><a class="nav-link"
							href="LogoutServlet"><p>
									<span class="fa fa-power-off"></span> Logout
								</p></a></li>
						<li class="nav-item active"><a class="nav-link"
							href="Contact.jsp"><p>
									<span class="	fa fa-volume-control-phone"></span> Contact
								</p></a></li>

					</ul>

				</div>
			</div>
		</nav>
	</div>




	<!-- Navbar ends here -->



	<!-- main body  starts here-->
	<main>
		<div class="container ">
			<!-- first column for showing categories -->
			<div class="row">
				<!-- CATEGORIES-->

				<div class="col-md-4 mt-4">
					<div class="list-group">
						<a href="#" onclick="getPosts(0)" class="list-group-item list-group-item-action active">
							All Software Developer/Application Engineer </a>

						<%
							Post_Jobsdao pdao = new Post_Jobsdao(ConnectionProvide.getConnection());
						ArrayList<Category> list = pdao.getAllCategories_ofjob();
						for (Category cc : list) {
						%>

						<a href="#"   onclick="getPosts(<%=cc.getCid() %>)"   class="list-group-item list-group-item-action"><%=cc.getType_of_job()%></a>

						<%
							}
						%>
						<!-- fetching category from db -->

					</div>
				</div>


				<!-- Post-->

				<div class="col-md-8">

					<div class="container  text-center" id="loader">
						<i class="fa fa-refresh fa-4x fa-spin"></i>
						<h3 class="mt-2">Loading...</h3>
					</div>

					<div class="container  " id="post-container"></div>
				</div>


			</div>
		</div>
	</main>
			
				<!-- footer -->
			<footer class=" text-muted text-center ">
				<div class="text-center p-4">

					<p>© 2021 Copyright: Himanshu Shaw and Team Techno Students</p>
					<p class="text-danger">
						<b>Made with <span style="color: #e25555; font-size: 30px;">&#9829;
						</span> in INDIA
						</b>
					</p>
				</div>
			</footer>


			<!-- footer ends -->
				
	






	<!-- main body ends here -->












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

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>



	<!-- loading post -->

	<script>
	
			function getPosts(catId){
				
				$.ajax({
					url : "loadPost.jsp",
					data:{cid:catId},
					success : function(data, textStatus, jqXHR) {
						console.log(data);
						$("#loader").hide();
						$('#post-container').html(data);
					}
				})
				
			}
	
	
	
	
		$(document).ready(function() {

			getPosts(0)

		})
	</script>






</body>
</html>