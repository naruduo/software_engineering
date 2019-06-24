package com.se.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.CommonFile;
import com.se.pojo.Student;
import com.se.pojo.Teacher;
import com.se.service.CommonFileService;
import com.se.service.StudentService;
import com.se.service.TeacherService;
import com.se.util.CheckParamUtils;
import com.se.util.SessionUtils;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
	private Integer id;
	private String password;
	private String newPassword;
	private String oldPassword;
	private String confirmPassword;

	public String login() throws Exception {
		StudentService ss = new StudentService();

		if (ss.login(id, password)) {
			Student student = ss.get(id);
			ActionContext.getContext().getSession().put("USER", id);
			ActionContext.getContext().getSession().put("ROLE", "Student");
			ActionContext.getContext().getSession().put("student", student);
			CommonFileService cfs = new CommonFileService();
			ActionContext.getContext().getSession().put("syllabusId", cfs.getLatest(3).getId());
			return "StudentLoginSuccess";
		} else {
			TeacherService ts = new TeacherService();
			if (ts.login(id, password)) {
				Teacher t = ts.get(id);
				ActionContext.getContext().getSession().put("USER", id);
				ActionContext.getContext().getSession().put("ROLE", "Teacher");
				ActionContext.getContext().getSession().put("teacher", t);
				return "TeacherLoginSuccess";
			}
		}
		ActionContext.getContext().put("loginerror", "账号或密码错误");
		return "fail";
	}

	public String logout() throws Exception {
		ActionContext.getContext().getSession().remove("ROLE");
		ActionContext.getContext().getSession().remove("USER");
		ActionContext.getContext().getSession().remove("teacher");
		ActionContext.getContext().getSession().remove("student");
		return "LogoutSuccess";
	}

	public String changePassword() {
		SessionUtils.put("successOperation", "修改密码成功！");
		if ("Teacher".equals(ActionContext.getContext().getSession().get("ROLE"))) {
			Teacher teacher = (Teacher) ActionContext.getContext().getSession().get("teacher");
			System.out.println(teacher);
			if (!teacher.getPassword().equals(oldPassword)) {
				SessionUtils.put("oldPasswordError", "旧密码错误！");
				return "teacherChangePasswordFail";
			}
			if (CheckParamUtils.isEmpty(newPassword)) {
				SessionUtils.put("newPasswordError", "新密码不可以为空！");
				return "teacherChangePasswordFail";
			}
			if (!newPassword.equals(confirmPassword)) {
				SessionUtils.put("confirmPasswordError", "两次密码不一样！");
				return "teacherChangePasswordFail";
			}
			teacher.setPassword(newPassword);
			TeacherService ts = new TeacherService();
			ts.changePassword(SessionUtils.getUserId(), newPassword);
			return "successTeacherOp";
		} else if ("Student".equals(ActionContext.getContext().getSession().get("ROLE"))) {
			Student student = (Student) ActionContext.getContext().getSession().get("student");
			System.out.println(student);
			if (!student.getPassword().equals(oldPassword)) {
				SessionUtils.put("oldPasswordError", "旧密码错误！");
				return "studentChangePasswordFail";
			}
			if (CheckParamUtils.isEmpty(newPassword)) {
				SessionUtils.put("newPasswordError", "新密码不可以为空！");
				return "studentChangePasswordFail";
			}
			if (!newPassword.equals(confirmPassword)) {
				SessionUtils.put("confirmPasswordError", "两次密码不一样！");
				return "studentChangePasswordFail";
			}
			student.setPassword(newPassword);
			StudentService ss = new StudentService();
			ss.changePassword(SessionUtils.getUserId(), newPassword);
			return "successStudentOp";
		}
		return "error";
	}

	public String index() {
		if (ActionContext.getContext().getSession().get("ROLE") == null
				|| ActionContext.getContext().getSession().get("USER") == null) {
			SessionUtils.put("loginerror", "请先登陆");
			return "fail";
		} else if (ActionContext.getContext().getSession().get("ROLE").equals("Teacher")) {
			ActionContext.getContext().put("teacher", new TeacherService().get(SessionUtils.getUserId()));
			return "TeacherLoginSuccess";
		} else {
			ActionContext.getContext().put("student", new StudentService().get(SessionUtils.getUserId()));
			return "StudentLoginSuccess";
		}
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

}