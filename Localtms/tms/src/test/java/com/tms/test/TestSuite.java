package com.tms.test;


import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.tms.test.dao.UserDaoImplTest;
import com.tms.test.service.UserServiceTest;

@RunWith(Suite.class)
@SuiteClasses({UserServiceTest.class,UserDaoImplTest.class}
)
public class TestSuite {
	
	
	
}
