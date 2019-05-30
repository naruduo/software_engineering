package com.se.dao;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.se.pojo.HomeworkAnswer;
import com.se.util.HibernateUtil;

public class HomeworkAnswerDao extends BaseDAO<HomeworkAnswer> {

	public boolean addOrUpdate(HomeworkAnswer ha) {
		Session session = HibernateUtil.getSession();

		session.saveOrUpdate(ha);

		HibernateUtil.closeSession();
		return true;
	}

	public HomeworkAnswer get(int homeworkId, int studentId) {
		Session session = HibernateUtil.getSession();
		String hql = "FROM HomeworkAnswer WHERE homeworkId=:hwId AND studentId=:stuId";
		Query q = session.createQuery(hql);
		q.setParameter("hwId", homeworkId).setParameter("stuId", studentId);
		HomeworkAnswer ha = null;
		try {
			ha = (HomeworkAnswer) q.uniqueResult();
		} catch (Exception e) {
			// e.printStackTrace();
		}
		HibernateUtil.closeSession();
		return ha;
	}

	public boolean delete(int homeworkId, int studentId) {
		Session session = HibernateUtil.getSession();
		HomeworkAnswer ha = get(homeworkId, studentId);
		if (ha != null) {
			session.delete(ha);
		}
		HibernateUtil.closeSession();
		return true;
	}
}