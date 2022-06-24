package com.job.entities;

public class employee {
	private int id;
	private String name;
	private String password;
	private String email;
	private String address;
	private String education;
	private String number;
	
	public employee(int id, String name, String password, String email, String address, String education, String number
			) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.address = address;
		this.education = education;
		this.number = number;
	
	}
	public employee() {
		super();
	}
	public employee(String name, String password, String email, String address, String education, String number) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.address = address;
		this.education = education;
		this.number = number;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	
	
	
	
	
	
	
}
