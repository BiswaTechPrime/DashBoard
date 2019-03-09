package edu.abcp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.Item;



@Repository
public interface ItemRepository extends JpaRepository<Item,Long> {
	

	List<Item>  findBySubCategory_id(Long id);

}
