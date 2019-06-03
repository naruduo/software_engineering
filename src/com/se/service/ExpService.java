package com.se.service;

import java.io.File;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.se.dao.ExpDAO;
import com.se.pojo.Exp;
import com.se.pojo.Teacher;
import com.se.util.HibernateUtil;
import com.se.util.Page;

public class ExpService {
	
	private ExpDAO expDAO = new ExpDAO();
	
	public Exp getExp(int expId) {
		return expDAO.get(Exp.class, expId);
	}
	
	/**
	 * 教师更新实验信息
	 */
	public boolean update(Exp exp, String uploadFileName, File uploadFile, int tid) {
		//获取原文件信息
		Exp oldExp = expDAO.get(Exp.class, exp.getExpId());
		/*
		 * 如果上传文件的文件名不为空
		 * 则删除原文件
		 * 上传新文件
		 */
		if(uploadFileName != null&&!"".equals(uploadFileName)) {
			exp.setExpName(uploadFileName);
			oldExp.setExpName(exp.getExpName());
			FileService fileService = new FileService();
			if(!fileService.delete(tid, oldExp.getExpName()))
				//原文件删除失败 返回否
				return false;
			if(!fileService.upload(tid, uploadFileName, uploadFile))
				//上传文件失败 返回否
				return false;
		}
		//更改截止时间
		if(exp.getDeadline() != null)
			oldExp.setDeadline(exp.getDeadline());
		expDAO.update(oldExp);
		return true;
	}
	
	public List<Exp> listMyExps(int tid, Page p) {
		return expDAO.listExpsWithPage(tid, p);
	}
	
	/**
	 * 教师上传实验文件
	 * 后端保存实验文件信息
	 * @param teacher 更改文件的教师信息
	 */
	public boolean upload(Exp exp, String uploadFileName, File uploadFile, Teacher teacher) {
		FileService fileService = new FileService();
		if(!fileService.upload(teacher.getId(), uploadFileName, uploadFile))
			//上传失败
			return false;
		//若上传成功 则新增实验信息
		exp.setExpName(uploadFileName);
		exp.setReleaseTime(new Date());
		exp.setTeacher(teacher);
		//保存文件
		HibernateUtil.getSession().save(exp);
		HibernateUtil.closeSession();
		return true;
	}
	
}
