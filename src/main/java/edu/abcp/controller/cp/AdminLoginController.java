package edu.abcp.controller.cp;


import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.abcp.domain.AdminRegistration;
import edu.abcp.service.AdminLoginService;








/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminLoginController {
	
	private static final Logger logger = LoggerFactory.getLogger("controller");

	@Autowired
	private AdminLoginService adminloginService;
	
/*	@Autowired
	@Qualifier("service")
	private StateService stateService;*/
	
/*	@Autowired
	private ServletContext  servletContext;
*/
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "NewLoginAdmin";
	}
	
	
	/*@RequestMapping(value = "/rr", method = RequestMethod.GET)
	public String getAll(Model model) {
	//model.addAttribute("state", new State());
		//List<State> l= this.stateService.findAll_course();
	//model.addAttribute("statelist",l);
	
		//return "controlpanel/category";
		return "firstpage";
	
	}*/
	
	

	
	
	
	@RequestMapping(value = "/adregister", method = RequestMethod.GET)
	public String showUser(Model model) {
		model.addAttribute("adminregistration", new AdminRegistration());
		//model.addAttribute("listBank", this.bankService.findAll());
		//return "controlpanel/category";
		return "adminregistration";
	}



	

	
	
	@RequestMapping(value= "/addAdmin", method = RequestMethod.POST)
	public String add(@ModelAttribute AdminRegistration adminregistration,ModelMap model)
	
	{
		if(adminregistration.getPassword().equals(adminregistration.getConfirmpassword())){
			 String me="Registration successfull!!!!";
			 model.addAttribute("a",me);
			this.adminloginService.create(adminregistration);
           return "NewLoginAdmin";
		}
		
		 String mes="NOTE:Password and Confirm-Password doesn't match";
		 model.addAttribute("message",mes);
			return "adminregistration";
	
		
	}
	
	 
	
	
	@RequestMapping(value = "/adlogin", method = RequestMethod.GET)
	public String showLogin(Model model) {
		//model.addAttribute("AdminLogin", new AdminLogin());
		//model.addAttribute("listBank", this.bankService.findAll());
		//return "controlpanel/category";
		return "NewLoginAdmin";
	}
	
	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute AdminRegistration Login,Model model) {
		System.out.println("entering login");
		
	//model.addAttribute("user", new User());
		
		  boolean b=adminloginService.check(Login);
		  if(b==true){
			 // model.addAttribute("listuser",this.userService.findAll());
			// model.addAttribute("listuser",this.userService.findByemail());
			 model.addAttribute("listuser",this.adminloginService.findByemail(Login));

			  return "adminpage";
	      }
	      else{
	    	  
	    	 // System.out.println("else part");
	    	  model.addAttribute("msg","Please enter valid username or password");
	        return "redirect:/adlogin";
	      }

	 }
	
	
	@RequestMapping(value ="/adminlogout")  
	 public String logout(HttpServletRequest request,Model model,HttpServletResponse response)    
	 {    
	 System.out.println("inside controller");    
	     
	      HttpSession session = request.getSession();
	      session.removeAttribute("thought");
	      Authentication ob=SecurityContextHolder.getContext().getAuthentication();
	     if(ob!=null){
	    	 
	    	 new SecurityContextLogoutHandler().logout(request, response, ob);
	     }
	     
	      // session.invalidate();  
	     
	  // Code disables caching by browser. Hence the back browser button
	  // grayed out and could not causes the Page_Load event to fire 
	 
	      model.addAttribute("msg1", "You have successfully loged out");
	      return "NewLoginAdmin"; 
	 }

	
	/*@RequestMapping("/contactinfo")
	public String contactinfo() {

	    return "RegisteredUsers";
	}*/

}
