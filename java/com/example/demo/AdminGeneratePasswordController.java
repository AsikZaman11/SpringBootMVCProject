package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminGeneratePasswordController {

	@Autowired
	AdminGeneratePassword agp;
	
	@Autowired
	AdminGeneratePasswordService agps;
	
	@Autowired
	AdminGeneratePasswordRepo agpr;
	
	@RequestMapping("admingeneratepassword")
	public String adminGeneratePassword() {
		return "admingenratepassword";
	}
	@RequestMapping("admingeneratepasswordsave")
	public String adminGeneratePasswordSave(@ModelAttribute AdminGeneratePassword ag,Model m) {
		String msg = "Generate Complete";
		m.addAttribute("ms", msg);
		agps.addAdminGeneratePassword(ag);
		return "admingenratepassword";
	}
	
}
