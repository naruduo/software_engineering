package com.se.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Transient;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.se.dao.SolutionDAO;
import com.se.dao.StudentDao;
import com.se.dao.TeacherDao;
import com.se.pojo.Puzzle;
import com.se.pojo.Solution;
import com.se.pojo.Student;
import com.se.pojo.Teacher;
import com.se.util.HibernateUtil;
import com.se.util.Page;

public class SolutionService {
	
	private SolutionDAO solutionDAO = new SolutionDAO();
	
	//保存
	public Boolean save(Solution solution) {
		//内容不能为空
		solution.setTime(new Date());
		solution.setLikeFreq(0);
		return solutionDAO.add(solution);
	}
	
	//点赞
	public Integer like(Integer id) {
		Solution solution = solutionDAO.get(Solution.class, id);
		try {
			solution.setLikeFreq(solution.getLikeFreq()+1);
			solutionDAO.update(solution);
		} catch(Exception ex) {
			ex.printStackTrace();
			return -1;
		}
		return solution.getLikeFreq();
	}
	
	//编辑回答
	public Boolean edit(Solution usrSolution) {
		try {
			Solution solution = solutionDAO.get(Solution.class, usrSolution.getSolutionId());
			solution.setContent(usrSolution.getContent());
			solutionDAO.update(solution);
		} catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		return true;	
	}
	
	//删除回答
	public Boolean delete(Solution solution) {
		try {
			System.out.println(solution.getSolutionId());
			solutionDAO.delete(Solution.class, solution.getSolutionId());
			HibernateUtil.closeSession();
		} catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		return true;	
	}

	
	/**
	 * 根据问题id列出所有回答
	 * @param solution
	 * @param p
	 * @return 回答列表
	 */
	public List<Solution> listPuzzlesSolution(Solution solution, Page p) {
		return solutionDAO.listByPageAndFKey(Solution.class, "puzzle.puzzleId", solution.getPuzzle().getPuzzleId(), p);
	}
	
	/**
	 * 根据回答列表的答题者id获取所有用户名
	 * @param solutions
	 * @return 用户名列表
	 */
	public List<String> getSoluerName(List<Solution> solutions) {
		List<String> soluersName = new ArrayList<String>();
		StudentDao sd = new StudentDao();
		TeacherDao td = new TeacherDao();
		for(Solution s : solutions) {
			//学生
			Object user = null;
			if((user = sd.get(s.getSoluerId())) != null)
				soluersName.add(((Student)user).getName());
			else {
				user = td.get(Teacher.class, s.getSoluerId());
				soluersName.add(((Teacher)user).getName());
			}
		}
		return soluersName;
	}
	
}
