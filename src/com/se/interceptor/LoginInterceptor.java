package com.se.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class LoginInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		if (!invocation.getProxy().getMethod().equals("login"))
			return invocation.invoke();
		ActionContext actionContext = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(StrutsStatics.HTTP_REQUEST);
		request.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("id") + "," + request.getParameter("password"));
		boolean flag = true;
		if (request.getParameter("id") == null || "".equals(request.getParameter("id"))) {
			request.setAttribute("iderror", "账号不可以为空");
			flag = false;
		} else if (!request.getParameter("id").matches("\\d+")) {
			request.setAttribute("iderror", "账号不对");
			flag = false;
		}
		if ("".equals(request.getParameter("password"))) {
			request.setAttribute("passworderror", "密码不可以为空");
			flag = false;
		}
		return flag ? invocation.invoke() : "fail";
	}

}
