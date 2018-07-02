package com.tms.test;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;
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
import com.tms.test.dao.UserDaoImplTest;
import com.tms.test.service.UserServiceTest;

@RunWith(Suite.class)
@SuiteClasses({UserServiceTest.class,UserDaoImplTest.class}
)
public class TestSuite {
	
	
	
}
