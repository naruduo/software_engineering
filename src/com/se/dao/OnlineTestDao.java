package com.se.dao;

import org.hibernate.Session;
import org.hibernate.query.Query;

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

	public long total(String hql, Object... params) {
		Session s = HibernateUtil.getSession();
		System.out.println(hql);
		Query q = s.createQuery(hql);
		for (int i = 0; i < params.length; ++i)
			q.setParameter(i, params[i]);
		Long total = (Long) q.uniqueResult();
		HibernateUtil.closeSession();
		return total;
	}
}
