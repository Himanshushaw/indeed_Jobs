package com.job.entities;

import java.sql.*;

public class Post {
	private int pid;
	private String designation;
	private String experience;
	private String company;
	private String skills;
	private String description_of_jobProfile;
	private Timestamp date;
	private String salary;
	private int Cat_Id;
	
	
	public Post(int pid, String designation, String experience, String company, String skills,
			String description_of_jobProfile, Timestamp date, String salary, int Cat_Id) {
		super();
		this.pid = pid;
		this.designation = designation;
		this.experience = experience;
		this.company = company;
		this.skills = skills;
		this.description_of_jobProfile = description_of_jobProfile;
		this.date = date;
		this.salary = salary;
		Cat_Id = Cat_Id;
	}


	public Post() {
		super();
	}


	public Post(String designation, String experience, String company, String skills, String description_of_jobProfile,
			Timestamp date, String salary, int Cat_Id) {
		super();
		this.designation = designation;
		this.experience = experience;
		this.company = company;
		this.skills = skills;
		this.description_of_jobProfile = description_of_jobProfile;
		this.date = date;
		this.salary = salary;
		Cat_Id = Cat_Id;
	}


	public int getPid() {
		return pid;
	}


	public void setPid(int pid) {
		this.pid = pid;
	}


	public String getDesignation() {
		return designation;
	}


	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public String getExperience() {
		return experience;
	}


	public void setExperience(String experience) {
		this.experience = experience;
	}


	public String getCompany() {
		return company;
	}


	public void setCompany(String company) {
		this.company = company;
	}


	public String getSkills() {
		return skills;
	}


	public void setSkills(String skills) {
		this.skills = skills;
	}


	public String getDescription_of_jobProfile() {
		return description_of_jobProfile;
	}


	public void setDescription_of_jobProfile(String description_of_jobProfile) {
		this.description_of_jobProfile = description_of_jobProfile;
	}


	public Timestamp getDate() {
		return date;
	}


	public void setDate(Timestamp date) {
		this.date = date;
	}


	public String getSalary() {
		return salary;
	}


	public void setSalary(String salary) {
		this.salary = salary;
	}


	public int getCat_Id() {
		return Cat_Id;
	}


	public void setCat_Id(int cat_Id) {
		Cat_Id = cat_Id;
	}
	
	
	

}
