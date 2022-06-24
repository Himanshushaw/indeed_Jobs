package com.job.DAO;
import java.sql.*;

import com.job.entities.employee;

public class employeeDAO {
	//creating Connection object con
	private Connection con;
	
	public employeeDAO(Connection con) {
		this.con=con;
	}
	
	
	
	//saving data for registration
	
	public boolean saveEmp(employee emp) {
		boolean f=false;
		
		try {
			String sql="insert into emp_registration(name,password,email,address,education,number) values(?,?,?,?,?,?) ";
			PreparedStatement pstmt=this.con.prepareStatement(sql);
			pstmt.setString(1, emp.getName());
			pstmt.setString(2, emp.getPassword());
			pstmt.setString(3, emp.getEmail());
			pstmt.setString(4, emp.getAddress());
			pstmt.setString(5, emp.getEducation());
			pstmt.setString(6, emp.getNumber());
			
			pstmt.executeUpdate();
			f=true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
	
	//login query 
	public employee login_user(String email,String password) {
		employee em=null;
		try {
			String sql="select * from emp_registration where email=? and password=?";
			PreparedStatement pstm=this.con.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, password);
			
			ResultSet set=pstm.executeQuery();
			
			if(set.next()) {
				//em=new employee(set.getInt(1), set.getString(2), set.getString(3), set.getString(4), set.getString(5), set.getString(6), set.getString(7));
			em=new employee();
			em.setId(set.getInt("id"));
			em.setName(set.getString("name"));
			em.setPassword(set.getString("password"));
			em.setEmail(set.getString("email"));
			em.setAddress(set.getString("address"));
			em.setEducation(set.getString("education"));
			em.setNumber(set.getString("number"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		return em;
	}
	
}
