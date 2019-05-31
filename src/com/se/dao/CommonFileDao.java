package com.se.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.se.pojo.CommonFile;
import com.se.util.HibernateUtil;

public class CommonFileDao extends BaseDAO<CommonFile> {
	public List<CommonFile> getType(int fileType, int from, int count) {
		Session session = HibernateUtil.getSession();
		String hql = "FROM CommonFile WHERE fileType=?1 ORDER BY releaseTime DESC";
		Query query = session.createQuery(hql);
		query.setParameter(1, fileType).setFirstResult(from).setMaxResults(count);
		List<CommonFile> list = query.getResultList();
		HibernateUtil.closeSession();
		return list;
	}

	public long getTypeTotal(int fileType) {
		Session session = HibernateUtil.getSession();
		String hql = "SELECT COUNT(id) FROM CommonFile WHERE fileType=?1";
		Query query = session.createQuery(hql);
		query.setParameter(1, fileType);
		long total = (long) query.uniqueResult();
		HibernateUtil.closeSession();
		return total;
	}
}
