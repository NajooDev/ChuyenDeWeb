package vn.edu.hcmuaf.fit.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import vn.edu.hcmuaf.fit.repository.UserRepository;
import vn.edu.hcmuaf.fit.service.MvcService;

public class EmailAlreadyHaveValidation  implements ConstraintValidator<ValidationEmail, String>{
	
	@Autowired MvcService mvcService;
	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		
		if(mvcService.getUserByEmail(value) != null) {
			return false;
		}
		return true;
	}
}
