package com.job.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.job.DAO.employeeDAO;
import com.job.entities.employee;
import com.job.helper.db.connect.ConnectionProvide;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		//getting connection from database
		employeeDAO emDAO=new employeeDAO(ConnectionProvide.getConnection());
		employee emp=emDAO.login_user(email, password);
		
		if(emp!=null) {
			//out.println(email);
			//out.print(password);
			HttpSession session=request.getSession();
			session.setAttribute("User-login",emp);
			response.sendRedirect("Employee_Profile.jsp");
			
			
			
		}
		else {
			//out.print("User not found or Error");
			HttpSession session=request.getSession();
			session.setAttribute("error-login","Wrong Credentials . Please fill correctly!");
			response.sendRedirect("signin.jsp");
		}
	}

}
