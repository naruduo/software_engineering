package com.se.dao;

import org.hibernate.Session;

import com.se.pojo.TestScore;
import com.se.util.HibernateUtil;

public class TestScoreDao {
	public TestScore get(int stuId) {
		Session session = HibernateUtil.getSession();
		TestScore ts = session.get(TestScore.class, stuId);
		HibernateUtil.closeSession();
		return ts;
	}

	public void add(TestScore ts) {
		Session session = HibernateUtil.getSession();
		System.out.println(ts);
		session.save(ts);
		HibernateUtil.closeSession();
	}
}
