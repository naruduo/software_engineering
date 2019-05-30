package com.se.Test;

import org.junit.Test;

import com.se.dao.OnlineTestDao;

public class OnlineTestDaoTest {

	OnlineTestDao otd = new OnlineTestDao();

	@Test
	public void get() {
		System.out.println(otd.get(2));
	}

}
