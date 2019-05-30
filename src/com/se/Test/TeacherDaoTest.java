package com.se.Test;

import java.util.List;

import org.junit.Test;

import com.se.dao.TeacherDao;
import com.se.pojo.Homework;
import com.se.pojo.Teacher;
import com.se.service.TeacherService;

public class TeacherDaoTest {
	TeacherDao td = new TeacherDao();
	TeacherService ts = new TeacherService();

//	@Test
//	public void getHomeworks() {
//		Teacher t = td.get(Teacher.class, 1001);
//		// List<Homework> list = t.getHomeworks();
//		System.out.println(list);
//	}

	public void changePassword() {
		ts.changePassword(1003, "3");
	}

	public static void main(String[] args) {
		TeacherDaoTest tdt = new TeacherDaoTest();
		tdt.changePassword();

//		tdt.getHomeworks();
	}
}
