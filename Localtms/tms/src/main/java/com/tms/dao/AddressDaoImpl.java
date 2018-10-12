
package com.tms.dao;

import java.util.List;






import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tms.model.Address;
import com.tms.model.Country;
import com.tms.model.School;

@Repository
public class AddressDaoImpl implements AddressDao{
   @Autowired
   private SessionFactory sessionFactory;
	@Override
	public void saveAddress(Address addr) {
		sessionFactory.getCurrentSession().saveOrUpdate(addr);		
	}
	@Override
	public List<Object[]> getAllSchAddress() {
		// TODO Auto-generated method stub
		String hql="from Address a inner join a.schoolDetails inner join a.countryDetails inner join a. stateDetails";
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 
		
		List<Object[]> listResult = query.list();
	

		for (Object[] aRow : listResult) {
		    Address address = (Address) aRow[0];
		    School school = (School) aRow[1];
		    Country country=(Country)aRow[2];
		    System.out.println(address.getAddressLane1()+ " - " + school.getSchoolName()+" - "+country.getCountryId());
		}
		return listResult;
	}

}
