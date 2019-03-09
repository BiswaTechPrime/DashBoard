package edu.abcp.controller.cp;

import java.io.File;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.abcp.domain.Category;
import edu.abcp.domain.City;
import edu.abcp.domain.Item;
import edu.abcp.domain.Product;
import edu.abcp.domain.State;
import edu.abcp.domain.SubCategory;
import edu.abcp.domain.Upload;
import edu.abcp.service.Locationservice;
import edu.abcp.service.PostService;
import edu.abcp.service.ProductService;







@Controller
public class PostController {
	
	@Autowired
	private  PostService postService;
	

	@Autowired
	private ProductService productService;
	

	@Autowired
	private  Locationservice locationService;

	@Autowired
	private ServletContext context;
	
	private static final Logger logger = LoggerFactory.getLogger(PostController.class);
	
	
	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String  getPost(Model model) {
		
		model.addAttribute("product", new Product());
		List<Category> l= this.postService.findAll_category();
		model.addAttribute("categorylist",l);
        List<State> state= this.locationService.findAll_state();
		
		model.addAttribute("statelist",state);
		return "post";
		

}
	

	@RequestMapping(value = "addcitypost", method = RequestMethod.GET)
	public String loadcity(@RequestParam Integer stateid ,Model model) {
		model.addAttribute("city", new City());
		//List<City> c= this.populateService.findAll_city(stateid);
		List<City> c= this.locationService.findAll_city(stateid);
		for(City ob:c)
		{
			System.out.println("name "+ob.getName());
		}
		model.addAttribute("citylist",c);
       return "city";
	
	
}
	
	
	@RequestMapping(value = "addSubCategory", method = RequestMethod.GET)
	public String loadcity(@RequestParam Long categoryid ,Model model) {
		//model.addAttribute("sub_category", new SubCategory());
		
		List<SubCategory> subcategory= this.postService.findAll_subCategory(categoryid);
		for(SubCategory ob:subcategory)
		{
			System.out.println("name "+ob.getItemname());
		}
		model.addAttribute("subcategorylist",subcategory);
		
       return "categoryAzax";
	
	
}
	
	
	

	@RequestMapping(value = "addItem", method = RequestMethod.GET)
	public String loadItem(@RequestParam Long subcategoryid ,Model model) {
		
		System.out.println("entering");
		

		model.addAttribute("item", new Item());
		
		
		List<Item> c= this.postService.findAll_item(subcategoryid);
		for(Item ob1:c)
		{
			System.out.println("name "+ob1.getName());
		}
		model.addAttribute("itemlist",c);
		
       return "subcategoryAzax";
	
	
	
}
	
	
	

	@RequestMapping(value = "/adAdder", method = RequestMethod.POST)
	public String addAdder(@ModelAttribute("product") Product product,@RequestParam Long subcategory1,@RequestParam Long item1,@RequestParam int city1,Model model) {
		
		System.out.println("entering controller");
		
		SubCategory sub=new SubCategory();
		sub.setId(subcategory1);
		product.setSubCategory(sub);
		
		
		Item it=new Item();
		it.setId(item1);
		product.setItem(it);
		
		City c=new City();
		c.setId(city1);
		product.setCity(c);
		
		
     
        System.out.println( "id "+ product.getSubCategory().getId());
        System.out.println( "id "+  product.getItem().getId());
        System.out.println("id "+  product.getCategory().getId());
        
        
		this.productService.createuser(product);
		
		
		
		
		
		return "upload";
	}
	
/*	@RequestMapping(value = "/adAdder", method = RequestMethod.POST)
	public String addAdder(@ModelAttribute("product") Product product,Model model) {
		
		System.out.println("entering controller");
		  product.getSubCategory().setId(subcategory);
        product.getItem().setId(item);
        product.getCategory().setId(category);
        System.out.println( "id "+ product.getSubCategory().getId());
        System.out.println( "id "+  product.getItem().getId());
        System.out.println("id "+  product.getCategory().getId());
		Product p=this.productService.createuser(product);
		model.addAttribute("product", p);
	System.out.println("id "+p.getId());
		
		
		return "home";
	}*/
	

	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public String uploadfile1(Locale locale,@RequestParam("image") MultipartFile[] name,@RequestParam long id,@RequestParam long subcategory,Model model) throws ParseException {
		
		upload(name);
		Upload upload;
	 Product p=new Product();
	 p.setId(id);
	 
	 SubCategory s=new SubCategory();
	 s.setId(subcategory);

		for(MultipartFile multipart:name){
			upload=new Upload();
		
		upload.setName(multipart.getOriginalFilename());
		upload.setProduct(p);
		upload.setSubCategory(s);
		
		/*DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = dateFormat.parse("23/09/2007");
		long time = date.getTime();
		upload.setCreateDate(new Timestamp(time));*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
	
		upload.setCreateDate(formattedDate);
		
		System.out.println("filename "+multipart.getOriginalFilename());
		this.productService.create(upload);
		}
		model.addAttribute("uploadSuccess","your   upload is successfull");
		return "UploadSuccessfull";
		
	}

	
	
	public void upload(@RequestParam("file") MultipartFile[] file) {

		try {
			for(MultipartFile multipart:file){
				
		logger.debug(multipart.getOriginalFilename() + " - " + multipart.getSize());


			String webapp = context.getRealPath("/");

			String relativeFolder = "resources" + File.separator + "images";

			System.out.println(relativeFolder);

			String tempDirectory = webapp + relativeFolder;

			System.out.println(tempDirectory);

			File f = new File(tempDirectory + File.separator + multipart.getOriginalFilename());
		
			
			String filename=multipart.getOriginalFilename();
		
			multipart.transferTo(new File(tempDirectory +File.separator+ filename));
			

			logger.debug("TMP DIRECTORY ::::::  " + f);
		}
			} catch (Exception e) {
			logger.error("e");
		}

	
	}
	

}
