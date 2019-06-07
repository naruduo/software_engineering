package com.se.action;

import java.io.File;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.Homework;
import com.se.pojo.HomeworkAnswer;
import com.se.pojo.OperationLog;
import com.se.service.HomeworkAnswerService;
import com.se.service.HomeworkService;
import com.se.service.OperationLogService;
import com.se.service.StudentService;
import com.se.service.TeacherService;
import com.se.util.Page;
import com.se.util.SessionUtils;

@SuppressWarnings("serial")
public class TeacherAction extends ActionSupport {
	private Integer id;
	private Integer homeworkId;
	private TeacherService teacherService = new TeacherService();
	private List<Homework> homeworks;
	private List<HomeworkAnswer> homeworkAnswers;
	private List<OperationLog> operations;
	private Page page = new Page(0,5);
	private String filename;
	private String nameKey;

	public String listMyHomeworks() {
		HomeworkService hs = new HomeworkService();
		int teacherId = SessionUtils.getUserId();
		homeworks = hs.list(teacherId, page);
		ActionContext.getContext().put("homeworks", homeworks);
		return "listMyHomeworks";
	}

	public String listMyHomeworkAnswers() {
		HomeworkAnswerService has = new HomeworkAnswerService();
		HomeworkService hs = new HomeworkService();
		listMyStudents();
		System.out.println(homeworkId);
		System.out.println(hs);
		Homework hw = hs.get(homeworkId);
		Map<Integer, HomeworkAnswer> map = has.map(homeworkId);
		SessionUtils.put("homework", hw);
		SessionUtils.put("homeworkAnswers", map);
		return "listMyHomeworkAnswers";
	}

	public String getMyRoster() {
		StudentService ss = new StudentService();
		filename = "Roster.xlsx";
		String filePath = SessionUtils
				.getRealPath(File.separator + "download" + File.separator + SessionUtils.getUserId());
		ss.getRoster(filePath + File.separator + filename, SessionUtils.getUserId());
		id = SessionUtils.getUserId();
		return "getMyRoster";
	}

	public String listMyOperationLogs() {
		OperationLogService ols = new OperationLogService();
		operations = ols.get(SessionUtils.getUserId(), page);
		ActionContext.getContext().put("operations", operations);
		return "listMyOperationLogs";
	}

	public String listMyStudents() {
		StudentService ss = new StudentService();
		ActionContext.getContext().put("students", ss.getTeachersStudents(SessionUtils.getUserId()));
		return "listMyStudents";
	}

	public String searchMyStudents() {
		StudentService ss = new StudentService();
		ActionContext.getContext().put("students", ss.getTeachersStudents(SessionUtils.getUserId(), nameKey));
		return "searchMyStudents";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public TeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	public List<Homework> getHomeworks() {
		return homeworks;
	}

	public void setHomeworks(List<Homework> homeworks) {
		this.homeworks = homeworks;
	}

	public Integer getHomeworkId() {
		return homeworkId;
	}

	public void setHomeworkId(Integer homeworkId) {
		this.homeworkId = homeworkId;
	}

	public List<HomeworkAnswer> getHomeworkAnswers() {
		return homeworkAnswers;
	}

	public void setHomeworkAnswers(List<HomeworkAnswer> homeworkAnswers) {
		this.homeworkAnswers = homeworkAnswers;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public List<OperationLog> getOperations() {
		return operations;
	}

	public void setOperations(List<OperationLog> operations) {
		this.operations = operations;
	}

	public String getNameKey() {
		return nameKey;
	}

	public void setNameKey(String nameKey) {
		this.nameKey = nameKey;
	}

}
