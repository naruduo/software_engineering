package com.se.action;

import java.io.File;
import java.util.Date;

import org.apache.poi.sl.usermodel.TextRun.FieldType;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.CommonFile;
import com.se.service.CommonFileService;
import com.se.service.FileService;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class CommonFileAction extends ActionSupport {
	private CommonFile cf = new CommonFile();
	private File uploadFile;
	private String uploadFileFileName;
	private String uploadFileContentType;
	private CommonFileService cfs = new CommonFileService();
	private Page page = new Page(0, 5);
	private String downloadFile;
	private int fileId;
	private int fileType;

	public String upload() {
		FileService fs = new FileService();
		fs.upload(0, uploadFileFileName, uploadFile);
		cf.setDownloadTimes(0);
		cf.setFileName(uploadFileFileName);
		cf.setReleaseTime(new Date());
		cfs.add(cf);
		fileType = cf.getFileType();
		return "list";
	}

	public String download() {
		cfs.addDownloadTimes(fileId);
		downloadFile = cfs.get(fileId).getFileName();
		return "downloadCommonFile";
	}

	public String list() {
		page.setParam("&fileType=" + fileType);
		cfs.getTypeList(fileType, page);
		ActionContext.getContext().put("commonFiles", cfs.getTypeList(fileType, page));
		page.setTotal(cfs.total(fileType));
		if ("Teacher".equals(SessionUtils.getRole()))
			return "listTeacherCommonFiles";
		else
			return "listStudentCommonFiles";
	}

	public String delete() {
		String filename = cfs.get(fileId).getFileName();
		FileService fs = new FileService();
		fs.delete(0, filename);
		cfs.delete(fileId);
		return "list";
	}

	public CommonFile getCf() {
		return cf;
	}

	public void setCf(CommonFile cf) {
		this.cf = cf;
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

	public CommonFileService getCfs() {
		return cfs;
	}

	public void setCfs(CommonFileService cfs) {
		this.cfs = cfs;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String getDownloadFile() {
		return downloadFile;
	}

	public void setDownloadFile(String downloadFile) {
		this.downloadFile = downloadFile;
	}

	public int getFileId() {
		return fileId;
	}

	public void setFileId(int downloadId) {
		this.fileId = downloadId;
	}

	public int getFileType() {
		return fileType;
	}

	public void setFileType(int fileType) {
		this.fileType = fileType;
	}

}
