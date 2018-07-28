package com.tms.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tms.dao.AddressDao;
import com.tms.model.Address;
@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
    private AddressDao addrDao;
	@Override
	@Transactional
	public void saveAddress(Address addr) {
		
		addrDao.saveAddress(addr);
	}
	

}
