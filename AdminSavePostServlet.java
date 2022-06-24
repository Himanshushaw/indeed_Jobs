package com.job.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.job.DAO.Post_Jobsdao;
import com.job.entities.Post;
import com.job.helper.db.connect.ConnectionProvide;


@WebServlet("/AdminSavePostServlet")
public class AdminSavePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AdminSavePostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		doGet(request, response);
		response.setContentType("text/hmtl");
		PrintWriter out=response.getWriter();
		
		String designation=request.getParameter("designation");
		String experience=request.getParameter("experience");
		String company=request.getParameter("company");
		String skills=request.getParameter("skills");
		String description_of_jobProfile=request.getParameter("description_of_jobProfile");
		String salary=request.getParameter("salary");
		int cat_Id=Integer.parseInt(request.getParameter("cat_Id"));
		
	/*	out.println(designation);
		out.println(skills);
		out.println(experience);
		out.println(description_of_jobProfile);
		out.println(salary);
		out.println(cat_Id);*/
		
		Post p=new Post();
		p.setDesignation(designation);
		p.setExperience(experience);
		p.setCompany(company);
		p.setSkills(skills);
		p.setDescription_of_jobProfile(description_of_jobProfile);
		p.setSalary(salary);
		p.setCat_Id(cat_Id);
		
		
		
		
		Post_Jobsdao pdao=new Post_Jobsdao(ConnectionProvide.getConnection());
		if(pdao.saveJobsPostByadmin(p)) {
			//out.println("success");
			
			HttpSession session=request.getSession();
			session.setAttribute("saveAdminPost", "Your Post has been successfully added !");
			response.sendRedirect("adminPost.jsp");
			
		}else {
			//out.print("Error save");
			
			HttpSession session=request.getSession();
			session.setAttribute("ErroradminPost", "Oops ,Something went wrong while saving your post. Try again !");
			response.sendRedirect("adminPost.jsp");
			
		}
		
	}

}
