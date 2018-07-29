package com.tms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tms.dao.SchoolDao;
import com.tms.model.School;

@Service
public class SchoolServiceImpl implements SchoolService{
	
    @Autowired
    SchoolDao schoolDao;
	@Override
	@Transactional
	public List<School> getAllSchool() {
		// TODO Auto-generated method stub
		return schoolDao.getAllSchool();
	}

}
