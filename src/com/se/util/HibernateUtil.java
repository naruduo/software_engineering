package com.se.util;

import org.hibernate.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtil {
	private static SessionFactory sessionFactory = null;
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();

	static {
		/*
		 * Configuration cfg = new Configuration().configure(); ServiceRegistry
		 * serviceRegistry = new StandardServiceRegistryBuilder()
		 * .applySettings(cfg.getProperties()).build(); sessionFactory =
		 * cfg.buildSessionFactory(serviceRegistry);
		 */
		// 读取hibernate.cfg.xml文件
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml")
				.build();
		// 2. 根据服务注册类创建一个元数据资源集，同时构建元数据并生成应用一般唯一的的session工厂
		sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static void setSessionFactory(SessionFactory sessionFactory) {
		HibernateUtil.sessionFactory = sessionFactory;
	}

	public static Session getSession() throws HibernateException {
		Session session = (Session) threadLocal.get();
		if (session == null || !session.isOpen()) {
			session = (sessionFactory != null) ? sessionFactory.openSession() : null;
			threadLocal.set(session);
		}
		if (!session.getTransaction().isActive())
			session.beginTransaction();
		return session;
	}

	public static void closeSession() throws HibernateException {
		Session session = (Session) threadLocal.get();
		threadLocal.set(null);
		if (session != null) {
			session.getTransaction().commit();
			session.close(); // 关闭Session
		}
	}

}
