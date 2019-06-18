package com.se.Test;

import org.junit.Test;

import com.se.pojo.OnlineTest;
import com.se.service.OnlineTestService;
import com.se.util.Page;

public class OnlineTestServiceTest {
	private OnlineTestService ots = new OnlineTestService();
	static public OnlineTestServiceTest t = new OnlineTestServiceTest();

	@Test
	public void get() {
		System.out.println(ots.get(2));
		System.out.println(ots.listCourseOnlineTests(new Page(3, 3), 10001));
	}

	public void add() {
		OnlineTest ot = new OnlineTest();
		ot.setAnswer("A");
		ot.setChoiceA("A");
		ot.setChoiceB("B");
		ot.setChoiceC("C");
		ot.setChoiceD("D");
		ot.setCourseChapterId(10001);
		ot.setQuestion("ABCD");
		ots.save(ot);
	}

	public void total() {
		System.out.println(ots.getTotal(10001));
	}

	public static void main(String[] args) {
		t.total();
	}
}
