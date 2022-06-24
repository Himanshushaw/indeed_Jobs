package com.job.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ApplyFormServlet")
public class ApplyFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ApplyFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		
		String resume=request.getParameter("resume");
		String fullname=request.getParameter("fullname");
		String email=request.getParameter("email");
		String college=request.getParameter("college");
		String skills=request.getParameter("skills");
		//String contact_number=request.getParameter("contact_number");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String Zip=request.getParameter("Zip");
		
		/*out.println(resume);
		out.println(fullname);
		out.println(email);
		out.println(college);
		out.println(skills);
		out.println(contact_number);
		out.println(address);
		out.println(city);
		out.println(state);
		out.println(Zip);*/
		
				if(resume!=null && fullname!=null) {
					HttpSession session=request.getSession();
					session.setAttribute("apply-success", "Successfully applied ! Your response has been send to the company");
					
					out.print("Successfully applied ! Your response has been send to the company");
					//response.sendRedirect("applyJobs.jsp");
				}

	}

}
