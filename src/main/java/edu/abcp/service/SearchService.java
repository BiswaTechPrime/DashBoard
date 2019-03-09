package edu.abcp.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Product;
import edu.abcp.domain.SubCategory;
import edu.abcp.repository.ProductRepository;
import edu.abcp.repository.SubCategoryRepository;


@Service
@Transactional
public class SearchService {

	@Autowired
	private SubCategoryRepository subCategoryRepository;
	
	@Autowired
	private ProductRepository  productRepository;
	

	public SubCategory findbyitemName(String subcategory) {
		
		return this.subCategoryRepository.findByItemname(subcategory);
	}


	public List<Product> findbyitemNameAndstateAndCity(Long subcategory_id, int state_id, int city_id) {
		return this.productRepository.findbyitemNameAndstateAndCity(subcategory_id,state_id,city_id);
		
	}

}
