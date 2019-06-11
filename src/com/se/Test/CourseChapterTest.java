package com.se.Test;

import com.se.dao.CourseChapterDAO;
import com.se.pojo.CourseChapter;

public class CourseChapterTest {
	static CourseChapterTest c = new CourseChapterTest();
	static CourseChapterDAO d = new CourseChapterDAO();

	public void add() {
		CourseChapter cc = new CourseChapter("第五章", "软件体系设计");
		System.out.println(cc);
		d.save(cc);
		System.out.println(cc);
	}

	public void list() {
		for (CourseChapter cc : d.list(CourseChapter.class)) {
			System.out.println(cc);
		}
	}

	public static void main(String[] args) {
		// c.add();
		c.list();
	}
}