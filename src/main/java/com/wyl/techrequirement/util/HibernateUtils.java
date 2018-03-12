package com.wyl.techrequirement.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * 
 * 唯一的SessionFactory对象
 * 
 */
public class HibernateUtils {
	private static SessionFactory sessionFactory;

	static {
		try {
			Configuration configuration = new Configuration();
			// mysql
			 configuration.configure();
			// oracle
//			configuration.configure("hibernate.oracle.cfg.xml");
			// hibernate.不在hibernate.cfg.xml配置就必须添加前缀
			// 修改格式化配置
			// configuration.getProperties().put("hibernate.format_sql", true);
			// configuration.getProperties().put("hibernate.dialect",
			// "org.hibernate.dialect.MySQLDialect");
			// 加载entityClass,会对应加载当前包映射文件：Employee.hbm.xml
			// configuration.addClass(Employee.class);
			// 从hibernate4.x开始,抽取一个服务对象,可以让很牛叉程序员更改默认的服务实现
			// ServiceRegistry serviceRegistry = new
			// StandardServiceRegistryBuilder()
			// .build();
			// sessionFactory =
			// configuration.buildSessionFactory(serviceRegistry);
			sessionFactory = configuration.buildSessionFactory();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("解析配置文件或者映射文件出现异常：" + e.getMessage());
		}
	}

	public static Session getSession() {
		return sessionFactory.openSession();
		// return sessionFactory.getCurrentSession();
	}
}
