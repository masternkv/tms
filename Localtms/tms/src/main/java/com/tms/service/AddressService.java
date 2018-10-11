package com.tms.service;

import java.util.List;

import com.tms.model.Address;

public interface AddressService {

	public void saveAddress(Address addr);
	public List<Object[]>getAllSchAddress();
}
