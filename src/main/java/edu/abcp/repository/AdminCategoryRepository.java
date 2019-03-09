package edu.abcp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.abcp.domain.Category;





public interface AdminCategoryRepository extends JpaRepository<Category, Long>{

}
