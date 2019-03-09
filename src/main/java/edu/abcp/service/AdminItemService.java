package edu.abcp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Item;
import edu.abcp.repository.AdminItemRepository;
import edu.abcp.repository.AdminSubCategoryRepository;



@Transactional
@Service
public class AdminItemService {

	
	@Autowired
	private AdminSubCategoryRepository adminsubcategoryrepository;
	
	@Autowired
	private CategoryService admincategoryservice;
	

	@Autowired
	private AdminSubCategoryService adminsubcategoryservice;
	
	@Autowired
	private AdminItemRepository adminitemrepository;
	
	
	

	public List<Item> findAll() {
		List<Item> itemlist=this.adminitemrepository.findAll();
		return itemlist;
	}




	public Boolean create(Item c) throws Exception
	{
		/*Bank existingBank = subCategoryoneRepository.findById(c.getBank().getId());
		c.setBank(existingBank);
		c.setName(c.getName());*/
		
		//user.getRole().setUser(user);
		
		Item saved = adminitemrepository.save(c);
		if (saved == null) 
			return false;
		
		return true;
	}




	public Item findById(Long id) {
		Item item=adminitemrepository.findOne(id);
		return item;
	}




	public Boolean delete(Long id) {
		Item existingitem=this.adminitemrepository.findOne(id);
		
		if(existingitem==null)
			return false;

		
		adminitemrepository.delete(existingitem);
		return true;
	}
	
}
