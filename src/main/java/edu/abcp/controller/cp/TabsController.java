package edu.abcp.controller.cp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.abcp.domain.Upload;
import edu.abcp.service.UploadService;


@Controller
public class TabsController {

	
	
	@Autowired
	private UploadService uploadService;
	

	@RequestMapping(value = "/cars", method = RequestMethod.GET)
	public String showcars(Model model) {
		System.out.println("entering");
		
		return "Vehiclestabs";
	}
	

	@RequestMapping(value = "/bike", method = RequestMethod.GET)
	public String showbikes(Model model) {
		System.out.println("entering");
		return "Electronics";
	}
	
	@RequestMapping(value = "/fur", method = RequestMethod.GET)
	public String showfur(Model model) {
		System.out.println("entering");
	
		return "FurnitureTabs";
	}
	@RequestMapping(value = "/Others", method = RequestMethod.GET)
	public String showother(Model model) {
		System.out.println("entering");
		
		return "FindResult";
	}
	
	@RequestMapping(value = "/fashio", method = RequestMethod.GET)
	public String showfas(Model model) {
		System.out.println("entering");
		
		return "Fashion";
	}
	
	@RequestMapping(value = "/Vehicles", method = RequestMethod.GET)
	public String showvehicle(Model model) {
		System.out.println("entering");
		
		return "Vehiclestabs";
	}
	
	@RequestMapping(value = "/electronics", method = RequestMethod.GET)
	public String showelectric(Model model) {
	
		return "Electronics";
	}
	

	@RequestMapping(value = "/furnitures", method = RequestMethod.GET)
	public String showfurniture(Model model) {
	
		return "FurnitureTabs";
	}
	
	@RequestMapping(value = "/fashion", method = RequestMethod.GET)
	public String showfashion(Model model) {
		
		return "Fashion";
	}
	
	
	
	
	@RequestMapping(value = "/car", method = RequestMethod.GET)
	public String showcar(Model model) {
		
		 List<Upload> subupload=this.uploadService.findBySubcategoryid(1);    /*  here 1 is id 0f cars*/
		 List<Upload> subupload11=new ArrayList<Upload>();
		 List<Long> l2=new ArrayList<Long>();
		 
		 for(Upload u:subupload){
			 Long pid=u.getProduct().getId();
			 
			 if(!l2.contains(pid))
				{
					l2.add(pid);
					subupload11.add(u);			
		       }
		 
		
	    }
		 
		 model.addAttribute("findSubCategory","Cars");
		 
		 model.addAttribute("findinfItems",subupload11);
		 
		 return "FindResult";
	}
	
	
	
	
	@RequestMapping(value = "/commercial", method = RequestMethod.GET)
	public String showcommercial(Model model) {
		
		 List<Upload> subupload=this.uploadService.findBySubcategoryid(2);    /*  here 1 is id 0f Commercial vechiles*/
		 List<Upload> subupload11=new ArrayList<Upload>();
		 List<Long> l2=new ArrayList<Long>();
		 
		 for(Upload u:subupload){
			 Long pid=u.getProduct().getId();
			 
			 if(!l2.contains(pid))
				{
					l2.add(pid);
					subupload11.add(u);			
		       }
		 
		
	    }
		 
		 model.addAttribute("findSubCategory","commercial vechiles");
		 
		 model.addAttribute("findinfItems",subupload11);
		 
		 return "FindResult";
	}
	
	
	
	@RequestMapping(value = "/motor", method = RequestMethod.GET)
	public String showmotor(Model model) {
		
		 List<Upload> subupload=this.uploadService.findBySubcategoryid(3);    /*  here 3 is id 0f motor cycles*/
		 List<Upload> subupload11=new ArrayList<Upload>();
		 List<Long> l2=new ArrayList<Long>();
		 
		 for(Upload u:subupload){
			 Long pid=u.getProduct().getId();
			 
			 if(!l2.contains(pid))
				{
					l2.add(pid);
					subupload11.add(u);			
		       }
		 
		
	    }
		 
		 model.addAttribute("findSubCategory","Motor-Cycles");
		 
		 model.addAttribute("findinfItems",subupload11);
		 
		 return "FindResult";
	}
	
	
	
	
	@RequestMapping(value = "/cycle", method = RequestMethod.GET)
	public String showbi(Model model) {
		
		 List<Upload> subupload=this.uploadService.findBySubcategoryid(4);    /*  here 4 is id 0f Cycles*/
		 List<Upload> subupload11=new ArrayList<Upload>();
		 List<Long> l2=new ArrayList<Long>();
		 
		 for(Upload u:subupload){
			 Long pid=u.getProduct().getId();
			 
			 if(!l2.contains(pid))
				{
					l2.add(pid);
					subupload11.add(u);			
		       }
		 
		
	    }
		 
		 model.addAttribute("findSubCategory","Cycles");
		 
		 model.addAttribute("findinfItems",subupload11);
		 
		 return "FindResult";
	}
	
	
	
	@RequestMapping(value = "/spare", method = RequestMethod.GET)
	public String showspare(Model model) {
		
		 List<Upload> subupload=this.uploadService.findBySubcategoryid(5);    /*  here 5 is id 0f Spare Parts*/
		 List<Upload> subupload11=new ArrayList<Upload>();
		 List<Long> l2=new ArrayList<Long>();
		 
		 for(Upload u:subupload){
			 Long pid=u.getProduct().getId();
			 
			 if(!l2.contains(pid))
				{
					l2.add(pid);
					subupload11.add(u);			
		       }
		 
		
	    }
		 
		 model.addAttribute("findSubCategory","Spare Parts");
		 
		 model.addAttribute("findinfItems",subupload11);
		 
		 return "FindResult";
	}
	
	
	
	
	
	
	@RequestMapping(value = "/mobile", method = RequestMethod.GET)
	public String showmobile(Model model) {
		
		 List<Upload> subupload=this.uploadService.findBySubcategoryid(6);    /*  here 6 is id 0f Mobiles*/
		 List<Upload> subupload11=new ArrayList<Upload>();
		 List<Long> l2=new ArrayList<Long>();
		 
		 for(Upload u:subupload){
			 Long pid=u.getProduct().getId();
			 
			 if(!l2.contains(pid))
				{
					l2.add(pid);
					subupload11.add(u);			
		       }
		 
		
	    }
		 
		 model.addAttribute("findSubCategory","Mobiles");
		 
		 model.addAttribute("findinfItems",subupload11);
		 
		 return "FindResult";
	}
	
	
	
	@RequestMapping(value = "/tab", method = RequestMethod.GET)
	public String showtab(Model model) {
		
		return "FindResult";
	}
	
	@RequestMapping(value = "/computer", method = RequestMethod.GET)
	public String showcomputer(Model model) {
		
		return "FindResult";
	}
	
	@RequestMapping(value = "/tv", method = RequestMethod.GET)
	public String showtv(Model model) {
		
		return "FindResult";
	}
	
	@RequestMapping(value = "/ac", method = RequestMethod.GET)
	public String showfridge(Model model) {
		
		return "FindResult";
	}
	
	@RequestMapping(value = "/kitchen", method = RequestMethod.GET)
	public String showkitchen(Model model) {
		
		return "FindResult";
	}
	
	@RequestMapping(value = "/sofa", method = RequestMethod.GET)
	public String showsofa(Model model) {
		
		return "FindResult";
	}
	
	@RequestMapping(value = "/beds", method = RequestMethod.GET)
	public String showbeds(Model model) {
		
		return "FindResult";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showhome(Model model) {
		
		return "FindResult";
	}
	

	@RequestMapping(value = "/fureothrs", method = RequestMethod.GET)
	public String showfuoth(Model model) {
		
		return "FindResult";
	}
	
	
	@RequestMapping(value = "/clothes", method = RequestMethod.GET)
	public String showclothes(Model model) {
	
		return "FindResult";
	}
	
	@RequestMapping(value = "/foot", method = RequestMethod.GET)
	public String showfoot(Model model) {
		
		return "FindResult";
	}
	
	
	
	
}
