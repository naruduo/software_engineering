package com.se.action;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.dao.OnlineTestDao;
import com.se.pojo.Homework;
import com.se.pojo.HomeworkAnswer;
import com.se.pojo.OperationLog;
import com.se.pojo.Student;
import com.se.service.HomeworkService;
import com.se.service.OnlineTestService;
import com.se.service.OperationLogService;
import com.se.service.StudentService;
import com.se.util.FileUtils;
import com.se.util.Page;
import com.se.util.SessionUtils;

@SuppressWarnings("serial")
public class StudentAction extends ActionSupport {
	private int id;
	private String newPassword;
	private Student stu = new Student();
	private File avatar;
	private String avatarContentType; // 得到文件的类型
	private String avatarFileName; // 得到文件的名称

	private int onlineTestCount = 10;
	private Page page = new Page(0, 5);
	private StudentService ss = new StudentService();
	private List<Homework> homeworks;
	private List<OperationLog> operations;

	public String add() {
		StudentService ss = new StudentService();
		stu.setAvatar("default.jpg");
		stu.setPassword(stu.getId() + "");
		stu.setTeacherId(SessionUtils.getUserId());
		System.out.println(stu);
		ss.addStudent(stu);
		list();
		return "addSuccess";
	}

	public String update() {
		Student stu = ss.get(SessionUtils.getUserId());
		if (!stu.getAvatar().equals("default.jpg")) {
			FileAction fa = new FileAction(avatarFileName);
			fa.delete();
		}
		FileAction fa = new FileAction(avatar, avatarFileName, avatarContentType);
		fa.upload();
		ss.changeAvatar(SessionUtils.getUserId(), avatarFileName);
		ActionContext.getContext().getSession().put("student", stu);
		return "updateSuccess";
	}

	public String list() {
		StudentService ss = new StudentService();
		ActionContext.getContext().put("studentlist", ss.list(page));
		System.out.println(ss.list(page));
		return ActionSupport.SUCCESS;
	}

	public String delete() {
		StudentService ss = new StudentService();
		ss.delete(id);
		System.out.println(id);
		return "deleteSuccess";
	}

	public String listMyHomeworks() {
		HomeworkService hs = new HomeworkService();
		StudentService ss = new StudentService();
		Student stu = ss.get((int) ActionContext.getContext().getSession().get("USER"));
		int teacherId = stu.getTeacherId();
		homeworks = hs.list(teacherId, page);
		ActionContext.getContext().put("homeworks", homeworks);
		return "listMyHomeworks";
	}

	public String listMyOperationLogs() {
		OperationLogService ols = new OperationLogService();
		List<OperationLog> operationsLogs = ols.get(SessionUtils.getUserId(), page);
		ActionContext.getContext().put("operationLogs", operationsLogs);
		return "listMyOperationLogs";
	}

	public String listMyOnlineTests() {
		OnlineTestService otd = new OnlineTestService();

		return "listMyOnlineTests";
	}

	// 5-20
	public String updateAvatar() {
		ss.changeAvatar(SessionUtils.getUserId(), avatarFileName);
		FileAction fa = new FileAction(avatar, avatarFileName, avatarContentType);
		fa.upload();
		return "updateAvatar";
	}

	public String getMyDetail() {
		stu = ss.get(SessionUtils.getUserId());
		ActionContext.getContext().put("student", stu);
		return getMyDetail();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public File getAvatar() {
		return avatar;
	}

	public void setAvatar(File avatar) {
		this.avatar = avatar;
	}

	public String getAvatarContentType() {
		return avatarContentType;
	}

	public void setAvatarContentType(String avatarContentType) {
		this.avatarContentType = avatarContentType;
	}

	public String getAvatarFileName() {
		return avatarFileName;
	}

	public void setAvatarFileName(String avatarFileName) {
		this.avatarFileName = avatarFileName;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Homework> getHomeworks() {
		return homeworks;
	}

	public void setHomeworks(List<Homework> homeworks) {
		this.homeworks = homeworks;
	}

	public List<OperationLog> getOperations() {
		return operations;
	}

	public void setOperations(List<OperationLog> operations) {
		this.operations = operations;
	}

}
