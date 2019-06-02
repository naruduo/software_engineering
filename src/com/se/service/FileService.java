package com.se.service;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import com.se.util.FileUtils;
import com.se.util.SessionUtils;

public class FileService {
	private OperationLogService os = new OperationLogService();

	public boolean upload(int packageId, String uploadFileName, File uploadFile) {
		String realPath = ServletActionContext.getServletContext().getRealPath(File.separator + "download");
		if (packageId == -1)
			packageId = SessionUtils.getUserId();
		File destDir = new File(realPath + File.separator + packageId);
		if (!destDir.exists())
			destDir.mkdir();
		File destFile = new File(destDir, uploadFileName);
		FileUtils.copy(uploadFile, destFile);
		os.add("上传", uploadFileName, (int) ServletActionContext.getContext().getSession().get("USER"));
		return true;
	}

	public boolean delete(int packageId, String filename) {
		if (packageId == -1)
			packageId = SessionUtils.getUserId();
		String realPath = ServletActionContext.getServletContext()
				.getRealPath(File.separator + "download" + File.separator + SessionUtils.getUserId());
		File destFile = new File(realPath, filename);
		if (!destFile.exists())
			return false;
		destFile.delete();
		os.add("删除", filename, (int) ServletActionContext.getContext().getSession().get("USER"));
		return true;
	}
}
