package com.se.util;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("rawtypes")
public class RequestUtils {
	
	
	/**
	 * 获得请求报文
	 * @return 请求报文
	 */
	public static Map getRequest() {
		return (Map)ActionContext.getContext().get("request");
	}
	
	
	/**
	 * 获取响应报文
	 * @return 响应报文
	 */
	public static HttpServletResponse getResponse() {
		return (HttpServletResponse)
					(ActionContext.getContext()
					.get(org.apache.struts2.StrutsStatics.HTTP_RESPONSE));
	}
	
}
