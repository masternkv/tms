package com.tms.validator;

import java.util.List;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.tms.model.Address;
import com.tms.model.School;

public class SchoolValidator  implements ConstraintValidator<IsValidSchool, String>{
	
	private Address addr;
	public SchoolValidator(Address adrr)
	{
		this.addr=addr;
	}

	@Override
	public void initialize(IsValidSchool isValidSchool) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isValid(String addr, ConstraintValidatorContext ctx) {
		// TODO Auto-generated method stub
		if(addr=="-1")
		{
			return false;
		}
		else
		{
			return true;
		}
		
		
	}

}
