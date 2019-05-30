package com.se.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.se.pojo.OperationLog;
import com.se.util.HibernateUtil;
import com.se.util.Page;

public class OperationLogDao extends BaseDAO<OperationLog> {
	public List<OperationLog> get(int userId, int from, int count) {
		Session session = HibernateUtil.getSession();
		String hql = "FROM OperationLog WHERE studentId=?1 ORDER BY operationTime DESC";
		Query q = (Query) session.createQuery(hql);
		q.setParameter(1, userId).setFirstResult(from).setMaxResults(count);
		q.getParameterValue(1);
		List<OperationLog> operations = q.list();
		HibernateUtil.closeSession();
		return operations;
	}
}
