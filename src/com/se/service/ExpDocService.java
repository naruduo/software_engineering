package com.se.service;

import java.io.File;
import java.util.Date;
import java.util.List;

import org.hibernate.sql.Delete;

import com.se.dao.ExpDAO;
import com.se.dao.ExpDocDAO;
import com.se.pojo.Exp;
import com.se.pojo.ExpDoc;
import com.se.pojo.Student;
import com.se.util.Page;

import freemarker.core.ReturnInstruction.Return;

public class ExpDocService  {
	
	private ExpDocDAO expDocDAO = new ExpDocDAO();
	private FileService fileService = new FileService();
	
	
	/**
	 * 上传实验报告
	 * @param uploadFileName 实验报告文件名
	 * @param uploadFile 实验报告文件
	 * @param exp 附属实验信息
	 * @param stu 附属学生信息
	 * @return 上传是否成功
	 */
	public boolean upload(String uploadFileName, File uploadFile, Exp exp, Student stu) {
		if(fileService.upload(stu.getId(), uploadFileName, uploadFile)) {
			//上传成功
			ExpDoc expDoc = new ExpDoc();
			expDoc.setExpDocName(uploadFileName);
			expDoc.setSubTime(new Date());
			expDoc.setExp(exp);
			expDoc.setStu(stu);
			expDocDAO.add(expDoc);
			return true;
		} 
		else 
			//上传失败
			return false;
	}
	
	/**
	 * 根据指定学号分页列出实验报告
	 * @param sno 学号
	 * @param p 分页信息
	 * @return 部分实验报告信息
	 */
	public List<ExpDoc> listStuExpDocs(int sno, Page p) {
		return expDocDAO.listByPageAndFKey(ExpDoc.class, "stu.id", sno, p);
	}
	
	/**
	 * 删除指定实验报告
	 * @param expDoc 要删除的实验报告信息
	 * @return 删除是否成功
	 */
	public boolean delete(ExpDoc expDoc) {
		//根据id获取详细实验报告信息
		expDoc = expDocDAO.get(ExpDoc.class, expDoc.getExpDocId());
		System.out.println(expDoc.getStu().getId() + " " + expDoc.getExpDocName());
		//文件删除失败
		if(!fileService.delete(expDoc.getStu().getId(), expDoc.getExpDocName()))
			return false;
		return expDocDAO.delete(ExpDoc.class, expDoc.getExpDocId());
	}
	
	/**
	 * 更新实验报告 
	 * 暂时只可更改实验报告文件
	 * @param uploadFileName 新报告名
	 * @param uploadFile 新报告文件
	 * @param expDoc 要更新的实验报告信息
	 * @return 是否成功更新
	 */
	public boolean update(String uploadFileName, File uploadFile, ExpDoc expDoc) {
		/*
		 * 实验报告可更改数据只有文件
		 * 假如没有新的文件
		 * 则不进行更新
		 */
		if(uploadFile == null)
			return false;
		//删除旧实验报告 上传新实验报告
		if(!(fileService.delete(expDoc.getStu().getId(), expDoc.getExpDocName())
				&&
			fileService.upload(expDoc.getStu().getId(), uploadFileName, uploadFile)))
				return false;
		//获取旧的实验报告信息
		ExpDoc oldExpDoc = expDocDAO.get(ExpDoc.class, expDoc.getExpDocId());
		oldExpDoc.setExpDocName(uploadFileName);
		expDocDAO.update(oldExpDoc);
		return true;
	}
	
	/**
	 * 根据指定实验号分页列出实验报告
	 * @param expDoc 附属实验的信息
	 * @param p 分页信息
	 * @return 部分实验报告信息
	 */
	public List<ExpDoc> listExpsExpDocs(ExpDoc expDoc, Page p) {
		return expDocDAO.listByPageAndFKey(ExpDoc.class, "exp.expId", expDoc.getExp().getExpId(), p);
	}
	
	/**
	 * 评分
	 * @param expDoc 含分数的报告信息
	 */
	public void markExpDoc(ExpDoc expDoc) {
		ExpDoc oldExpDoc = expDocDAO.get(ExpDoc.class, expDoc.getExpDocId());
		oldExpDoc.setScore(expDoc.getScore());
		expDoc.setExp(oldExpDoc.getExp());
		expDocDAO.update(oldExpDoc);
	}
	
}
