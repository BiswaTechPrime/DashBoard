package edu.abcp.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Category;
import edu.abcp.domain.SubCategory;
import edu.abcp.repository.AdminSubCategoryRepository;




@Transactional
@Service
public class AdminSubCategoryService {

	protected static Logger logger = Logger.getLogger("service");

	@Autowired
	private AdminSubCategoryRepository adminsubcategoryrepository;
	
	@Autowired
	private CategoryService admincategoryservice;
	
	public Boolean create(SubCategory c) throws Exception
	{
		Category existingCategory = admincategoryservice.findById(c.getCategory().getId());
		c.setCategory(existingCategory);
		
		c.setItemname(c.getItemname());
		
		//user.getRole().setUser(user);
		
		SubCategory saved = adminsubcategoryrepository.save(c);
		if (saved == null) 
			return false;
		
		return true;
	}
	

	
	public List<SubCategory> findAll() throws Exception
	{
		List<SubCategory> list = adminsubcategoryrepository.findAll();
		return list;
	}
	
	
	
	public SubCategory findById(Long id) throws Exception
	{
		SubCategory subcategory = adminsubcategoryrepository.findOne(id);
		return subcategory;
	}
	
	
	public Boolean delete(Long id) throws Exception
	{
		SubCategory existingCategory = adminsubcategoryrepository.findOne(id);
		if (existingCategory == null) 
			return false;
		
		adminsubcategoryrepository.delete(existingCategory);
		


		return true;
	}
	

	Iterable<Long> ids;
	public List<SubCategory> findListById(Long ids) throws Exception
	{
		Iterable<SubCategory> list = adminsubcategoryrepository.findAll(this.ids);
		return (List<SubCategory>) list;
	}



	public List<SubCategory> findAll_subcategory(Long categoryid) {
		List<SubCategory> list = adminsubcategoryrepository.findBycategory_id(categoryid);
		for(SubCategory list1:list){
			System.out.println("subcategory"+list1.getItemname());
		}
		return list;
	}



public List <SubCategory> findone1(Long id) {
		
		List <SubCategory> subcategory=adminsubcategoryrepository.findBycategory_id(id);
		
		return subcategory;
	}
	
	
}
