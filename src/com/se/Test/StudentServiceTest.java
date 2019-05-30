package com.se.Test;

import java.util.LinkedList;
import java.util.List;

import org.junit.Test;

import com.se.pojo.Student;
import com.se.service.StudentService;
import com.se.util.Page;

public class StudentServiceTest {
	StudentService ss = new StudentService();

	@Test
	public void list() {
		for (Student s : ss.list(new Page(1, 100))) {
			System.out.println(s);
		}
	}

	@Test
	public void teachersStudents() {
		List<Student> list = new LinkedList<Student>();
		list.add(null);
		list.add(null);
		System.out.println(list);
		for (Student stu : ss.getTeachersStudents(1002)) {
			System.out.println(stu);
		}
	}

	@Test
	public void changePassword() {
		ss.changePassword(221600224, "111111");
	}

	@Test
	public void getRoster() {
		ss.getRoster("C:\\Users\\林鹏飞\\Desktop\\roster.xlsx", 1002);
	}
}
