package edu.abcp.controller.cp;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.abcp.domain.City;
import edu.abcp.domain.Details;
import edu.abcp.domain.Product;
import edu.abcp.domain.State;
import edu.abcp.domain.Upload;
import edu.abcp.service.ProductService;
import edu.abcp.service.UploadService;





@Controller
public class MoreDetailsController {
	private static final Logger logger = LoggerFactory.getLogger("controller");
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UploadService uploadService;
	
 
	
	@RequestMapping(value = "/moredetails", method = RequestMethod.GET)
	public String MoreInfo(@RequestParam Long id, Model model, @ModelAttribute Product product){
	
		 System.out.println("id"+id);
		// List<Upload> uploaddetails =new ArrayList<Upload>();
		
	List<Upload> upload=this.uploadService.findByProductid(id);

	
	String des=null;
	String title=null;
	double price = 0;
	String phone = null;
	State state = null;
	City city = null;
	String Firstname=null;
	String Lastname=null;
	String address=null;
	 for(Upload u:upload)
		{
		 des=u.getProduct().getDescription();
		 title=u.getProduct().getTitle();
		 price=u.getProduct().getPrice();
		 phone=u.getProduct().getPhone();
		 address=u.getProduct().getAddress();
		 Firstname=u.getProduct().getFirstname();
		 
		 state=u.getProduct().getState();
		 	 
		 city=u.getProduct().getCity();
		 Firstname=u.getProduct().getFirstname();
		 Lastname=u.getProduct().getLastname();	
		}
	 
	model.addAttribute("title", title);
	model.addAttribute("des", des);
	model.addAttribute("price", price);
	model.addAttribute("phone", phone);
	model.addAttribute("state", state);
	model.addAttribute("Firstname",Firstname);
	model.addAttribute("Lastname",Lastname);
	model.addAttribute("city", city);
	model.addAttribute("state",state);
	model.addAttribute("address", address);
	
	model.addAttribute("listImage",upload);

	 // return "MoreDetails";
	return "m";
	  
	  
	
	  
	}
	
	
	@RequestMapping(value = "/moredetails1", method = RequestMethod.GET)
	public String MoreInfor(@RequestParam Long id, Model model, @ModelAttribute Product product){
	
		 System.out.println("id"+id);
	
		
	List<Upload> upload=this.uploadService.findByProductid(id);
	List<Details> details=new ArrayList<Details>();
	
	for(Upload u:upload){
		
		Long Productid=u.getProduct().getId();
		
		System.out.println(id);
		
		Product p=this.productService.findone(Productid);
		
		  //System.out.println("title"+p.getTitle());
		System.out.println("description"+p.getDescription());
		
		Details dd=new Details(p.getTitle(),p.getDescription(),u.getName(),p.getPrice(),p.getPhone(),p.getAddress(),p.getLocationPicker());
		dd.setId(p.getId());
		details.add(dd);
		
	}
	model.addAttribute("listImage",details);
	  return "MoreDetails";
	}
}
