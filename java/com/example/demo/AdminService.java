package com.example.demo;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

	@Autowired
	private AdminRepo ar;
	
	public void addAdmin(Admin ad) {
		ar.save(ad);
	}
	public void deleteAdmin(Admin ad) {
		ar.delete(ad);
	}
	public void updateAdmin(Admin ad) {
		ar.save(ad);
	}
	public List<Admin> allAdmin(){
		return ar.findAll();
	}
	public Admin getAdminById(int id) {
		return ar.findById(id).get();
	}
	
	public int rand() {
		Random r = new Random();
		int rand = r.nextInt(1000);
		return rand;
	}
}
