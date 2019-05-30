package com.se.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.se.pojo.Homework;
import com.se.util.HibernateUtil;

public class HomeworkDao extends BaseDAO<Homework> {

	public List<Homework> list(int teacherId, int from, int count) {
		Session session = HibernateUtil.getSession();
		String hql = "From Homework WHERE teacher.id=?1 ORDER BY deadline DESC";
		Query<Homework> query = session.createQuery(hql, Homework.class);
		query.setParameter(1, teacherId).setMaxResults(count).setFirstResult(from);
		List<Homework> homeworks = query.getResultList();
		HibernateUtil.closeSession();
		return homeworks;
	}

	public long getTotal(int teacherId) {
		Session session = HibernateUtil.getSession();
		String hql = "SELECT COUNT(id) From Homework WHERE teacher.id=?1";
		Query query = session.createQuery(hql);
		query.setParameter(1, teacherId);
		long total = (Long) query.uniqueResult();
		HibernateUtil.closeSession();
		return total;
	}

}
