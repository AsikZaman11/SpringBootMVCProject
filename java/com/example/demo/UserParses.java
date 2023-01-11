package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
@Component
@Entity
public class UserParses {
	
	@Id
	@GeneratedValue
	int id;
	String name;
	String mobile;
	String date;
	String courseCode;
	int quantity;
	int total;
	public UserParses() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserParses(int id, String name, String mobile, String date, String courseCode, int quantity, int total) {
		super();
		this.id = id;
		this.name = name;
		this.mobile = mobile;
		this.date = date;
		this.courseCode = courseCode;
		this.quantity = quantity;
		this.total = total;
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
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
}
