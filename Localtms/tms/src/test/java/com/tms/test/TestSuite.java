package com.tms.test;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;
import static org.mockito.Matchers.*;

import com.tms.dao.UserDao;
import com.tms.model.User;
import com.tms.service.CustomUserDetailsService;
import com.tms.service.UserService;
import com.tms.service.UserServiceImpl;

//@RunWith()
public class TestSuite {
	
	@Mock
	UserDao userDao;
	@InjectMocks
	UserServiceImpl userServiceImpl;
	@Spy
    List<User> users = new ArrayList<User>();
	       
@Before
	public  void setMock()
	{
		MockitoAnnotations.initMocks(this);
		users=getUserList();
	}
	
	
	@Test
	public void testMockCreation()
	{
		
		
		assertNotNull(userDao);
		assertNotNull(userServiceImpl);
		//assertNotNull(user);
	}
	
	@Test
	public void testFindById()
	{
		User user=users.get(0);
		int i=100;
     when(userDao.findById(i)).thenReturn(user);
     System.out.print("UserDao return value"+userDao.findById(anyInt()));
	 assertEquals(userServiceImpl.findById(user.getId()),user);
	 System.out.print(""+userServiceImpl.findById(user.getId()));
	}
	public List<User> getUserList(){
        User user1 = new User();
        user1.setId(100);
        user1.setSsoId("bill");
        user1.setPassword("abc123");
        user1.setFirstName("Bill");
        user1.setLastName("Watcher");
        user1.setEmail("bill@xyz.com");
        user1.setState("Active");
       
         users.add(user1);
        
        //employees.add(e2);
        return users;
    }
	
	
}
