package com.test.config;

import java.util.Properties;

import javax.sql.DataSource;
 
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan({ "com.tms" })
public class HibernateTestConfig {
	
	@Autowired
    private Environment environment;
 
    @Bean
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(new String[] { "com.tms" });
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
    }
 
    @Bean(name = "dataSource")
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
       // dataSource.setDriverClassName("org.h2.Driver");
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
       //dataSource.setUrl("jdbc:h2:mem:test2;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE");
       dataSource.setUrl("jdbc:mysql://localhost:3306/tms?zeroDateTimeBehavior=convertToNull");
        dataSource.setUsername("root");
        dataSource.setPassword("root");
        return dataSource;
    }
 
    private Properties hibernateProperties() {
        Properties properties = new Properties();
       //properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
       properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
       properties.put("hibernate.show_sql", "true");
       //properties.put("hibernate.hbm2ddl.auto", "create-drop");
       //properties.put("hibernate.hbm2ddl.import_files","tms_app_user.sql,tms_user_profile.sql,tms_app_user_user_profile.sql");
        return properties;
    }
 
    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory s) {
        HibernateTransactionManager txManager = new HibernateTransactionManager();
        txManager.setSessionFactory(s);
        return txManager;
    }

}
