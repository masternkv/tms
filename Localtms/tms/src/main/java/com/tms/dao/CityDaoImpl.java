package com.tms.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tms.model.City;

@Repository
public class CityDaoImpl  implements CityDao{

	@Autowired
	SessionFactory sessionFactory;
	@Override
	public List<City> getSelectedCity(Integer city) {
		Criteria criteria=sessionFactory.getCurrentSession().createCriteria(City.class)
				.add(Restrictions.eq("countryState.stateId", city));
		@SuppressWarnings("unchecked")
		List<City> getSelectedCity=(List<City>)criteria.list();
		return getSelectedCity;
	

     }
}
