package com.se.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class TeacherBeenLoginInterceptor extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Integer teacherId = (Integer) invocation.getInvocationContext().getSession().get("USER");
		String role = (String) invocation.getInvocationContext().getSession().get("ROLE");
		if ("Teacher".equals(role) && teacherId != null)
			return invocation.invoke();
		invocation.getInvocationContext().put("loginerror", "请先登录");
		return "NOLOGIN";
	}

}
