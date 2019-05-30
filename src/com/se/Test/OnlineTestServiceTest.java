package com.se.Test;

import org.junit.Test;

import com.se.service.OnlineTestService;

public class OnlineTestServiceTest {
	private OnlineTestService ots = new OnlineTestService();

	@Test
	public void get() {
		System.out.println(ots.get(2));
	}
}
