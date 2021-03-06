package com.tms.service;


import java.util.List;

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
	@Override
	@Transactional
	public List<Object[]> getAllSchAddress() {
		
		return addrDao.getAllSchAddress();
	}
	@Override
	@Transactional
	public List<Object[]> getAddressById(Integer schoolId) {
		// TODO Auto-generated method stub
		return addrDao.getAddressById(schoolId);
	}
	@Override
	@Transactional
	public boolean deleteAddressById(Integer schoolId) {
		// TODO Auto-generated method stub
		return addrDao.deleteAddressById(schoolId);
	}
	

}
