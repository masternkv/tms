package com.tms.test;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;
import static org.mockito.Matchers.*;

import com.tms.dao.UserDao;
import com.tms.model.User;
import com.tms.service.CustomUserDetailsService;
import com.tms.service.UserService;

//@RunWith()
public class TestSuite {
	@Mock
	 private UserService userService;
	@InjectMocks
	 private CustomUserDetailsService customUserDetailsService;
	//private static User user;

@Before
	public  void setMock()
	{
		MockitoAnnotations.initMocks(this);
		
	}
	
	
	@Test
	public void testMockCreation()
	{
		
		
		assertNotNull(userService);
		assertNotNull(customUserDetailsService);
		//assertNotNull(user);
	}
	
	@Test
	public void testFindById()
	{
		String a="bill";
		//User user=userDao.findBySSO(a);
		
	    //when(userDao.findBySSO(a)).thenReturn(user);
	    
	   // assertEquals("bill",user.getFirstName());
	}
	
	
	
}
