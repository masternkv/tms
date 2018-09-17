package com.tms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import org.springframework.transaction.annotation.Transactional;

import com.tms.dao.StateDao;
import com.tms.model.State;

@Service
public class StateServiceImpl  implements StateService{

	@Autowired
	StateDao stateDao;
	@Override
	@Transactional
	public List<State> getSelectedState(Integer state) {
		
		return stateDao.getSelectedSate(state);
	}

	

}
