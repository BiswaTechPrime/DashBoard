package edu.abcp.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.SubCategory;


@Repository
public interface SubCategoryRepository  extends JpaRepository<SubCategory,Long>{

	List<SubCategory> findBycategory_id(Long categoryid);
	


	SubCategory findByItemname(String subcategory);



	List<SubCategory> findByItemnameLike(String name);



	SubCategory findById(long id);



	

	
}
