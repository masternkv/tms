package com.tms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tms.dao.CountryDao;
import com.tms.model.Country;
@Service
public class CountryServiceImpl implements CountryService {

	@Autowired
    CountryDao countryDao;
	@Override
	@Transactional
	public List<Country> getAllCountry() {
		
		return countryDao.getAllCountry();
	}

}
