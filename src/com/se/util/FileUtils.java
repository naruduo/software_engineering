package com.se.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

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

	public static boolean filesToZip(List<File> sourceFiles, String zipFilePath, String fileName) {
		boolean flag = false;
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		FileOutputStream fos = null;
		ZipOutputStream zos = null;
		try {
			File zipFile = new File(zipFilePath + File.separator + fileName + ".zip");
			
			fos = new FileOutputStream(zipFile);
			zos = new ZipOutputStream(new BufferedOutputStream(fos));
			byte[] bufs = new byte[1024 * 1024 * 10];
			for (int i = 0; i < sourceFiles.size(); ++i) {
				// 创建ZIP实体，并添加进压缩包
				ZipEntry zipEntry = new ZipEntry(sourceFiles.get(i).getName());
				zos.putNextEntry(zipEntry);
				// 读取待压缩的文件并写进压缩包里
				fis = new FileInputStream(sourceFiles.get(i));
				bis = new BufferedInputStream(fis, 1024 * 1024 * 10);
				int read = 0;
				while ((read = bis.read(bufs, 0, 1024 * 1024 * 10)) != -1) {
					zos.write(bufs, 0, read);
				}
			}
			flag = true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 关闭流
			try {
				if (null != bis)
					bis.close();
				if (null != zos)
					zos.close();
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
		return flag;
	}
}
