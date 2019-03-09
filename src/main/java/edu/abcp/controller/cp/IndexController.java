package edu.abcp.controller.cp;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.abcp.domain.Details;
import edu.abcp.domain.Product;
import edu.abcp.domain.State;
import edu.abcp.domain.SubCategory;
import edu.abcp.domain.Upload;
import edu.abcp.repository.SubCategoryRepository;
import edu.abcp.repository.UploadRepository;
import edu.abcp.service.Locationservice;
import edu.abcp.service.ProductService;


@Controller
public class IndexController 
{
	@Autowired
    ProductService productService;
	
	@Autowired
	private  Locationservice locationService;
	
	@Autowired
	private  UploadRepository uploadRepository;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private  SubCategoryRepository subcategoryRepository;
	
	
	
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String showUser(Model model) 
	{
		model.addAttribute("state", new State());
		
		List<State> l= this.locationService.findAll_state();
		
		model.addAttribute("statelist",l);
		
		List<Upload> l1=uploadRepository.findLast6UploadById(1);
		List<Upload> car2=uploadRepository.findNext4UploadByID(1);
		
		
		List<Upload> bike=uploadRepository.findLast4UploadBikeById(3);
		List<Upload> bike2=uploadRepository.findNext4UploadBikeById(3);
		
		List<Long> l2=new ArrayList<Long>();
		List<Long> l3=new ArrayList<Long>();
		List<Details> details=new ArrayList<Details>();
		
		for(Upload u:l1)
		{
			Long id=u.getProduct().getId();
			
			System.out.println("all id  "+id);
			
			Product p=this.productService.findone(id);
			
	        //System.out.println("title"+p.getTitle());
			//System.out.println("description"+p.getDescription());
				
				if(!l2.contains(id))
				{
					l2.add(id);
					for(Long id1:l2)
					{
						System.out.println("id"+id1);
					}
		      //System.out.println("id  "+id);

			
			//System.out.println("con  "+u.getName());
			
			if(details.size()>=4)
			{
				
				break;
			}
			
			Details dd=new Details(p.getTitle(),p.getDescription(),u.getName(),p.getPrice());
			dd.setId(p.getId());
			details.add(dd);
			
			
			
			
		}
		}
		for(Details d:details)
		{
			System.out.println("filtered id"+d.getId());
			//System.out.println("title "+d.getTitle());
			//System.out.println("image "+d.getName());
		}
	System.out.println("size "+details.size());
		model.addAttribute("listCar",details);
		
		
	
//=============================================for bike=================================================
		
		List<Details> detailsb=new ArrayList<Details>();
		
		for(Upload ubike:bike)
		{
			Long id=ubike.getProduct().getId();
			
			System.out.println(id);
			
			Product p=this.productService.findone(id);
			
	        //System.out.println("title"+p.getTitle());
			System.out.println("description"+p.getDescription());
				
				if(!l3.contains(id))
				{
					l3.add(id);
					for(Long id1:l3)
					{
						System.out.println("id"+id1);
					}
		      //System.out.println("id  "+id);

			
			System.out.println("con  "+ubike.getName());
			
			if(detailsb.size()>=4)
			{
				
				break;
			}
			
			Details ddbike=new Details(p.getTitle(),p.getDescription(),ubike.getName(),p.getPrice());
			ddbike.setId(p.getId());
			detailsb.add(ddbike);
			
			
			
			
		}
		}
		
		model.addAttribute("listBike",detailsb);
		
		
		
		//===========================List of cars for  2nd Part of the recently add carousel==================================
		
		List<Long> l4=new ArrayList<Long>();
		List<Details> detailsc2=new ArrayList<Details>();
		
		for(Upload secondCar:car2)
		{
			Long id=secondCar.getProduct().getId();
			
			System.out.println("all id  "+id);
			
			Product p4=this.productService.findone(id);
		
				if(!l4.contains(id))
				{
					l4.add(id);
					for(Long id4:l4)
					{
						System.out.println("id"+id4);
					}
		      //System.out.println("id  "+id);

			
			//System.out.println("con  "+u.getName());
			
			if(detailsc2.size()>=4)
			{
				
				break;
			}
			
			Details d4=new Details(p4.getTitle(),p4.getDescription(),secondCar.getName(),p4.getPrice());
			d4.setId(p4.getId());
			detailsc2.add(d4);
			
			
			
			
		}
		}
		for(Details d:detailsc2)
		{
			System.out.println("filtered id"+d.getId());
			//System.out.println("title "+d.getTitle());
			//System.out.println("image "+d.getName());
		}
	System.out.println("size "+details.size());
		model.addAttribute("listCar2",detailsc2);
		
		
//===============================================2nd part of bike for recently added=============================================
		
		List<Long> l5=new ArrayList<Long>();
	    List<Details> detailsb2=new ArrayList<Details>();
		
		for(Upload ubike2:bike2)
		{
			Long id=ubike2.getProduct().getId();
			
			System.out.println(id);
			
			Product p5=this.productService.findone(id);
			
				if(!l5.contains(id))
				{
					l5.add(id);
			
			if(detailsb2.size()>=4)
			{
				
				break;
			}
			
			Details ddbike2=new Details(p5.getTitle(),p5.getDescription(),ubike2.getName(),p5.getPrice());
			ddbike2.setId(p5.getId());
			detailsb.add(ddbike2);
			
			
			
			
		}
		}
		
		model.addAttribute("listBike2",detailsb2);
		
		
		
		return "NewFile1";
		//return "index";
	}
	
	
	
	
	

	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String searchSubcategory(Model model) 
	{
		System.out.println("sdfdsfdsf");
		
		
		     String s[]=null;
		 
		     List<SubCategory> subcategory = subcategoryRepository.findAll();
		     
		       List<String> li1 = new ArrayList<String>();
		       List<String> li_add = new ArrayList<String>();
				 
		 
		      for(SubCategory s1:subcategory)
		       {
		           li1.add(s1.getItemname());
		       }
		 
		       String[] str = new String[li1.size()];
		       Iterator it = li1.iterator();
		 
		       int i = 0;
		       while(it.hasNext())
		       {
		           String p = (String)it.next();
		           str[i] = p;
		           i++;
		       }
		 
		    //jQuery related start
		       String query = (String)request.getParameter("q");
		 
		       int cnt=1;
		       for(int j=0;j<str.length;j++)
		       {
		           if(str[j].toUpperCase().startsWith(query.toUpperCase()))
		           {
		        	   li_add .add(str[j]);
		              if(cnt>=5)// 5=How many results have to show while we are typing(auto suggestions)
		              break;
		              cnt++;
		            }
		       }
		       model.addAttribute("li_add", li_add);
		return "search";
		
	
	}
	
}
