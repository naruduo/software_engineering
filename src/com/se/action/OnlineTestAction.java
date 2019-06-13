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
	private OnlineTestService ots = new OnlineTestService();
	private static int chapterId;
	private Page page = new Page(0, 8);

	public String teacherAdd() {
		CourseChapterService ccs = new CourseChapterService();
		if (onlineTest.getId() != 0)
			onlineTest = ots.get(onlineTest.getId());
		SessionUtils.put("courseChapters", ccs.list());
		return "teacherAdd";
	}

	public String addAndUpdate() {
		chapterId = onlineTest.getCourseChapterId();
		System.out.println(onlineTest);
		OnlineTestService ots = new OnlineTestService();
		if (onlineTest.getId() == 0)
			ots.save(onlineTest);
		else {
			OnlineTest ot = ots.get(onlineTest.getId());
			onlineTest.setAnsFreq(ot.getAnsFreq());
			onlineTest.setTrueFreq(ot.getTrueFreq());
			ots.update(onlineTest);
		}
		return "showList";
	}

	public String teacherList() {
		CourseChapterService ccs = new CourseChapterService();
		OnlineTestService ots = new OnlineTestService();
		page.setTotal(ots.getTotal(chapterId));
		SessionUtils.put("courseChapter", ccs.get(chapterId));
		SessionUtils.put("onlineTests", ots.listCourseOnlineTests(page, chapterId));
		System.out.println(ots.listCourseOnlineTests(page, chapterId));
		return "teacherList";
	}

	public String delete() {
		OnlineTestService ots = new OnlineTestService();
		ots.delete(onlineTest.getId());
		return "showList";
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
