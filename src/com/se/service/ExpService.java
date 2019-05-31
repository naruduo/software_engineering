package com.se.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.se.dao.ExpDAO;
import com.se.pojo.Exp;
import com.se.util.HibernateUtil;

public class ExpService {
	
	/*
	 * 教师上传实验文件
	 * 后端保存实验文件信息
	 */
	public void  upload(Exp  exp) {
		//开启事务
		Session session = HibernateUtil.getSession();
		Transaction trans = session.beginTransaction();
		//保存文件
		try {
			session.save(exp);
			trans.commit();
		} catch(HibernateException he) {
			//事务执行失败 -> 回滚
			he.printStackTrace();
			trans.rollback();
		}
	}
	
}
