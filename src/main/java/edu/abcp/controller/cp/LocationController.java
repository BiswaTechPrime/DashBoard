package edu.abcp.controller.cp;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.abcp.domain.City;
import edu.abcp.domain.State;
import edu.abcp.service.Locationservice;



@Controller
public class LocationController {
	
	@Autowired
	private  Locationservice locationService;
	
	
	@RequestMapping(value = "/course", method = RequestMethod.GET)
	public String loadcourse1(Model model) {
		model.addAttribute("state", new State());

		List<State> l= this.locationService.findAll_state();
		
		model.addAttribute("statelist",l);
		
		return "NewFile1";
		
	}
	
	
	@RequestMapping(value = "addcity", method = RequestMethod.GET)
	public String loadcity(@RequestParam Integer stateid ,Model model) {
		model.addAttribute("city", new City());
		//List<City> c= this.populateService.findAll_city(stateid);
		List<City> c= this.locationService.findAll_city(stateid);
		for(City ob:c)
		{
			System.out.println("name "+ob.getName());
		}
		model.addAttribute("citylist",c);
       return "location";
	
   
	
}
	
	
	
	
}
