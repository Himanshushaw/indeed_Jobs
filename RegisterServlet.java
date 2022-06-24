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


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public RegisterServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/hmtl");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String education=request.getParameter("education");
		String number= request.getParameter("number");
		String check=request.getParameter("check");
		
		/*out.println(name);
		out.println(password);
		out.println(email);
		out.println(address);
		out.println(education);
		out.println(number);
		out.println(check);*/
		
		employee employ=new employee();
		employ.setName(name);
		employ.setPassword(password);
		employ.setEmail(email);
		employ.setAddress(address);
		employ.setEducation(education);
		employ.setNumber(number);
		
		employeeDAO dao	=new employeeDAO(ConnectionProvide.getConnection());
		if(dao.saveEmp(employ)==true) {
			
			HttpSession session=request.getSession();
			session.setAttribute("regis_success","Registered Successfully !!");
			response.sendRedirect("signup.jsp");
			
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("error_reg","Error in registration,Please try again !!");
			response.sendRedirect("signup.jsp");
		}
			
			
			
			
			

			 
		
		
	}

}
