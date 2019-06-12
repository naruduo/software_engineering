package com.se.action;

import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.CourseChapter;
import com.se.pojo.OnlineTest;
import com.se.service.CourseChapterService;
import com.se.service.OnlineTestService;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class OnlineTestAction extends ActionSupport {
	OnlineTest onlineTest = new OnlineTest();
	private int chapterId;
	private Page page = new Page(0, 8);

	public String teacherAdd() {
		CourseChapterService ccs = new CourseChapterService();
		SessionUtils.put("courseChapters", ccs.list());
		return "teacherAdd";
	}

	public String add() {
		OnlineTestService ots = new OnlineTestService();
		ots.save(onlineTest);
		return "addSuccess";
	}

	public String teacherList() {
		CourseChapterService ccs = new CourseChapterService();
		OnlineTestService ots = new OnlineTestService();
		page.setTotal(ots.getTotal(chapterId));
		SessionUtils.put("courseChapters", ccs.list());
		SessionUtils.put("onlineTests", ots.listCourseOnlineTests(page, chapterId));
		System.out.println(ots.listCourseOnlineTests(page, chapterId));
		return "teacherList";
	}

	public OnlineTest getOnlineTest() {
		return onlineTest;
	}

	public void setOnlineTest(OnlineTest onlineTest) {
		this.onlineTest = onlineTest;
	}

	public int getChapterId() {
		return chapterId;
	}

	public void setChapterId(int chapterId) {
		this.chapterId = chapterId;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

}
