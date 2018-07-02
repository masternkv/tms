package com.tms.test.dao;
import java.util.List;

import org.dbunit.dataset.IDataSet;
import org.dbunit.dataset.xml.FlatXmlDataSet;
//import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.testng.Assert;
import org.testng.annotations.Test;

import com.tms.dao.UserDao;
import com.tms.model.User;

public class UserDaoImplTest extends EntityDaoImplTest {

	@Autowired
	UserDao userDao;
	  @Override
	    protected IDataSet getDataSet() throws Exception{
	        IDataSet dataSet = new FlatXmlDataSet(this.getClass().getClassLoader().getResourceAsStream("User.xml"));
	        return dataSet;
	    }
	  
	  @Test
	    public void findById(){
	        Assert.assertNotNull(userDao.findById(1));
	        Assert.assertNull(userDao.findById(3));
	    }
	  
	  public User getUserList() {
			User user1 = new User();
			user1.setId(100);
			user1.setSsoId("bill");
			user1.setPassword("abc123");
			user1.setFirstName("Bill");
			user1.setLastName("Watcher");
			user1.setEmail("bill@xyz.com");
			user1.setState("Active");
			return user1;
		}

}
