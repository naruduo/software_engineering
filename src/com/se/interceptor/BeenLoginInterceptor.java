package com.se.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class BeenLoginInterceptor extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		boolean flag = true;
		flag = (invocation.getInvocationContext().getSession().get("USER") != null);
		System.out.println("LOGIN" + invocation.getInvocationContext().getSession().get("USER"));
		invocation.getInvocationContext().put("loginerror", "请先登录");
		return flag ? invocation.invoke() : "NOLOGIN";
	}
}
