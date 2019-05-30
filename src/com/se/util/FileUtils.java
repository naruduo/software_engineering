package com.se.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileUtils {
	public static void copy(File source, File target) {
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			// System.out.println(source);
			// System.out.println(target);
			fis = new FileInputStream(source);
			fos = new FileOutputStream(target);
			byte[] buffer = new byte[1024 * 1024 * 2];
			int length;
			while ((length = fis.read(buffer)) > 0) {
				fos.write(buffer, 0, length);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				fis.close();
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
