package com.se.service;

import java.util.List;

import com.se.dao.TeacherDao;
import com.se.pojo.Exp;
import com.se.pojo.Homework;
import com.se.pojo.Teacher;
import com.se.util.Page;

public class TeacherService {

	private TeacherDao td = new TeacherDao();

	public boolean login(int id, String password) {
		Teacher t = td.get(Teacher.class, id);
		if (t != null && t.getPassword().equals(password))
			return true;
		return false;
	}

	public boolean changePassword(int id, String password) {
		Teacher t = td.get(Teacher.class, id);
		t.setPassword(password);
		System.out.println(t);
		td.update(t);
		return true;
	}

	public Teacher get(int id) {
		return td.get(Teacher.class, id);
	}
	
}
