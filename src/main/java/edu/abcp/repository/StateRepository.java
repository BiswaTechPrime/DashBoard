package edu.abcp.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.State;




@Repository
public interface StateRepository extends JpaRepository<State,Integer> {

}
