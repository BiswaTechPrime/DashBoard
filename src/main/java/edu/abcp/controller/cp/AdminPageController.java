/*package edu.abcp.controller.cp;

import org.springframework.beans.factory.annotation.Autowired;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.abcp.domain.Category;
import edu.abcp.domain.SubCategory;
import edu.abcp.service.AdminSubCategoryService;
import edu.abcp.service.CategoryService;







@Controller
public class AdminPageController {
	
	@Autowired
	private CategoryService categoryService;	
	
	@Autowired
	private AdminSubCategoryService adminSubCategoryService;	
	

	//private static final Logger logger = LoggerFactory.getLogger("controller");
	
	
	
	@RequestMapping(value = "/adminpassword", method = RequestMethod.GET)
	public String showpass(Model model) {
		
		return "ChangeAdminPassword";
	}
	
	@RequestMapping(value = "/adminphone", method = RequestMethod.GET)
	public String showphone(Model model) {
		
		return "ChangeAdminPhone";
	}
	
	@RequestMapping(value = "/admincategory", method = RequestMethod.GET)
	public String showcategory(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("listCategory", this.categoryService.findAll());
		return "AdminCategory";
	}
	
	
	@RequestMapping(value = "/admincategorys", method = RequestMethod.GET)
	public String showcategory1(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("listCategory", this.categoryService.findAll());
		return "AdminCategory";
	}
	
	
	
	@RequestMapping(value= "/category/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("categoryAttribute") Category category)
	{
	
			this.categoryService.create(category);

		
		return "redirect:/admincategorys";
		
	}
	
	
	
	
	@RequestMapping("/category")
    public String edit(@RequestParam Long id, Model model, @ModelAttribute Category category)
    {	
		category = this.categoryService.findById(id);
		model.addAttribute("category", category);
        model.addAttribute("listCategory", this.categoryService.findAll());
        return "AdminCategory"; 
    }
	
	
	@RequestMapping("/category/delete/{id}")
    public String delete(@PathVariable("id") Long id)
	{	
        this.categoryService.delete(id);
        return "redirect:/admincategorys";
    }
	
	
	
	
	@RequestMapping(value = "/adminsubcategory", method = RequestMethod.GET)
	public String showsubcategory(Model model) throws Exception {
		model.addAttribute("subcategory", new SubCategory());
		model.addAttribute("listCategory", this.categoryService.findAll());
		model.addAttribute("listSubcategory", this.adminSubCategoryService.findAll());
		return "AdminSubCategory";
	}
	
	
	
	
	
	@RequestMapping(value= "/subcategory/add", method = RequestMethod.POST)
	public String add(@ModelAttribute SubCategory subcategory)throws Exception
	{
//		if(customer.getId() == 0L)
//		{
		//customer.setBank(new Bank());
		//subcategory.setItemname(subcategory.getItemname());
		
			this.adminSubCategoryService.create(subcategory);
//		}
//		else
//		{
//			this.customerService.update(customer);
//		}
		
		return "redirect:/adminsubcategory";
		
	}
	
	
	
	@RequestMapping("/subcategory")
    public String edit(@RequestParam Long id, Model model)throws Exception
    {	
		//logger.debug("");
		SubCategory subcategory = this.adminSubCategoryService.findById(id);

		model.addAttribute("subcategory", subcategory);
		model.addAttribute("listCategory", this.categoryService.findAll());
		model.addAttribute("listSubcategory", this.adminSubCategoryService.findAll());
        return "AdminSubCategory"; 
    }
	
	
	@RequestMapping("/subcategory/delete/{id}")
    public String delete1(@PathVariable("id") Long id)throws Exception
	{	
        this.adminSubCategoryService.delete(id);
        return "redirect:/adminsubcategory";
    }

	
}
*/