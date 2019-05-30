package com.se.service;

import java.util.List;

import com.se.dao.HomeworkDao;
import com.se.pojo.Homework;
import com.se.util.Page;

public class HomeworkService {

	private HomeworkDao hd = new HomeworkDao();

	public Homework get(int hwId) {
		return hd.get(Homework.class, hwId);
	}

	public void add(Homework hw) {
		hd.add(hw);
	}

	public List<Homework> list(int teacherId, Page page) {
		page.setTotal(hd.getTotal(teacherId));
		return hd.list(teacherId, page.getStart(), page.getCount());
	}

	public boolean delete(int hw_id) {
		hd.delete(Homework.class, hw_id);
		return true;
	}

	public long getTotal(int teacherId) {
		return hd.getTotal(teacherId);
	}
}
