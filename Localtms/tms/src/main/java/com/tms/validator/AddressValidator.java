package com.tms.validator;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.tms.controller.SchoolController;
import com.tms.model.Address;
@Component
public class AddressValidator implements Validator {

	public static final Logger logger=Logger.getLogger(SchoolController.class);
	
	@Override
	public boolean supports(Class<?> clazz) {
		logger.info("In Support Class");
		
		return Address.class.isAssignableFrom(clazz);

	}

	@Override
	public void validate(Object obj, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "addressLane1", "Address.error.addressLane1", "Enter Address Lane 1");
		
		Address addr=(Address)obj;
		try
		{
		  Integer getSchoolId=addr.getAddressSchoolId();
		}
		catch(NumberFormatException ex)
		{
			errors.reject("Address.error.addressSchoolId", "Please");
		}
		
		
	}
	

}
