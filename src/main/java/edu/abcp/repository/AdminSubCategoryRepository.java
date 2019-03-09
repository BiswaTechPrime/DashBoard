package edu.abcp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.abcp.domain.SubCategory;




public interface AdminSubCategoryRepository extends JpaRepository<SubCategory, Long>{

	List<SubCategory> findBycategory_id(Long id);
}

