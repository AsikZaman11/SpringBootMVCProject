package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminGeneratePasswordService {
@Autowired
AdminGeneratePasswordRepo agpr;

public void addAdminGeneratePassword(AdminGeneratePassword agp) {
 agpr.save(agp);	
}
public void updteAdminGeneratePassword(AdminGeneratePassword agp) {
	 agpr.save(agp);	
	}
public void deleteAdminGeneratePassword(AdminGeneratePassword agp) {
	 agpr.delete(agp);	
	}
public List<AdminGeneratePassword> allAdminGeneratePassword(){
	return agpr.findAll();
}
public AdminGeneratePassword getIdAdminGeneratePassword(int id) {
	return agpr.findById(id).get();
}
}
