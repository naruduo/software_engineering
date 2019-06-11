package com.se.service;

import java.util.List;

import com.se.dao.CourseChapterDAO;
import com.se.pojo.CourseChapter;

public class CourseChapterService {
	private CourseChapterDAO ccd = new CourseChapterDAO();

	public CourseChapter get(int id) {
		return ccd.get(CourseChapter.class, id);
	}

	public List<CourseChapter> list() {
		List<CourseChapter> courseChapters = ccd.list(CourseChapter.class);
		return courseChapters;
	}

	public void add(CourseChapter cc) {
		ccd.add(cc);
	}

	public void delete(int id) {
		ccd.delete(CourseChapter.class, id);
	}
}
