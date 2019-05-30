package com.se.action;

import java.io.File;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.Homework;
import com.se.pojo.Student;
import com.se.pojo.Teacher;
import com.se.service.HomeworkService;
import com.se.service.StudentService;
import com.se.util.Page;

@SuppressWarnings("serial")
public class HomeworkAction extends ActionSupport {
	private File uploadFile;
	private String uploadFileFileName;
	private String uploadFileContentType;
	private String deadline;
	private String hwName;
	private Homework hw = new Homework();
	private int homeworkId = -1;
	private Page page = new Page(1, 1);

	public String add() {
		System.out.println("D" + deadline);
		System.out.println("F" + uploadFile);
		System.out.println("N" + hwName);
		boolean flag = true;
		if ("".equals(deadline)) {
			ActionContext.getContext().put("deadlineError", "截止日期不可以为空");
			flag = false;
		}
		if ("".equals(hwName)) {
			ActionContext.getContext().put("hwNameError", "作业名称不可以为空");
			flag = false;
		}
		if (uploadFile == null) {
			ActionContext.getContext().put("uploadFileError", "请选择上传文件");
			flag = false;
		}
		if (!flag)
			return "addFail";
		uploadFileFileName = System.currentTimeMillis() + uploadFileFileName;
		FileAction fileAction = new FileAction(uploadFile, uploadFileFileName, uploadFileContentType);
		try {
			fileAction.upload();
		} catch (Exception e) {
			e.printStackTrace();
			return "addFail";
		}
		try {
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			hw.setDeadline(df.parse(deadline));
		} catch (ParseException e) {
			e.printStackTrace();
			return "addFail";
		}
		hw.setName(hwName);
		hw.setReleaseTime(new Date());
		Teacher teacher = new Teacher();
		teacher.setId((int) ActionContext.getContext().getSession().get("USER"));
		hw.setTeacher(teacher);
		hw.setAddress(uploadFileFileName);
		System.out.println(hw);
		HomeworkService hs = new HomeworkService();
		System.out.println(hw);
		hs.add(hw);
		return "addSuccess";
	}

	public String list() {
		int teacherId = 0;
		if ("Student".equals(ActionContext.getContext().getSession().get("ROLE"))) {
			StudentService ss = new StudentService();
			Student stu = ss.get((int) ActionContext.getContext().getSession().get("USER"));
			teacherId = stu.getTeacherId();
		} else {
			teacherId = (int) ActionContext.getContext().getSession().get("USER");
		}

		HomeworkService hs = new HomeworkService();
		page.setTotal(hs.getTotal(teacherId));
		System.out.println(page);
		List<Homework> list = hs.list(teacherId, page);
		ActionContext.getContext().put("homeworks", list);
		return "listHomework";
	}

	public String delete() {
		if (homeworkId == -1)
			ActionContext.getContext().put("homeworkIdError", "请选择作业！");
		HomeworkService hs = new HomeworkService();
		System.out.println(homeworkId);
		Homework hw = hs.get(homeworkId);
		hs.delete(homeworkId);
		FileAction fileAction = new FileAction();
		fileAction.setFilename(hw.getAddress());
		fileAction.delete();
		return "deleteSuccess";
	}

	public String getDetail() {
		HomeworkService hs = new HomeworkService();
		Homework homework = hs.get(homeworkId);
		ActionContext.getContext().put("homework", homework);
		return "getDetailSuccess";
	}

	public File getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getUploadFileFileName() {
		return uploadFileFileName;
	}

	public void setUploadFileFileName(String uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}

	public String getUploadFileContentType() {
		return uploadFileContentType;
	}

	public void setUploadFileContentType(String uploadFileContentType) {
		this.uploadFileContentType = uploadFileContentType;
	}

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public Homework getHw() {
		return hw;
	}

	public void setHw(Homework hw) {
		this.hw = hw;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public int getHomeworkId() {
		return homeworkId;
	}

	public void setHomeworkId(int homeworkId) {
		this.homeworkId = homeworkId;
	}

	public String getHwName() {
		return hwName;
	}

	public void setHwName(String hwName) {
		this.hwName = hwName;
	}

}
