package edu.abcp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.State;
import edu.abcp.repository.StateRepository;
;

@Service
@Transactional
public class StateService {

	@Autowired
	private StateRepository stateRepository;  
	
	public List<State> findAll_course() 
	{
		List<State> list =stateRepository.findAll();
		for(State s:list)
		{
			System.out.println("c "+s);
		}
		return list;
	}
}
