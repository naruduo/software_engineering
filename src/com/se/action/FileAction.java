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
import com.se.service.FileService;
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
	private int packageId = -1;// 老师或学生的Id，表示的下载文件的文件夹

	public String download() throws Exception {
		// 根据传来的文件名，获取到具体的完整的路径
		System.out.println("HERE");
		String realPath = ServletActionContext.getServletContext()
				.getRealPath(File.separator + "download" + File.separator + packageId);
		returnFile = new File(realPath, filename);
		System.out.println(realPath);
		System.out.println(returnFile);
		if (!returnFile.exists())
			return "fail";

		// 找到文件，响应到浏览器，弹出下载
		os.add("下载", filename, (int) ServletActionContext.getContext().getSession().get("USER"));
		filename = new String(filename.getBytes(), "ISO-8859-1");
		return "downloadSuccess";
	}

	public String upload() {
		FileService fs = new FileService();
		if (fs.upload(packageId, uploadFileFileName, uploadFile))
			return "uploadSuccess";
		else
			return "uploadFail";
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
		FileService fs = new FileService();
		if (fs.delete(packageId, filename))
			return "deleteSuccess";
		else
			return "deleteFail";
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
