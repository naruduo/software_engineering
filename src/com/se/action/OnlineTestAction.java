package com.se.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.CourseChapter;
import com.se.pojo.OnlineTest;
import com.se.service.CourseChapterService;
import com.se.service.OnlineTestService;
import com.se.util.CheckParamUtils;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class OnlineTestAction extends ActionSupport {
	private final static int count = 8;
	OnlineTest onlineTest = new OnlineTest();
	private OnlineTestService ots = new OnlineTestService();
	private static Map<Integer, Integer> chapterIds = Collections.synchronizedMap(new HashMap<Integer, Integer>());
	private static Map<Integer, List<OnlineTest>> stuTestsMap = Collections
			.synchronizedMap(new HashMap<Integer, List<OnlineTest>>());
	private Map<Integer, String> answers = new HashMap<Integer, String>();
	private int chapterId = -1;
	private Page page = new Page(0, 8);
	private Map<String, String> errors = new HashMap<String, String>();

	public String teacherAdd() {
		CourseChapterService ccs = new CourseChapterService();
		if (onlineTest.getId() != 0)
			onlineTest = ots.get(onlineTest.getId());
		SessionUtils.put("courseChapters", ccs.list());
		return "teacherAdd";
	}

	public String addAndUpdate() {
		boolean flag = false;
		if (CheckParamUtils.isEmpty(onlineTest.getQuestion())) {
			errors.put("question", "问题不可以为空！");
			flag = true;
		}
		if (CheckParamUtils.isEmpty(onlineTest.getChoiceA()) || CheckParamUtils.isEmpty(onlineTest.getChoiceB())
				|| CheckParamUtils.isEmpty(onlineTest.getChoiceC())
				|| CheckParamUtils.isEmpty(onlineTest.getChoiceD())) {
			errors.put("choice", "选项不可以为空！");
			flag = true;
		}
		if (flag) {
			CourseChapterService ccs = new CourseChapterService();
			SessionUtils.put("courseChapters", ccs.list());
			return "teacherAddFail";
		}

		chapterIds.put(SessionUtils.getUserId(), onlineTest.getCourseChapterId());
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
		int cid = chapterId;
		if (cid == -1)
			cid = chapterIds.get(SessionUtils.getUserId());
		else
			chapterIds.put(SessionUtils.getUserId(), chapterId);
		page.setTotal(ots.getTotal(cid));
		SessionUtils.put("courseChapter", ccs.get(cid));
		SessionUtils.put("onlineTests", ots.listCourseOnlineTests(page, cid));
		System.out.println(ots.listCourseOnlineTests(page, cid));
		return "teacherList";
	}

	public String delete() {
		ots.delete(onlineTest.getId());
		return "showList";
	}

	public String stuGet() {
		List<OnlineTest> onlineTests;
		onlineTests = ots.getRandomOnlineTests(chapterId, count);
		stuTestsMap.put(SessionUtils.getUserId(), onlineTests);
		SessionUtils.put("onlineTests", onlineTests);
		return "stuTests";
	}

	public String stuScore() {
		Map<Integer, Boolean> marks = new HashMap<Integer, Boolean>();
		for (OnlineTest ot : stuTestsMap.get(SessionUtils.getUserId())) {
			boolean b = ot.getAnswer().equals(answers.get(ot.getId()));
			if (b)
				ot.setTrueFreq(ot.getTrueFreq() + 1);
			ot.setAnsFreq(ot.getAnsFreq() + 1);
			marks.put(ot.getId(), b);
		}
		System.out.println(answers);
		List<OnlineTest> onlineTests = stuTestsMap.remove(SessionUtils.getUserId());
		SessionUtils.put("answers", answers);
		SessionUtils.put("marks", marks);
		SessionUtils.put("onlineTests", onlineTests);
		return "stuTests";
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

	public Map<Integer, String> getAnswers() {
		return answers;
	}

	public void setAnswers(Map<Integer, String> answers) {
		this.answers = answers;
	}

	public Map<String, String> getErrors() {
		return errors;
	}

	public void setErrors(Map<String, String> errors) {
		this.errors = errors;
	}

}
