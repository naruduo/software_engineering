package com.se.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.dao.OperationLogDao;
import com.se.pojo.Student;
import com.se.service.OperationLogService;
import com.se.service.StudentService;
import com.se.util.FileUtils;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class FileAction extends ActionSupport {
	private String filename;// 文件名称
	private File returnFile;
	private File uploadFile;
	private String uploadFileFileName;
	private String uploadFileContentType;
	private OperationLogService os = new OperationLogService();
	private int packageId;// 老师或学生的Id，表示的下载文件的文件夹

	public String download() throws Exception {
		// 根据传来的文件名，获取到具体的完整的路径
		String realPath = ServletActionContext.getServletContext()
				.getRealPath(File.separator + "download" + File.separator + packageId);
		System.out.println(realPath + "," + filename);
		returnFile = new File(realPath, filename);
		if (!returnFile.exists())
			return "fail";
		System.out.println(returnFile);
		// 找到文件，响应到浏览器，弹出下载
		os.add("下载", filename, (int) ServletActionContext.getContext().getSession().get("USER"));
		filename = new String(filename.getBytes(), "ISO-8859-1");
		return "downloadSuccess";
	}

	public String upload() {
		String realPath = ServletActionContext.getServletContext().getRealPath(File.separator + "download");
		System.out.println(realPath);
		int userId = (int) ActionContext.getContext().getSession().get("USER");
		File destDir = new File(realPath + File.separator + userId);
		if (!destDir.exists())
			destDir.mkdir();
		System.out.println(destDir);
		File destFile = new File(destDir, uploadFileFileName);
		FileUtils.copy(uploadFile, destFile);
		os.add("上传", uploadFileFileName, (int) ServletActionContext.getContext().getSession().get("USER"));
		return "uploadSuccess";
	}

	// 提供给Struts2框架调用，用来获得要下载的文件的流数据
	// 将获得到的数据返回给浏览器
	public InputStream getInputStream() {
		InputStream is = null;
		try {
			is = new FileInputStream(returnFile);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return is;
	}

	public String delete() {
		String realPath = ServletActionContext.getServletContext()
				.getRealPath(File.separator + "download" + File.separator + SessionUtils.getUserId());
		File destFile = new File(realPath, filename);
		if (!destFile.exists())
			return "deleteFail";
		destFile.delete();
		os.add("删除", filename, (int) ServletActionContext.getContext().getSession().get("USER"));
		return "deleteSuccess";
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {

		try {
			this.filename = new String(filename.getBytes(), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			this.filename = filename;
		}
	}

	public File getReturnFile() {
		return returnFile;
	}

	public void setReturnFile(File returnFile) {
		this.returnFile = returnFile;
	}

	public File getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getUploadFileFileName() {
		return uploadFileFileName;
	}

	public void setUploadFileFileName(String uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}

	public String getUploadFileContentType() {
		return uploadFileContentType;
	}

	public void setUploadFileContentType(String uploadFileContentType) {
		this.uploadFileContentType = uploadFileContentType;
	}

	public int getPackageId() {
		return packageId;
	}

	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}

	public FileAction(File uploadFile, String uploadFileFileName, String uploadFileContentType) {
		this.uploadFile = uploadFile;
		this.uploadFileFileName = uploadFileFileName;
		this.uploadFileContentType = uploadFileContentType;
	}

	public FileAction() {
	}

	public FileAction(String filename) {
		this.filename = filename;
	}

}
