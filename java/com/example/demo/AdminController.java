package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

	@Autowired
	private AdminService as;
	
	@Autowired
	private Admin ad;
	
	@RequestMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	@RequestMapping("/profile")
	public String profile() {
		return "profile";
	}
	@RequestMapping("/cupon")
	public String cupon(Model m) {
		int b = as.rand();
		String a = "abc"+b;
		m.addAttribute("a", a);
		return "cupon";
	}
	
	@GetMapping("/cupongen")
	public String sum() {
		return "cupongenerated";
	}

	@GetMapping("/cuponbbbbbbbb")
	public String sump(@RequestParam String num1, int num2, Model m) {
		
		String str = num1;
		String[] part = str.split("(?<=\\D)(?=\\d)");
		int cp = Integer.parseInt(part[1]);
		String c ="Congratulation you get off TK "+cp+" by cupon"; 
		m.addAttribute("cupon", c);
		
		if(num2>2 && num2<4) {
			String tk1 = "Congratulation you get off TK 100 by Parses quantity";
			m.addAttribute("tk", tk1);
			int total1 = cp+100;
			String t="Total oof TK "+total1;
			m.addAttribute("tk2", t);
		}
		if(num2>3 && num2<10) {
			String taka = "Congratulation you get off tk 200 by Parses quantity";
			m.addAttribute("tk1", taka);
			int total2 = cp+200;
			String t2="Total of tk "+total2;
			m.addAttribute("tk2", t2);
		}
		return "cupongenerated";
	}
	
}
