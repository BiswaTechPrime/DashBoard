package edu.abcp.repository;



import org.springframework.data.jpa.repository.JpaRepository;


import edu.abcp.domain.Bank;

public interface BankRepository extends JpaRepository<Bank, Long> {
	
}
