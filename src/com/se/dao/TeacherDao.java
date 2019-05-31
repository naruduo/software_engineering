package com.se.dao;

import java.util.List;

import org.hibernate.query.Query;

import com.se.pojo.Exp;
import com.se.pojo.Teacher;
import com.se.util.HibernateUtil;
import com.se.util.Page;

public class TeacherDao extends BaseDAO<Teacher> {
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Exp> listExpsWithPage(int tid, Page p) {
		//获取该教师对应的总实验数
		String countHql = "SELECT COUNT(*) FROM Exp exp WHERE exp.teacher.id=:tid";
		Query countQuery = HibernateUtil.getSession().createQuery(countHql);
		countQuery.setParameter("tid", tid);
		p.setTotal(Integer.valueOf(countQuery.uniqueResult().toString()));
		//按教师id查询其发布的实验
		String expHql = "FROM Exp exp WHERE exp.teacher.id=:tid";
		Query expQuery = HibernateUtil.getSession().createQuery(expHql);
		expQuery.setParameter("tid", tid);
		p.setTotal(expQuery.list().size());
		expQuery.setFirstResult(p.getStart()).setMaxResults(p.getCount());
		return expQuery.list();
	}

}
