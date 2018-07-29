package com.tms.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tms.model.School;

@Repository
public class SchoolDaoImpl implements SchoolDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<School> getAllSchool() {
		
		Criteria getAllCrit=sessionFactory.getCurrentSession().createCriteria(School.class);
		getAllCrit.setProjection(Projections.property("schoolId"));
		List<School> getAll=getAllCrit.list();
	    return getAll;
	}
	
}
