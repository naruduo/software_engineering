package com.se.util;

public class CheckParamUtils {
	
	/**
	 * 验证字符串是否为空，字符串的内容是否为空
	 * @param str 待检验的字符串
	 * @return 结果
	 */
	public static boolean isEmpty(String str) {
		return str == null||str.equals("");
	}

}
