package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class AdminGeneratePassword {
	
	@Id
	@GeneratedValue
	int id;
	String userMobile;
	String userPassword;
	public AdminGeneratePassword() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminGeneratePassword(int id, String userMobile, String userPassword) {
		super();
		this.id = id;
		this.userMobile = userMobile;
		this.userPassword = userPassword;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserMobile() {
		return userMobile;
	}
	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
}
