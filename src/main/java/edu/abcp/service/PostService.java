package edu.abcp.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Category;
import edu.abcp.domain.Item;
import edu.abcp.domain.SubCategory;
import edu.abcp.repository.ItemRepository;
import edu.abcp.repository.PostRepository;
import edu.abcp.repository.SubCategoryRepository;




@Service
@Transactional
public class PostService {
	
	@Autowired
	private PostRepository postRepository;
	
	@Autowired
	private SubCategoryRepository subCategoryRepository;
	
	@Autowired
	private ItemRepository itemRepository;

	public List<Category> findAll_category() {
		
		List<Category> list =postRepository.findAll();
		for(Category c:list)
		{
			System.out.println("c "+c);
		}
		return list;

	}
	
	
	
	
	public List<SubCategory> findAll_subCategory(Long categoryid) {
		List<SubCategory> list = subCategoryRepository.findBycategory_id(categoryid);
		
		for(SubCategory c:list)
		{
			System.out.println("ccc "+c.getItemname());
		}
		
		return list;
	}




	public List<Item> findAll_item(Long id) {
		
		
		List<Item> list = itemRepository.findBySubCategory_id(id);
	
		return list;
	}


	public List<String>  searchBysubcategory(String name)
	{
		
		List<SubCategory> subcategory=this.subCategoryRepository.findByItemnameLike(name);
		List<String> sub_name=new ArrayList<String>();
		
		
		for(SubCategory s:subcategory)
		{
			sub_name.add(s.getItemname());
		}
		return sub_name;
		
	}


	
}
