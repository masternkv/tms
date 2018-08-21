package com.tms.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tms.model.Address;
import com.tms.model.Country;
import com.tms.model.School;
import com.tms.service.AddressService;
import com.tms.service.CountryService;
import com.tms.service.SchoolService;
import com.tms.validator.AddressValidator;

@Controller
public class SchoolController {
	public static final Logger logger=Logger.getLogger(SchoolController.class);
	@Autowired
	private AddressService addrService;
	@Autowired
	private SchoolService schoolService;
	@Autowired
	private AddressValidator addressValidator;
	@Autowired
	private CountryService countryService;
	/*@InitBinder
	protected void initBinder(WebDataBinder binder)
	{
		logger.info("Binding Validator");
		binder.addValidators(addressValidator);
	}*/
	
	
	@RequestMapping(value="/displayAddress")
	public ModelAndView displayAddress(ModelAndView model,@ModelAttribute("address")Address addr)
	{
		
		logger.info("In Display Address url");
		List<School> schoolList=schoolService.getAllSchool();
		logger.info("School Detail"+schoolList.toString());
		List<Country> countryList=countryService.getAllCountry();
		logger.info("Country Detail"+countryList.toString());
		model.addObject("countryList",countryList);
		model.addObject("schoolList",schoolList); 
	    model.setViewName("addAddress");
		return model;
	}
    @RequestMapping(value="/saveSchAddr",method = RequestMethod.POST)  
    public ModelAndView saveSchoolAddress(ModelAndView model,@ModelAttribute("address") Address addr,BindingResult result )
    {   
    	addressValidator.validate(addr, result);
    	if(result.hasErrors())
    	{
    		List<School> schoolList=schoolService.getAllSchool();
    		model.addObject("schoolList",schoolList);
    	    model.setViewName("addAddress");
    		return model;
    	}
    	else
    	{
    		int getSchoolid=Integer.parseInt(addr.getAddressSchoolId());
        	School sch=new School();
        	Country coun=new Country();
            sch.setSchoolId(getSchoolid);
            coun.setCountryId(addr.getAddressCountryId());
        
             addr.setSchoolDetails(sch);
             addr.setCountryDetails(coun);
        	
        	addrService.saveAddress(addr);
         return new ModelAndView("redirect:displayAddress");
    	}
    	
    }
    
    
}
