package com.se.service;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.se.dao.PuzzleDAO;
import com.se.pojo.Puzzle;
import com.se.util.HibernateUtil;
import com.se.util.Page;

public class PuzzleService {
	
	private PuzzleDAO pzDAO = new PuzzleDAO(); 
	
	
	/**
	 * @description 获取一个问题
	 * @param puzzleId 该问题id
	 * @return 问题对象
	 */
	public Puzzle get(Integer puzzleId) {
		return pzDAO.get(Puzzle.class, puzzleId);
	}
	
	
	/**
	 * @description 新建问题
	 * @param usrPuzzle 问题信息
	 * @return 是否保存成功
	 */
	public Boolean save(Puzzle usrPuzzle) {
		usrPuzzle.setTime(new Date());
		return pzDAO.add(usrPuzzle);
	}
	
	
	/**
	 * @description 编辑问题
	 * @param usrPuzzle 新问题信息
	 * @return 是否修改成功
	 */
	public Boolean edit(Puzzle usrPuzzle) {
		Puzzle puzzle = pzDAO.get(Puzzle.class, usrPuzzle.getPuzzleId());
		Session session = HibernateUtil.getSession();
		Transaction transaction = session.beginTransaction();
		try {
			puzzle.setDescription(usrPuzzle.getDescription());
			transaction.commit();
		} catch(Exception ex) {
			ex.printStackTrace();
			transaction.rollback();
			return false;
		}
		return true;		
	}

	
	/**
	 * @description 根据id删除问题
	 * @param puzzleId 问题id
	 * @return 是否成功删除
	 */
	public Boolean deleteById(Integer puzzleId) {
		Transaction tx = HibernateUtil.getSession().beginTransaction();
		try {
			pzDAO.delete(Puzzle.class, puzzleId);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	
	/**
	 * @description 分页列出所有问题
	 * @param p 
	 * @return 问题列表
	 */
	public List<Puzzle> listByPage(Page p) {
		p.setTotal(pzDAO.getTotal(Puzzle.class));
		return pzDAO.listByPage(Puzzle.class, p.getStart(), p.getCount());
	}
	
	
	/**
	 * @description 分页列出指定学生所有问题
	 * @param sno 该学生学号
	 * @param p 
	 * @return 问题列表
	 */
	public List<Puzzle> listStusByPage(Integer sno, Page p) {
		return pzDAO.listByPageAndFKey(Puzzle.class, "student.id", sno, p);
	}
	
}
