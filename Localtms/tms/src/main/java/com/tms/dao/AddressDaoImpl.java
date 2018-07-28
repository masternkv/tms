
package com.tms.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tms.model.Address;

@Repository
public class AddressDaoImpl implements AddressDao{
   @Autowired
   private SessionFactory sessionFactory;
	@Override
	public void saveAddress(Address addr) {
		sessionFactory.getCurrentSession().saveOrUpdate(addr);		
	}

}
