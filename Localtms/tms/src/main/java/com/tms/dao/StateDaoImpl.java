package com.tms.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tms.model.Country;
import com.tms.model.CountryState;
import com.tms.model.State;
@Repository
public class StateDaoImpl implements StateDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<State> getSelectedSate(Integer state) {
		Criteria criteria=sessionFactory.getCurrentSession().createCriteria(CountryState.class)
				.add(Restrictions.eq("country.countryId", state));
		@SuppressWarnings("unchecked")
		List<State> getSelectedState=(List<State>)criteria.list();
		
		return getSelectedState;
	}
	
	

}
