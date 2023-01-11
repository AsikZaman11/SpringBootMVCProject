package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Admin {

@Id
@GeneratedValue
int id;	
String name;
String email;
String mobileNo;
public Admin() {
	super();
	// TODO Auto-generated constructor stub
}
public Admin(int id, String name, String email, String mobileNo) {
	super();
	this.id = id;
	this.name = name;
	this.email = email;
	this.mobileNo = mobileNo;
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
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobileNo() {
	return mobileNo;
}
public void setMobileNo(String mobileNo) {
	this.mobileNo = mobileNo;
}

}
