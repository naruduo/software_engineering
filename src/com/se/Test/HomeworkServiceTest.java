package com.se.Test;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

import com.se.pojo.Homework;
import com.se.service.HomeworkService;
import com.se.util.Page;

public class HomeworkServiceTest {
	HomeworkService hs = new HomeworkService();

	@Test
	public void list() {
		for (Homework hw : hs.list(1001, new Page(1, 5))) {
			System.out.println(hw);
		}
	}

	@Test
	public void delete() {
		hs.delete(1);
	}

	public static void main(String[] args) throws ParseException {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		DateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
		String start = "1998-04-12 12:12:12";
		String end = "1998-11-11";
		Date date = new Date();
		Date date1 = new Date();
		try {
			date = df.parse(start);
			date1 = df1.parse(end);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println(date + "," + date1);

		long s = date.getTime();
		long e = date1.getTime();

	}
}
