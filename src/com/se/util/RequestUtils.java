package com.se.util;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("rawtypes")
public class RequestUtils {
	
	public static Map getRequest() {
		return (Map)ActionContext.getContext().get("request");
	}
	
}
