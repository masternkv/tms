package com.tms.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tms.model.Address;
import com.tms.model.School;
import com.tms.service.AddressService;

@Controller
public class SchoolController {
	public static final Logger logger=Logger.getLogger(SchoolController.class);
	@Autowired
	private AddressService addrService;
	
	@RequestMapping(value="/displayAddress")
	public String displayAddress(Model model,@ModelAttribute Address address)
	{
		return "addAddress";
	}
    @RequestMapping(value="/saveSchAddr",method = RequestMethod.POST)  
    public String saveSchoolAddress(Model model,@ModelAttribute Address addr)
    {   
    	School sch=new School();
    sch.setSchoolId(1);
    
    addr.setSchoolDetails(sch);
    	
    	addrService.saveAddress(addr);
    	return "addAddress";
    }
    
    
}
