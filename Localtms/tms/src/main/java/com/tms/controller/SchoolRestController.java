package com.tms.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sun.scenario.effect.impl.prism.PrCropPeer;
import com.tms.exceptionHandler.MyBindingException;
import com.tms.model.Address;
import com.tms.model.City;
import com.tms.model.Country;
import com.tms.model.School;
import com.tms.model.State;
import com.tms.service.AddressService;
import com.tms.service.CityService;
import com.tms.service.CountryService;
import com.tms.service.SchoolService;
import com.tms.service.StateService;

@RestController
public class SchoolRestController {
	public static final Logger logger=Logger.getLogger(SchoolRestController.class);

	@Autowired
	private CountryService countryService;
	@Autowired
	private SchoolService schoolService;
	@Autowired
	private StateService stateService;
	@Autowired
	private AddressService addrService;
	@Autowired
	private CityService cityService;
	@Autowired
	private ReloadableResourceBundleMessageSource messageSource ;
	
	@RequestMapping(value="/getCountry",method=RequestMethod.GET)
	public @ResponseBody List<Country> getAllCountry()
	{
		logger.info("In Coutry Rest Controller");
		List<Country> countryList=countryService.getAllCountry();
		
		return countryList;
	}
	
	@RequestMapping(value="getState",method=RequestMethod.GET)
    public @ResponseBody List<State> getSelectedState(@RequestParam("state")Integer state)
    {
		
		List<State> stateList=stateService.getSelectedState(state);
	
		return stateList;
    }
	
	@RequestMapping(value="getCity",method=RequestMethod.GET)
    public @ResponseBody List<City> getSelectedCity(Integer city)
    {
		List<City> cityList=cityService.getSelectedCity(city);
	
		return cityList;
    }
	
	@RequestMapping(value="getSchoolAddrById",method=RequestMethod.GET)
    public @ResponseBody List<Object[]> getSchoolAddrById(@RequestParam("schoolId")Integer schoolId)
    {
		
		List<Object[]> getSchoolAddrById=addrService.getAddressById(schoolId);
	
		return getSchoolAddrById;
    }
    @RequestMapping(value="/updSchoolAddress",method=RequestMethod.POST,consumes=MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<?> updateSchoolAddr(@Valid @RequestBody Address addr,BindingResult error)
    
    {
    	HttpHeaders responseUpdate=new HttpHeaders();
    	//error.getFieldErrors()
    	
    	if(error.hasErrors())
    	{
    		throw new MyBindingException(error);
    	}
    	else
    	{
    		addrService.saveAddress(addr);
    		return new ResponseEntity<>(addr,responseUpdate,HttpStatus.CREATED);
    	}
    	/*addrService.saveAddress(addr);
    	return new ResponseEntity<>(addr,responseUpdate,HttpStatus.CREATED);*/
    	
    }
    @RequestMapping(value="deleteSchoolAddrById",method=RequestMethod.POST)
    public @ResponseBody String deleteSchoolAddrById(@RequestParam("schoolId")Integer schoolId)
    {
    	//Integer schoolId=50;
		boolean result=addrService.deleteAddressById(schoolId);
		//List<Object[]> getSchoolAddrById=addrService.getAddressById(schoolId);
	
		return "deleted success";
    }
}
