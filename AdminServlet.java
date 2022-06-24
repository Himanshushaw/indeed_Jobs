package com.job.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		/*out.println(name);
		out.println(password);*/
		
		
		
		if(name.equals("admin") && password.equals("himanshu")) {
			HttpSession session=request.getSession();
			session.setAttribute("Admin_login", "Hey Admin , Welcome Again!");
			response.sendRedirect("adminPost.jsp");
			
		}else {
			//out.print("Error , not correct");
			HttpSession session=request.getSession();
			session.setAttribute("Admin-login-error", "Hey Admin , Please input correct crendential!");
			response.sendRedirect("adminLogin.jsp");
		}
		
		
	}

}
