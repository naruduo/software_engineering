package com.se.action;

import java.io.File;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.Exp;
import com.se.pojo.ExpDoc;
import com.se.pojo.Student;
import com.se.service.ExpDocService;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class ExpDocAction extends ActionSupport {
	
	/*    文件        */
	private String uploadFileFileName;
	private String uploadFileContentType;
	private File uploadFile;
	/*    附属的实验对象        */
	private Exp exp;
	/*    实验报告        */
	private ExpDoc expDoc;
	private List<ExpDoc> expDocs;
	/*    实验报告业务对象        */
	private ExpDocService expDocService = new ExpDocService();
	/*    执行结果        */
	private String result;
	/*    分页信息       */
	private Page page = new Page(0, 5);
	
	/*
	 * 上传实验报告action
	 * @return uploadCompletion 完成上传
	 */
	public String upload() {
		if(uploadFile == null)
			result = "请上传文件哦~~~";
		else {
			Student stu = (Student)SessionUtils.getHttpSession().get("student");
			System.out.println(exp);
			if(stu == null||exp == null) 
				result = "抱歉，服务器出了一些bug，请联系管理员~~~";
			else {
				//上传文件 记录新的实验报告
				boolean f = expDocService.upload(uploadFileFileName, uploadFile, exp, stu);
				if(f)
					result = "上传成功^.^";
				else
					result = "抱歉，上传失败-.-";
			}
		}
		return "uploadCompletion";
	}
	
	/*
	 * 某学生提交的所有实验报告
	 */
	public String listStus() {
		Integer sno = SessionUtils.getUserId();
		expDocs = expDocService.listStuExpDocs(sno, page);
		return "listStuExpDocs";
	}
	
	/*
	 * 删除某份实验报告
	 */
	public String delete() {
		if(expDoc == null)
			result = "数据错误-.-";
		else {
			if(expDocService.delete(expDoc))
				result = "删除成功(:";
			else 
				result = "抱歉，删除失败-.-";
		}
		return "deleteCompletion";
	}
	
	/*
	 * 修改某份实验报告 
	 * @return
	 */
	public String update() {
		if(expDoc == null) 
			result = "抱歉，数据错误-.-";
		else {
			//上传文件 记录新的实验报告
			boolean f = expDocService.update(uploadFileFileName, uploadFile, expDoc);
			if(f)
				result = "更新成功^.^";
			else
				result = "抱歉，更新失败-.-";
		}
		return "uploadCompletion";
	}
	
	/*
	 * 罗列出某个实验所有实验报告
	 */
	public String listExps() {
		expDocs = expDocService.listExpsExpDocs(expDoc, page);
		return "listExpsExpDocs";
	}
	
	/*
	 * 评分
	 */
	public String mark() {
		if(expDoc.getScore() == null)
			result = "分数不能为空-.-";
		else
			expDocService.markExpDoc(expDoc);
		return "markCompletion";
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
	
	public File getUploadFile() {
		return uploadFile;
	}
	
	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

	public ExpDoc getExpDoc() {
		return expDoc;
	}

	public void setExpDoc(ExpDoc expDoc) {
		this.expDoc = expDoc;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Exp getExp() {
		return exp;
	}

	public void setExp(Exp exp) {
		this.exp = exp;
	}

	public List<ExpDoc> getExpDocs() {
		return expDocs;
	}

	public void setExpDocs(List<ExpDoc> expDocs) {
		this.expDocs = expDocs;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
		
}
