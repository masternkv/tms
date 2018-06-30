package com.tms.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tms.model.User;

@Repository("userDao")
public class UserDaoImpl implements  UserDao {
	@Autowired
	 SessionFactory sessionFactory;
	    public void setSessionFactory(SessionFactory sf)
	    {
	        this.sessionFactory=sf;
	    }
	
	public User findById(int id)
	{
		Session session = this.sessionFactory.getCurrentSession();
		return (User)session.get(User.class, id);
	}
	 public  User findBySSO(String sso)
	 {
		 Session session = this.sessionFactory.getCurrentSession();
		 Criteria crit = session.createCriteria(User.class);
	        crit.add(Restrictions.eq("ssoId", sso));
	        return (User)crit.uniqueResult();
	 }

}
