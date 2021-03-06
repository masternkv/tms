

package com.tms.dao;

import java.util.List;









import org.hibernate.Query;
import org.hibernate.Session;
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
		String hql="from Address a inner join a.schoolDetails inner join a.countryDetails inner join a. stateDetails order by a.addressId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 	
		List<Object[]> listResult = query.list();
		return listResult;
	}
	@Override
	public List<Object[]> getAddressById(Integer schoolId) {
		System.out.println("Serching...................");
		String hql="from Address a inner join a.schoolDetails inner join a.countryDetails inner join a. stateDetails where a.addressId=:schoolId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("schoolId", schoolId);
		 List<Object[]> addressById =query.list();
		 /*for (Object[] aRow : addressById) {
			    Address address = (Address) aRow[0];
			    School school = (School) aRow[1];
			    Country country=(Country)aRow[2];
			    System.out.println(address.getAddressLane1()+ " - " + school.getSchoolName()+" - "+country.getCountryId());
			}*/
		 
		return addressById;
	}
	@Override
	public boolean deleteAddressById(Integer schoolId) {
		Session session=sessionFactory.getCurrentSession();
		try {
			Address addrs=(Address)session.load(Address.class,schoolId );
			session.delete(addrs);
			return true;
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

}
