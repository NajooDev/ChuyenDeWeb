package vn.edu.hcmuaf.fit.validation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Target({ElementType.FIELD, ElementType.PARAMETER})//implement this annotation on which field level
@Retention(RetentionPolicy.RUNTIME) //what time you want to implement this annotation (at runtime or in some other time)
@Documented
@Constraint(validatedBy = EmailAlreadyHaveValidation.class)//nếu dùng annotation dưới thì nó sẽ chuyển vào lớp này

public @interface ValidationEmail {

	public String message() default "Email đã tồn tại"; //default của message nếu không gọi

	Class<?>[] groups() default { };

	Class<? extends Payload>[] payload() default { };

}
