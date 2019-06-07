package com.se.service;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.se.dao.HomeworkAnswerDao;
import com.se.pojo.Homework;
import com.se.pojo.HomeworkAnswer;
import com.se.pojo.Student;

public class HomeworkAnswerService {
	HomeworkAnswerDao had = new HomeworkAnswerDao();

	public void add(HomeworkAnswer ha) {
		had.add(ha);
	}

	public void addOrUpdate(HomeworkAnswer ha) {
		had.addOrUpdate(ha);
	}

	public HomeworkAnswer getDetail(int homeworkId, int studentId) {
		return had.get(homeworkId, studentId);
	}

	public List<HomeworkAnswer> list(int homeworkId) {
		List<HomeworkAnswer> homeworkAnswers = had.list(homeworkId);
		return homeworkAnswers;
	}

	public Map<Integer, HomeworkAnswer> map(int homeworkId) {
		List<HomeworkAnswer> hwas = list(homeworkId);
		Map<Integer, HomeworkAnswer> map = new HashMap<Integer, HomeworkAnswer>();
		System.out.println(hwas.size());
		int x = 1;
		for (HomeworkAnswer ha : hwas) {
			System.out.println(x++);
			map.put(ha.getStudentId(), ha);
		}
		return map;
	}

	public boolean updateScore(int hwId, int studentId, int score) {
		HomeworkAnswerService has = new HomeworkAnswerService();
		HomeworkAnswer ha = has.getDetail(hwId, studentId);
		if (ha == null)
			return false;
		ha.setScore(score);
		has.addOrUpdate(ha);
		return true;
	}
}
