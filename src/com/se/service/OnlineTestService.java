package com.se.service;

import com.se.dao.OnlineTestDao;
import com.se.pojo.OnlineTest;

public class OnlineTestService {
	private OnlineTestDao otd = new OnlineTestDao();

	public OnlineTest get(int id) {
		return otd.get(id);
	}

	public void save(OnlineTest ot) {
		otd.add(ot);
	}

	public void delete(OnlineTest ot) {
		otd.delete(ot);
	}
}
