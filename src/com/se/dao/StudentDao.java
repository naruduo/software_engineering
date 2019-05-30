package com.se.dao;

import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.se.pojo.Student;
import com.se.util.HibernateUtil;

public class StudentDao extends BaseDAO<Student> {
	public Student get(int id) {
		return super.get(Student.class, id);
	}

	public List<Student> getTeachersStudent(int teacherId) {
		String hql = "FROM Student WHERE teacherId=?1 ORDER BY id ASC";
		Session session = HibernateUtil.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(1, teacherId);
		List<Student> list = (List<Student>) query.getResultList();
		HibernateUtil.closeSession();
		return list;
	}
}
