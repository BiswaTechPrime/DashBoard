package edu.abcp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.abcp.domain.Item;


public interface AdminItemRepository extends JpaRepository<Item, Long> {



	
	
}
