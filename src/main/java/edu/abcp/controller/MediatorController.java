package edu.abcp.controller;

//import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/")
public class MediatorController {

	@RequestMapping("/index")
	public String getHomePage(ModelMap model) {
		//model.addAttribute("authname", SecurityContextHolder.getContext().getAuthentication().getName());
		model.addAttribute("hi","John");
		return "welcome";
	}
}