package edu.abcp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.SubCategory;
import edu.abcp.repository.SubCategoryRepository;



@Service
@Transactional
public class FindingService {

	@Autowired
	private SubCategoryRepository subCategoryRepository;
	
	public SubCategory findbyID(long id) {
	
		return this.subCategoryRepository.findById(id);
	}

}
