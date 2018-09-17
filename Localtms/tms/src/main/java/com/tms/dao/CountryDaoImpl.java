package com.tms.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tms.model.Country;
import com.tms.model.School;
@Repository
public class CountryDaoImpl implements CountryDao{
	
	@Autowired
	private SessionFactory sessionFactory;


	@Override
	public List<Country> getAllCountry() {
		Criteria getAllCrit=sessionFactory.getCurrentSession().createCriteria(Country.class);
		List<Country> getAllCountry=getAllCrit.list();
	    return getAllCountry;
	}

}
