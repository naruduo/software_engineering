package com.se.service;

import java.util.LinkedList;
import java.util.List;

import com.se.dao.HomeworkAnswerDao;
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

	public List<HomeworkAnswer> list(int homeworkId, int teacherId) {
		StudentService ss = new StudentService();
		List<Student> students = ss.getTeachersStudents(teacherId);
		List<HomeworkAnswer> homeworkAnswers = new LinkedList<HomeworkAnswer>();
		for (Student s : students)
			homeworkAnswers.add(had.get(homeworkId, s.getId()));
		return homeworkAnswers;
	}
}
