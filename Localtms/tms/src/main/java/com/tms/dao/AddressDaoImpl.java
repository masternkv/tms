
package com.tms.dao;

import java.util.List;

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
	@Override
	public List<Object[]> getAllSchAddress() {
		// TODO Auto-generated method stub
		String hql="form Address a inner join a.School ";
		
		/*String hql = "from Product p inner join p.category";
		 
		Query query = session.createQuery(hql);
		List<Object[]> listResult = query.list();
		 
		for (Object[] aRow : listResult) {
		    Product product = (Product) aRow[0];
		    Category category = (Category) aRow[1];
		    System.out.println(product.getName() + " - " + category.getName());
		}*/
		return null;
	}

}
