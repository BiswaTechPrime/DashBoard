package edu.abcp.controller.cp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.abcp.domain.Product;
import edu.abcp.domain.SubCategory;
import edu.abcp.domain.Upload;
import edu.abcp.service.SearchService;
import edu.abcp.service.UploadService;



@Controller
public class SerachController {
	
	@Autowired
	private SearchService searchService;
	
	@Autowired
	private UploadService uploadService;
	
	
	@RequestMapping(value = "aa", method = RequestMethod.GET)
	public String MoreInfor(@RequestParam String subcategory, Model model){
		System.out.println("Entering");
		System.out.println("itemname "+subcategory);
		
	 SubCategory subcategoryobject=this.searchService.findbyitemName(subcategory);
	 Long id=subcategoryobject.getId();
	 System.out.println("subcategory id"+id);
	 
	 List<Upload> subupload=this.uploadService.findBySubcategoryid(id);
	 
	 List<Upload> subupload11=new ArrayList<Upload>();
	 
	 List<Long> l2=new ArrayList<Long>();
	 for(Upload u:subupload){
		 System.out.println(u.getName());
		 
	Long pid=u.getProduct().getId();
			
			System.out.println("all id  "+id);
			
		
				if(!l2.contains(pid))
				{
					l2.add(pid);
					for(Long id1:l2)
					{
						System.out.println("id"+id1);
					}
		    
		
				subupload11.add(u);
	           }
	 }
	 
	 for(Upload l1:subupload11)
	 {
		 System.out.println("  "+id);
	 }
	 
	 model.addAttribute("subupload",subupload11);
		return "SearchResults";
}
	
	@RequestMapping(value = "bb", method = RequestMethod.GET)
	public String MoreInfor11(@RequestParam String subcategory,@RequestParam String state,@RequestParam String city, Model model){
		System.out.println("Entering");
		System.out.println("itemname "+subcategory);
	
		SubCategory subcategoryobject=this.searchService.findbyitemName(subcategory);
	    Long subcategory_id=subcategoryobject.getId();
	    System.out.println("subcategory_id  "+subcategory_id);
        
		 
	    int state_id=Integer.parseInt(state);
	    int city_id=Integer.parseInt(city);
		 
		 
	    System.out.println(state_id+"  "+city_id);
	    
	 List<Product> product=this.searchService.findbyitemNameAndstateAndCity(subcategory_id,state_id,city_id);
	
	
	 
	 List<Upload> upload=new ArrayList<Upload>();
	 
	 List<Long> l2=new ArrayList<Long>();
	 
	 for(Product p:product){
		 
		 
	    Long pid=p.getId();
	    System.out.println("pid  "+pid);
	         
		List<Upload> u=this.uploadService.findByProductid(pid);

		
		for(Upload u1:u)
		{
			long pid1=u1.getProduct().getId();
		
		
		
		if(!l2.contains(pid1))
		{
			l2.add(pid1);
			for(Long id1:l2)
			{
				System.out.println("id"+id1);
			}
    

		upload.add(u1);
       }
	}
		
			
	 }
	 
	 for(Upload l1:upload)
	 {
		 System.out.println("upload_product_id  "+l1.getProduct().getId());
	 }
	 
	 model.addAttribute("upload",upload);
		return "SearchResults";


	}
}