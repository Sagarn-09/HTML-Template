package com.pg.config;

//import java.util.Properties;
//
//import javax.sql.DataSource;
//
//import org.apache.commons.dbcp2.BasicDataSource;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.PropertySource;
//import org.springframework.core.env.Environment;
//
//import org.springframework.orm.hibernate4.HibernateTransactionManager;
//import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//@Configuration
//@PropertySource("classpath:resources/database.properties")
//@EnableTransactionManagement
//@ComponentScan(basePackages = {
//    "com.ecartes"
//})
public class AppContext {
//
//    @Autowired
//    private Environment environment;
//
//    @Bean
//    public LocalSessionFactoryBean sessionFactory() {
//        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
//        sessionFactory.setDataSource(dataSource());
//        sessionFactory.setPackagesToScan(new String[] {
//            "com.ecartes.model"
//        });
//        sessionFactory.setHibernateProperties(hibernateProperties());
//        return sessionFactory;
//    }
//
//    @Bean
//    public DataSource dataSource() {
//        BasicDataSource dataSource = new BasicDataSource();
//        dataSource.setDriverClassName(environment.getRequiredProperty("database.driver"));
//        dataSource.setUrl(environment.getRequiredProperty("database.url"));
//        dataSource.setUsername(environment.getRequiredProperty("database.user"));
//        dataSource.setPassword(environment.getRequiredProperty("database.password"));
//        
//        // Connection pool settings
//        dataSource.setMaxTotal(10); // Maximum active connections
//        dataSource.setMaxIdle(5);  // Maximum idle connections
//        dataSource.setMinIdle(3);   // Minimum idle connections
//        dataSource.setInitialSize(3); // Initial connections in the pool
//        dataSource.setTestOnBorrow(true); // Test connections before borrowing
//        dataSource.setValidationQuery("SELECT 1"); // Validation query
//
//        return dataSource;
//    }
//
//    private Properties hibernateProperties() {
//        Properties properties = new Properties();
//        properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
//        properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
//        properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
//        properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
//        return properties;
//    }
//
//    @Bean
//    public HibernateTransactionManager getTransactionManager() {
//        HibernateTransactionManager transactionManager = new HibernateTransactionManager();
//        transactionManager.setSessionFactory(sessionFactory().getObject());
//        return transactionManager;
//    }
}