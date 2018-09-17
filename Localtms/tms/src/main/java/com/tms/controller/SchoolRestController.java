package com.tms.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.tms.model.Country;
import com.tms.model.School;
import com.tms.model.State;
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
}
