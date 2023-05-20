package vn.edu.hcmuaf.fit.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import vn.edu.hcmuaf.fit.entity.User;

public interface UserRepository extends CrudRepository<User, Long> {

	User findByUserName(String username);
	
	User findByEmail(String email);
	

}
