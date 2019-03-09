
package edu.abcp.controller.cp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.abcp.domain.Item;
import edu.abcp.domain.SubCategory;
import edu.abcp.service.AdminItemService;
import edu.abcp.service.AdminSubCategoryService;
import edu.abcp.service.CategoryService;


@Controller
public class AdminItemController {

	@Autowired
	private CategoryService categoryService;	
	
	@Autowired
	private AdminSubCategoryService adminSubCategoryService;
	
	@Autowired
	private AdminItemService adminitemService;


	@RequestMapping(value = "/adminitem", method = RequestMethod.GET)
	public String showitem(Model model) throws Exception {
		model.addAttribute("item", new Item());
		model.addAttribute("listCategory", this.categoryService.findAll());
		//model.addAttribute("listSubcategory", this.adminSubCategoryService.findAll());
		model.addAttribute("listitem", this.adminitemService.findAll());
		return "AdminItems";
	}
	

	@RequestMapping(value = "addsubcategory", method = RequestMethod.GET)
	public String loadcity(@RequestParam Long categoryid ,Model model) {
		
		
		List<SubCategory> c= this.adminSubCategoryService.findAll_subcategory(categoryid);
		for(SubCategory ob:c)
		{
			System.out.println("name "+ob.getItemname());
		}
		model.addAttribute("subcategorylist",c);
       return "AminAzax";

}
	
	
	@RequestMapping(value= "/item/add", method = RequestMethod.POST)
	public String add(@ModelAttribute Item item)throws Exception
	{

		
			this.adminitemService.create(item);

		return "redirect:/adminitem";
		
	}
	
	@RequestMapping(value="/item", method=RequestMethod.GET)
	public String edititem(@RequestParam Long id, Model model) throws Exception{
		Item item=this.adminitemService.findById(id);
		model.addAttribute("item",item);
		model.addAttribute("listCategory", this.categoryService.findAll());
		model.addAttribute("Subcategory", this.adminSubCategoryService.findone1(item.getCategorys().getId()));
		model.addAttribute("listSubcategory", this.adminSubCategoryService.findAll());
		
		return "AdminItems";
}
	
	@RequestMapping("/item/delete/{id}")
    public String delete1(@PathVariable("id") Long id)throws Exception
	{	
        this.adminitemService.delete(id);
        return "redirect:/adminitem";
    }
	
	
	
}