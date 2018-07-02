package com.tms.test.dao;


import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.dbunit.database.DatabaseDataSourceConnection;
import org.dbunit.database.IDatabaseConnection;
import org.dbunit.dataset.IDataSet;
import org.dbunit.operation.DatabaseOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.BeforeMethod;

import com.test.config.HibernateTestConfig;
import com.tms.controller.LoginController;


@ContextConfiguration(classes = { HibernateTestConfig.class })
public abstract class EntityDaoImplTest extends AbstractTransactionalTestNGSpringContextTests {

	public static final Logger logger=Logger.getLogger(EntityDaoImplTest.class);
	
   @Autowired
   DataSource dataSource;

   @BeforeMethod
   public void setUp() throws Exception {
	   logger.info("In abstract class");
       IDatabaseConnection dbConn = new DatabaseDataSourceConnection(
               dataSource);
       DatabaseOperation.CLEAN_INSERT.execute(dbConn, getDataSet());
   }
    
   protected abstract IDataSet getDataSet() throws Exception;

}
