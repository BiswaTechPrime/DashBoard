package edu.abcp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.Product;






@Repository
public interface ProductRepository extends JpaRepository<Product,Long>{

	@Query("select p from Product p where p.subCategory.id=?1 and p.state.id=?2 and p.city.id=?3")
	List<Product> findbyitemNameAndstateAndCity(long subcategory_id, int state_id, int city_id);

}
