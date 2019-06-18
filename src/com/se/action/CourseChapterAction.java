package com.se.action;

import javax.swing.text.html.CSS;

import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.CourseChapter;
import com.se.service.CourseChapterService;
import com.se.util.SessionUtils;

public class CourseChapterAction extends ActionSupport {
	private CourseChapter courseChapter = new CourseChapter();
	private CourseChapterService ccs = new CourseChapterService();

	public String add() {
		ccs.add(courseChapter);
		return "list";
	}

	public String list() {
		String ans;
		if (SessionUtils.getRole().equals("Teacher"))
			ans = "teacherList";
		else if (SessionUtils.getRole().equals("Student"))
			ans = "studentList";
		else
			return "Fail";
		SessionUtils.put("courseChapters", ccs.list());
		return ans;
	}

	public String delete() {
		ccs.delete(courseChapter.getId());
		return "list";
	}

	public CourseChapter getCourseChapter() {
		return courseChapter;
	}

	public void setCourseChapter(CourseChapter courseChapter) {
		this.courseChapter = courseChapter;
	}

}
