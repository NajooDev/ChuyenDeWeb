package vn.edu.hcmuaf.fit.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import vn.edu.hcmuaf.fit.repository.UserRepository;

public class EmailAlreadyHaveValidation  implements ConstraintValidator<ValidationEmail, String>{
	
	@Autowired UserRepository repository;
	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		
		if(repository.findByEmail(value) != null) {
			return false;
		}
		return true;
	}
}
