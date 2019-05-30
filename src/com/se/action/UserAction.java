package com.se.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.Student;
import com.se.pojo.Teacher;
import com.se.service.StudentService;
import com.se.service.TeacherService;
import com.se.util.SessionUtils;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
	private Integer id;
	private String password;
	private String newPassword;

	public String login() throws Exception {
		StudentService ss = new StudentService();

		if (ss.login(id, password)) {
			Student student = ss.get(id);
			ActionContext.getContext().getSession().put("USER", id);
			ActionContext.getContext().getSession().put("ROLE", "Student");
			ActionContext.getContext().getSession().put("student", student);
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
		return "LogoutSuccess";
	}

	public String changePassword() {
		if (ActionContext.getContext().get("ROLE").equals("Teacher")) {
			TeacherService ts = new TeacherService();
			ts.changePassword(SessionUtils.getUserId(), newPassword);
			return "TeacherChangePassword";
		} else {
			StudentService ss = new StudentService();
			ss.changePassword(SessionUtils.getUserId(), newPassword);
			return "StudentChangePassword";
		}
	}

	public String index() {
		if (ActionContext.getContext().getSession().get("ROLE").equals("Teacher")) {
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

}