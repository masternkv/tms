package com.tms.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tms.model.Address;
import com.tms.model.School;
import com.tms.service.AddressService;
import com.tms.service.SchoolService;

@Controller
public class SchoolController {
	public static final Logger logger=Logger.getLogger(SchoolController.class);
	@Autowired
	private AddressService addrService;
	@Autowired
	private SchoolService schoolService;
	
	@RequestMapping(value="/displayAddress")
	public ModelAndView displayAddress(ModelAndView model,@ModelAttribute Address address)
	{
		List<School> schoolList=schoolService.getAllSchool();
		logger.info("School Detail"+schoolList.toString());
	    model.addObject("schoolList",schoolList);
	    model.setViewName("addAddress");
		return model;
	}
    @RequestMapping(value="/saveSchAddr",method = RequestMethod.POST)  
    public String saveSchoolAddress(Model model,@ModelAttribute Address addr)
    {   
    	int getSchoolid=Integer.parseInt(addr.getAddressSchoolId());
    	School sch=new School();
        sch.setSchoolId(getSchoolid);
    
    addr.setSchoolDetails(sch);
    	
    	addrService.saveAddress(addr);
    	return "addAddress";
    }
    
    
}
