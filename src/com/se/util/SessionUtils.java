package com.se.util;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

public class SessionUtils {
	public static int getUserId() {
		return (int) ActionContext.getContext().getSession().get("USER");
	}

	public static String getRealPath(String path) {
		return ServletActionContext.getServletContext().getRealPath(path);
	}

	public static String getRole() {
		return (String) ActionContext.getContext().getSession().get("ROLE");
	}

	@SuppressWarnings("rawtypes")
	public static Map getHttpSession() {
		return (Map) ActionContext.getContext().getSession();
	}

	public static void put(String param, Object value) {
		ActionContext.getContext().put(param, value);
	}
}
