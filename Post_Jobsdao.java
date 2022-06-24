package com.job.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.job.entities.Category;
import com.job.entities.Post;
import com.job.entities.employee;




public class Post_Jobsdao {
	
	Connection con;
	
	public Post_Jobsdao(Connection con) {
		// TODO Auto-generated constructor stub
		this.con=con;
	}
	
	
	//function for fetching category of jobs from database
	
	public ArrayList<Category> getAllCategories_ofjob(){
		
		ArrayList<Category> list=new ArrayList<Category>();
		
		try {
			String  sql="select * from categoryjobs ";
			Statement st=con.createStatement();
			ResultSet set=st.executeQuery(sql);
			while(set.next()) {
				
				int cid=set.getInt("cid");
				String type_of_job=set.getString("type_of_job");
				String description=set.getString("description");
				
				Category ct=new Category(cid,type_of_job,description);
				list.add(ct);
			}
			
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	
		return list;
	}
	
	
	
	
	//function for saving job posted by ADMIN
	public boolean saveJobsPostByadmin(Post postjobs) {
		boolean f=false;
		
		try {
			String sql="insert into post_jobs(designation,experience,company,skills,description_of_jobProfile,salary,Cat_Id) values(?,?,?,?,?,?,?) ";
			PreparedStatement pstmt=this.con.prepareStatement(sql);
			pstmt.setString(1, postjobs.getDesignation());
			pstmt.setString(2, postjobs.getExperience());
			pstmt.setString(3, postjobs.getCompany());
			pstmt.setString(4, postjobs.getSkills());
			pstmt.setString(5, postjobs.getDescription_of_jobProfile());
			pstmt.setString(6, postjobs.getSalary());
			pstmt.setInt(7, postjobs.getCat_Id());
			
			
			pstmt.executeUpdate();
			f=true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

	
	
	
	
	//function to fetch all post data for jobs
	
	public ArrayList<Post> getAllPostofjobs(){
		
		ArrayList<Post> list=new ArrayList<Post>();
		
		try {
			String sql="select * from post_jobs";
			//establish connection
			PreparedStatement pstmt=this.con.prepareStatement(sql);
			ResultSet set=pstmt.executeQuery();
			while(set.next()) {
				int pid=set.getInt("pid");
				String designation=set.getString("designation");
				String experience=set.getString("experience");
				String company=set.getString("company");
				String skills=set.getString("skills");
				String description_of_jobProfile=set.getString("description_of_jobProfile");
				Timestamp date=set.getTimestamp("date");
				String salary=set.getString("salary");
				int Cat_Id=set.getInt("Cat_Id");
				Post ps=new Post(pid, designation, experience, company, skills, description_of_jobProfile, date, salary, Cat_Id);
				list.add(ps);
			}
		}
		catch (Exception e) {
		e.printStackTrace();
		}
		
		
		
		
		return list;
		
		
	}
	
	
		public ArrayList<Post> getPostofJobsBycatId(int cat_Id){
			ArrayList<Post> list=new ArrayList<Post>();
			
			try {
				String sql="select * from post_jobs where cat_Id=?";
				PreparedStatement pstmt=this.con.prepareStatement(sql);
				pstmt.setInt(1, cat_Id);
				ResultSet set=pstmt.executeQuery();
				while(set.next()) {
					int pid=set.getInt("pid");
					String designation=set.getString("designation");
					String experience=set.getString("experience");
					String company=set.getString("company");
					String skills=set.getString("skills");
					String description_of_jobProfile=set.getString("description_of_jobProfile");
					Timestamp date=set.getTimestamp("date");
					String salary=set.getString("salary");
					int Cat_Id=set.getInt("Cat_Id");
					Post ps=new Post(pid, designation, experience, company, skills, description_of_jobProfile, date, salary, Cat_Id);
					list.add(ps);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		return list;	
		}
	
		public Post getSinglePostById(int postID){
			
			Post post=null;
			
			try {
				String sql="select * from post_jobs where pid=?";
				PreparedStatement pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, postID);
				ResultSet set=pstmt.executeQuery();
				while(set.next()) {
					int pid=set.getInt("pid");
					String designation=set.getString("designation");
					String experience=set.getString("experience");
					String company=set.getString("company");
					String skills=set.getString("skills");
					String description_of_jobProfile=set.getString("description_of_jobProfile");
					Timestamp date=set.getTimestamp("date");
					String salary=set.getString("salary");
					int Cat_Id=set.getInt("Cat_Id");
					Post ps=new Post(pid,designation, experience, company, skills, description_of_jobProfile, date, salary, Cat_Id);
					return ps;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return post;
		}
		
	
	
}
