package com.tms.controller;

import java.util.List;

import javax.validation.Valid;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tms.model.Address;
import com.tms.model.Country;
import com.tms.model.School;
import com.tms.model.State;
import com.tms.service.AddressService;
import com.tms.service.CountryService;
import com.tms.service.SchoolService;
import com.tms.service.StateService;
import com.tms.validator.AddressValidator;

@Controller
@SessionAttributes("schAddrSucc")
public class SchoolController {
	public static final Logger logger = Logger
			.getLogger(SchoolController.class);
	@Autowired
	private AddressService addrService;
	@Autowired
	private SchoolService schoolService;
	@Autowired
	private CountryService countryService;
	@Autowired
	private StateService stateService;

	@RequestMapping(value = "/displayAddress")
	public ModelAndView displayAddress(ModelAndView model,
			@ModelAttribute("address") Address addr) {

		logger.info("In Display Address url");
		List<School> schoolList = schoolService.getAllSchool();
		logger.info("School Detail" + schoolList.toString());
		List<Country> countryList = countryService.getAllCountry();
		logger.info("Country Detail" + countryList.toString());
		List<Object[]> allSchoolAddr= addrService.getAllSchAddress();
		model.addObject("countryList", countryList);
		model.addObject("schoolList", schoolList);
		model.setViewName("addAddress");
		return model;
	}

	@RequestMapping(value = "/saveSchAddr", method = RequestMethod.POST)
	public ModelAndView saveSchoolAddress(ModelAndView model,
			@ModelAttribute("address") @Valid Address address,
			BindingResult result,final RedirectAttributes redirectAttribuites) {
		if (result.hasErrors()) {
			List<School> schoolList = schoolService.getAllSchool();
			String s="success";
			model.addObject("schoolList", schoolList);
			model.setViewName("addAddress");
			return model;
		} else {
			addrService.saveAddress(address);
			redirectAttribuites.addFlashAttribute("message","Saved successfully");
			return new ModelAndView("redirect:displayAddress");
		}

	}
	

}