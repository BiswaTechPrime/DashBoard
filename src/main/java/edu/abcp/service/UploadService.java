package edu.abcp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Upload;
import edu.abcp.repository.UploadRepository;


@Transactional
@Service
public class UploadService {

	@Autowired
    UploadRepository uploadRepository;
	

	public List<Upload> findByProductid(Long id) {
		
		return this.uploadRepository.findByproduct_id(id);
	}

	public List<Upload> findByID(Long id) {
		List<Upload> upload=this.uploadRepository.findById(id);
		return null;
	}

	public List<Upload> findBySubcategoryid(long id) {
	  
		List<Upload> subupload=this.uploadRepository.findBysubCategory_id(id);
		return subupload;
	}

	public List<Upload> findone(long pid) {
		  
		List<Upload> upload=this.uploadRepository.findByproduct_id(pid);
		return upload;
	}
	
	
	
}
