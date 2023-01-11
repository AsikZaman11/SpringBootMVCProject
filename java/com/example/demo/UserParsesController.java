package com.example.demo;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class UserParsesController {
@Autowired
private UserParsesService ups;	
@Autowired
private UserParses up;
@Autowired
private UserParsesRepo upr;

@RequestMapping("/userparsesform")
public String UserParsesForm() {
	return "userparsesform";
}
@RequestMapping("/userparsessave")
public String UserParsesSave(@ModelAttribute UserParses up, Model m ) {
	String msg = "Parses Complete";
	m.addAttribute("ms", msg);
	ups.addUserParses(up);
	List<UserParses> st = ups.showAllUserParses();
	m.addAttribute("st", st);
	return "userparsesform";	
}

@RequestMapping("/updateuser")
public String UserParsesUpdate(@ModelAttribute UserParses up, Model m ) {
	
	List<UserParses> st = ups.showAllUserParses();
	
	m.addAttribute("st", st);
	int max = ups.getReve();
	m.addAttribute("max", max);
	
	return "index";	
}


@RequestMapping(value="/delete/{id}")
public String deleteStudent(@PathVariable("id") int id, Model model) {
	UserParses s= ups.UserParsesgetById(id);
	ups.deleteUserParses(s);
	model.addAttribute("st",  ups.showAllUserParses());
	return "index";
}

@RequestMapping(value="/updatef/{id}")
public String updatef(@PathVariable("id") int id, Model model) {
	UserParses s= ups.UserParsesgetById(id);
    model.addAttribute("s", s);
	return "updateuser";
}

@RequestMapping(value="/updateparses")
public String update(@ModelAttribute UserParses up, Model model) {
	String u = "Update Completed";
	ups.updateUserParses(up);
	model.addAttribute("st",  ups.showAllUserParses());
	model.addAttribute("msg",  u);
	return "index";
}



@RequestMapping("searchoption")
public String searchOption() {
	return "searchoption";
}
@RequestMapping("searchbyname")
public String searchByName() {
	return "searchbyname";
}


@RequestMapping("/searchname")
public String findByNmae(@RequestParam int name,Model m) {
	  m.addAttribute("st",upr.getUserByName(name));
	  String nam = "Search completed";
	  m.addAttribute("nam",nam);
	  return "searchbyname";
}
@RequestMapping("searchbyrevenue")
public String searchByRevenue() {
	return "revenue";
}
@RequestMapping("/searchrevenuersult")
public String findByRevenue(@RequestParam String date,Model m) {
	  String nam = "Collection of";
	  m.addAttribute("nam",nam);
	  m.addAttribute("st",upr.getUserByRevenue(date));
	  m.addAttribute("dat",date);
	  int rev = ups.getRevenue();
		m.addAttribute("rev", rev);
	  return "revenue";

}
}
