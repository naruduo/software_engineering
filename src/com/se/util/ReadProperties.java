package com.se.util;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

public class ReadProperties {
	public static Properties fileProperties;
	static {
		fileProperties = new Properties();
		BufferedReader bufferedReader;
		try {
			bufferedReader = new BufferedReader(new FileReader("/properties/StudentAvatar.properties"));
			fileProperties.load(bufferedReader);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public String getFilePath(String key) {
		return fileProperties.getProperty(key);
	}
}
