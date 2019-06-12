package com.se.Test;

import org.junit.Test;

import com.se.dao.HomeworkAnswerDao;
import com.se.pojo.HomeworkAnswer;
import com.se.pojo.Student;
import com.se.service.HomeworkAnswerService;

public class HomeworkAnswerServiceTest {
	HomeworkAnswerDao had = new HomeworkAnswerDao();
	HomeworkAnswerService has = new HomeworkAnswerService();

	@Test
	public void getStudent() {
		HomeworkAnswer ha = had.get(HomeworkAnswer.class, 1);
		System.out.println(ha);
	}

	@Test
	public void getDetail() {
		HomeworkAnswer ha = had.get(17, 221600224);
		System.out.println(ha);
	}

	@Test
	public void getHomeworkAnswers() {
	}

	public static void main(String[] args) {
		HomeworkAnswerServiceTest t = new HomeworkAnswerServiceTest();
		t.getDetail();
		t.getHomeworkAnswers();
	}

}
