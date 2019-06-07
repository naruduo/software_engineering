package com.se.dao;

import java.io.File;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.se.pojo.Homework;
import com.se.pojo.HomeworkAnswer;
import com.se.service.HomeworkService;
import com.se.util.FileUtils;
import com.se.util.HibernateUtil;
import com.se.util.SessionUtils;

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

	public List<HomeworkAnswer> list(int homeworkId) {
		Session session = HibernateUtil.getSession();
		String hql = "FROM HomeworkAnswer WHERE homeworkId=:hwId";
		Query q = session.createQuery(hql);
		q.setParameter("hwId", homeworkId);
		List<HomeworkAnswer> homeworkAnswers;
		homeworkAnswers = q.getResultList();
		HibernateUtil.closeSession();
		return homeworkAnswers;
	}

	public void PackHomeworkAnswers(int homeworkId) {
		HomeworkService hs = new HomeworkService();
		Homework hw = hs.get(homeworkId);
		String realPath = SessionUtils.getRealPath("download");
		List<HomeworkAnswer> homeworkAnswers = list(homeworkId);
		List<File> sourceFiles = new LinkedList<File>();
		for (HomeworkAnswer ha : homeworkAnswers) {
			sourceFiles.add(new File(realPath + File.separator + ha.getStudentId(), ha.getAddress()));
		}
		FileUtils.filesToZip(sourceFiles, realPath + File.separator + hw.getTeacher().getId(),
				hw.getName() + "Answers");
	}
}