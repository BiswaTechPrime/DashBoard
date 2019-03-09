package edu.abcp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.City;
import edu.abcp.domain.State;
import edu.abcp.repository.CityRepository;
import edu.abcp.repository.StateRepository;









@Transactional
@Service
public class Locationservice {
	
	

	@Autowired
	private StateRepository staterepository; 
	
	@Autowired
	private CityRepository cityRepository;

	
	
	
	
	
	public List<City> findAll_city(Integer id) {
		List<City> list = cityRepository.findBystate_id(id);
		
		List<City> l1=(List<City>) list;
		for(City c:l1)
		{
			System.out.println("ccc "+c.getName());
		}
		return l1;
	}

	public List<State> findAll_state() {
		List<State> list =staterepository.findAll();
		for(State c:list)
		{
			System.out.println("c "+c);
		}
		return list;
	}
	
}

