package com.tms.validator;
 import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

 @Documented
 @Constraint(validatedBy=SchoolValidator.class)
 @Target({ElementType.FIELD})
 @Retention(RetentionPolicy.RUNTIME)
public @interface IsValidSchool {
	 String message() default "Please select valid school id";
	 Class<?>[]groups() default{};
	 Class<? extends Payload>[] payload() default {};
	 

}
