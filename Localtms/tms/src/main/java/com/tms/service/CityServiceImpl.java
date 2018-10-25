package com.tms.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tms.dao.CityDao;
import com.tms.model.City;
@Service
public class CityServiceImpl implements CityService{
   @Autowired CityDao cityDao;
	@Override
	@Transactional
	public List<City> getSelectedCity(Integer city) {
		return cityDao.getSelectedCity(city);
	}

}
