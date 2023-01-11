package com.example.demo;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

@Autowired
private UserService us;
@Autowired
private User u;

@RequestMapping("/home")
public String home() {
	return "home";
}
@RequestMapping("/login")
public String login() {
	return "login";
}
@RequestMapping("/coursedetails")
public String coursedetails() {
	return "coursedetails";
}
@RequestMapping("/courseparsesform")
public String courseparsesform() {
	return "userparsesform";
}
@RequestMapping(value="/generatedpassword", method = RequestMethod.GET)
public String genPass() {
	return "generatedpassword";
}
@RequestMapping(value="/generatedpassword", method = RequestMethod.POST)
public String fullcourse(ModelMap model , @RequestParam String userName,@RequestParam String userEmail) {
	if(userName.equals("01911111111") && userEmail.equals("123")) {
	model.put("userName", userName);
	return "fullcourse";}
	model.put("errorMsg", "Please provide the correct userid and password");
	return "generatedpassword";
}

@RequestMapping(value="/login", method = RequestMethod.GET)
public String AdminPass() {
	return "login";
}
@RequestMapping(value="/login", method = RequestMethod.POST)
public String Adminlog(ModelMap model , @RequestParam String userName,@RequestParam String userEmail) {
	if(userName.equals("asik") && userEmail.equals("123")) {
	model.put("userName", userName);
	return "dashboard";}
	model.put("errorMsg", "Please provide the correct userid and password");
	return "login";
}

	

}
