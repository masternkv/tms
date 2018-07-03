package com.tms.test.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
//import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.testng.Assert;




import com.test.config.HibernateTestConfig;
import com.tms.dao.UserDao;
import com.tms.model.User;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations ="classpath:/applicationContextTest.xml")
@ContextConfiguration(classes =HibernateTestConfig.class)
@TransactionConfiguration(defaultRollback = true)
public class UserDaoImplTest_1 {

	@Autowired
	UserDao userDao;

	@Test
	public void testFindById() {
		Assert.assertNotNull(userDao.findById(100));
		//Assert.assertNull(userDao.findById(3));
	}

	/*public User getUserList() {
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
*/
}
