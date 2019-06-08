package com.se.util;

import java.io.IOException;
import java.io.PrintWriter;

public class JSONUtils {
	
	
	public static void printResult(String result) {
		try {
			String jsonStr = "{\"result\":\"" + result + "\"}";
			RequestUtils.getResponse().setCharacterEncoding("utf-8");
			RequestUtils.getResponse().setContentType("application/json");
			PrintWriter writer = RequestUtils.getResponse().getWriter();
			writer.println(jsonStr);
			writer.flush();
			writer.close();
		} catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

	public static void printString(String name, Object value) {
		try {
			String jsonStr = "{\""+ name +"\":\"" + value.toString() + "\"}";
			RequestUtils.getResponse().setCharacterEncoding("utf-8");
			RequestUtils.getResponse().setContentType("application/json");
			PrintWriter writer = RequestUtils.getResponse().getWriter();
			writer.println(jsonStr);
			writer.flush();
			writer.close();
		} catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

}
