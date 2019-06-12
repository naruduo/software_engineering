package com.se.service;

import java.util.*;

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

	public Map<Integer, CourseChapter> map() {
		Map<Integer, CourseChapter> map = new HashMap();
		List<CourseChapter> ccs = list();
		for (CourseChapter cc : ccs)
			map.put(cc.getId(), cc);
		return map;
	}
}
