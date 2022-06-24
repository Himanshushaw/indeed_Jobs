

<%@page import="com.job.entities.Post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.job.helper.db.connect.ConnectionProvide"%>
<%@page import="com.job.DAO.Post_Jobsdao"%>

	
		<div class="row">
		
<%  

	Post_Jobsdao pd=new Post_Jobsdao(ConnectionProvide.getConnection());
	int cid=Integer.parseInt( request.getParameter("cid"));
		
	ArrayList<Post> post=new ArrayList<Post>();
	if(cid==0){
	
	 post=pd.getAllPostofjobs();
	}else{
			post=pd.getPostofJobsBycatId(cid);
	}
	
	if(post.size()==0){
		out.println("<h4 class='py-3 display-3 text-center'>No Jobs available, Try after some time.</h4>");
	}
	
	
	for(Post p:post){
		%>
			
			
				<div class="col-md-6">
					<div class="card my-3 shadow-lg rounded">
					<div class="card-body ">
					<h4 class="text-muted"><%=p.getDesignation() %></h4>
					<p><%=p.getCompany() %></p>
					<p><%=p.getSkills() %></p>
					<p><%=p.getDescription_of_jobProfile() %></p>
					<p><%=p.getDate() %></p>
					<a  href="applyJobs.jsp?Pid=<%=p.getPid() %>" type="submit" class="btn btn-outline-primary btn-block btn-sm badge-pill">Read & Apply</a>
					</div>
					</div>
				</div>
			
		
		
		
		<%
	}
			%>
			
			
			
			
			</div>