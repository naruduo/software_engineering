package com.se.interceptor;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class StudentBeenLoginInterceptor extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Integer studentId = (int) invocation.getInvocationContext().getSession().get("USER");
		String role = (String) invocation.getInvocationContext().getSession().get("ROLE");
		invocation.getInvocationContext().put("", "请先登录");
		return "Student".equals(role) && studentId != null ? invocation.invoke() : "NOLOGIN";
	}

}
