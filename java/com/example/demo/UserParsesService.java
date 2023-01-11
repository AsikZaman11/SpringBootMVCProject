package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserParsesService {

	@Autowired
	private UserParsesRepo upr;
	
	@Autowired
	private UserParses up;
	
	public void addUserParses(UserParses up) {
		upr.save(up);
	}
	public void updateUserParses(UserParses up) {
		upr.save(up);
	}
	public void deleteUserParses(UserParses up) {
		upr.delete(up);
	}
	public List<UserParses> showAllUserParses(){
		return upr.findAll();
	}
	public UserParses UserParsesgetById(int id) {
		return upr.findById(id).get();
	}
	public int getReve(){
		return upr.getRev();
	}
	public int getRevenue(){
		return upr.getRevenu();
	}
}

