package com.tms.dao;

import java.util.List;

import com.tms.model.City;

public interface CityDao {

	public List<City> getSelectedCity(Integer city);
}
