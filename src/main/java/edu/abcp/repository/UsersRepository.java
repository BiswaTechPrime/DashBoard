package edu.abcp.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.abcp.domain.Users;

public interface UsersRepository extends JpaRepository<Users, Integer> {
    Optional<Users> findByName(String username);
}
