package com.tms.service.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Matchers.anyInt;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;

import com.tms.dao.UserDao;
import com.tms.model.User;
import com.tms.service.UserServiceImpl;

public class UserServiceTest {

	@Mock
	UserDao userDao;
	@InjectMocks
	UserServiceImpl userServiceImpl;
	@Spy
	List<User> users = new ArrayList<User>();

	@Before
	public void setMock() {
		MockitoAnnotations.initMocks(this);
		users = getUserList();
	}

	@Test
	public void testMockCreation() {

		assertNotNull(userDao);
		assertNotNull(userServiceImpl);
		// assertNotNull(user);
	}

	@Test
	public void testFindById() {
		User user = users.get(0);
		int i = 100;
		when(userDao.findById(i)).thenReturn(user);
		assertEquals(userServiceImpl.findById(user.getId()), user);
	}

	public List<User> getUserList() {
		User user1 = new User();
		user1.setId(100);
		user1.setSsoId("bill");
		user1.setPassword("abc123");
		user1.setFirstName("Bill");
		user1.setLastName("Watcher");
		user1.setEmail("bill@xyz.com");
		user1.setState("Active");

		users.add(user1);

		// employees.add(e2);
		return users;
	}

}
