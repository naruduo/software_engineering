package com.se.dao;

import org.hibernate.Session;
import com.se.pojo.OnlineTest;
import com.se.util.HibernateUtil;

public class OnlineTestDao extends BaseDAO<OnlineTest> {
	public OnlineTest get(int id) {
		Session session = HibernateUtil.getSession();
		OnlineTest ot = session.get(OnlineTest.class, id);
		HibernateUtil.closeSession();
		return ot;
	}

	public Boolean add(OnlineTest ot) {
		Session session = HibernateUtil.getSession();
		session.persist(ot);
		HibernateUtil.closeSession();
		return true;
	}
}
