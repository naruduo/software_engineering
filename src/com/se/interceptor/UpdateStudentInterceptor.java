package com.se.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class UpdateStudentInterceptor extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext actionContext = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(StrutsStatics.HTTP_REQUEST);
		request.setCharacterEncoding("UTF-8");
		boolean flag = true;
		if ("".equals(request.getParameter("stu.id"))) {
			request.setAttribute("iderror", "账号不可以为空");
			flag = false;
		} else if (!request.getParameter("stu.id").matches("\\d{9}")) {
			request.setAttribute("iderror", "账号只可以是9位数");
			flag = false;
		}
		if ("".equals(request.getParameter("stu.password"))) {
			request.setAttribute("passworderror", "密码不可以为空");
			flag = false;
		}
		if ("".equals(request.getParameter("stu.name"))) {
			request.setAttribute("nameerror", "姓名不可以为空");
			flag = false;
		}
		if ("".equals(request.getParameter("stu.classId"))) {
			request.setAttribute("classIderror", "班级号不可以为空");
			flag = false;
		} else if (!request.getParameter("stu.classId").matches("\\d{1}")) {
			request.setAttribute("classIderror", "账号只可以是1位数");
			flag = false;
		}
		return flag ? invocation.invoke() : "fail";
	}
}
