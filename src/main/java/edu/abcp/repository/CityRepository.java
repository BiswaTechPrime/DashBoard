package edu.abcp.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.City;



@Repository
public interface CityRepository extends JpaRepository<City,Integer> {
List<City> findBystate_id(Integer id);


}
