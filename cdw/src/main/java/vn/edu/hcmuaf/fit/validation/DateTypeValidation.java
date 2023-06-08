package vn.edu.hcmuaf.fit.validation;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;



public class DateTypeValidation implements ConstraintValidator<ValidateDate, Date>{

	@Override
	public boolean isValid(Date date, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		
		//vì đã dùng @NotNull nên để nó không chạy xuống phía dưới gây ra lỗi(do date = null) thì return nó là true
		if(date == null) return true; 
		
		
		Date presentDate = new Date();
		if((presentDate.compareTo(date) == -1)) {
			return false;
		}
		System.out.println("Trong validation date:"+date);
		return true;
	}

}
