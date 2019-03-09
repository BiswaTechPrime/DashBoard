package edu.abcp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Product;
import edu.abcp.domain.Upload;
import edu.abcp.repository.ProductRepository;
import edu.abcp.repository.UploadRepository;

@Service
@Transactional
public class ProductService {

	@Autowired
    ProductRepository productRepository;
	

	@Autowired
    UploadRepository uploadRepository;

	public void create(Upload upload) {
		
	this.uploadRepository.save(upload);
	
		
	}

	public Product createuser(Product product) {
		return this.productRepository.save(product);
	}

	
	public List<Upload> show(long id) {
		List<Upload> l1=this.uploadRepository.findBysub(id);
		
		for(Upload u:l1)
		{
			System.out.println("image name "+u.getName());
		}
		return l1;
		
		
	}

	public Product findone(Long id) {
		
		return productRepository.findOne(id);
	}
	
	public List<Product> findAll() {

		return productRepository.findAll();
	}

	public Product  findById(Long id) {
		Product product=productRepository.findOne(id);
		return product;
	}
	
	


/*	public List<Product> findone(Long id) {
		
		@SuppressWarnings("unchecked")
		List<Product> l2=(List<Product>) this.productRepository.findOne(id);
		
		return l2;
	}*/
}
