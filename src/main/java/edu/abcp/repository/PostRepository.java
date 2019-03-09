package edu.abcp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.Category;



@Repository
public interface PostRepository  extends JpaRepository<Category,Long> {

}
