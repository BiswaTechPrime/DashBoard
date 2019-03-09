package edu.abcp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Category;
import edu.abcp.repository.AdminCategoryRepository;
import edu.abcp.repository.SubCategoryRepository;




@Service
@Transactional
public class CategoryService {
	
	@Autowired
	AdminCategoryRepository admincategory;
	
	@Autowired
	private SubCategoryRepository subCategoryRepository;
	
	public Boolean create(Category c) 
	{
		Category saved = admincategory.save(c);
		if (saved == null) 
			return false;
		
		return true;
	}
	

	public List<Category> findAll() 
	{
		List<Category> list = admincategory.findAll();
		for(Category ac:list){
			System.out.println("Category name"+ac.getName());
		}
		
		return list;
	}


	public Category findById(Long id) 
	{
		Category category = admincategory.findOne(id);
		return category;
	}
	
	
	public Boolean delete(Long id) 
	{
		Category existingCategory = admincategory.findOne(id);
		if (existingCategory == null) 
			return false;
		
		admincategory.delete(existingCategory);
		
//		Category deletedCategory = categoryRepository.findOne(id);
//		if (deletedCategory != null) 
//			return false;

		return true;
	}


	
	
	

}
