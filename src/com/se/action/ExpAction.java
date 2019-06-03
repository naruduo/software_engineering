package com.se.action;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.Exp;
import com.se.pojo.Student;
import com.se.pojo.Teacher;
import com.se.service.ExpService;
import com.se.util.Page;
import com.se.util.RequestUtils;
import com.se.util.SessionUtils;


@SuppressWarnings("rawtypes")
public class ExpAction extends ActionSupport {
	
	private Exp exp;
	//The property of a file
	private int packageId = -1;
	private String filename;
	private File uploadFile;
	private String uploadFileFileName;
	private String uploadFileContentType;
	private Date deadline;
	private List<Exp> exps;
	private Page page = new Page(0, 5);
	private ExpService expService = new ExpService();
	
	@SuppressWarnings("unchecked")
	public String download() {
		if("Teacher".equals(SessionUtils.getRole()))
			packageId = SessionUtils.getUserId();
		else if("Student".equals(SessionUtils.getRole()))
			packageId = ((Student)SessionUtils.getHttpSession().get("Student")).getTeacherId();
		return "downloadFile";
	}

	@SuppressWarnings("unchecked")
	public String upload() {
		if(uploadFile == null||exp.getDeadline() == null)
			//文件名、文件、截止时间都不能为空
			RequestUtils.getRequest().put("result", "文件或文件截止时间不能为空");
		else {
			Map httpSession = (Map)ActionContext.getContext().getSession();
			Teacher teacher = (Teacher)httpSession.get("teacher");
			if(!expService.upload(exp, uploadFileFileName, uploadFile, teacher))
				//上传失败
				RequestUtils.getRequest().put("result", "抱歉，文件上传失败。。。");
			else
				RequestUtils.getRequest().put("result", "实验新建成功~~~");
		}	
		return "uploadCompletion";
	}
	
	@SuppressWarnings("unchecked")
	public String update() {
		//获取教师id
		int tid = SessionUtils.getUserId();
		//更新文件
		if(!expService.update(exp, uploadFileFileName, uploadFile, tid))
			//失败
			RequestUtils.getRequest().put("result", "抱歉，上传文件失败。。。");
		else
			//成功
			RequestUtils.getRequest().put("result", "实验已成功更新~~~");
		Teacher tea = (Teacher)((Map)ActionContext.getContext().getSession()).get("teacher");
		exps = expService.listMyExps(tea.getId(), page);
		return "updateCompletion";
	}
	
	
	/*
	 * 根据教师id获得其实验报告
	 */
	public String list() {
		Map session = SessionUtils.getHttpSession();
		String role = session.get("ROLE").toString();
		//根据角色获取教师id
		if("Student".equals(role)) {
			Student stu = (Student)session.get("student");
			exps = expService.listMyExps(stu.getTeacherId(), page);
		} else if("Teacher".equals(role)) {
			Teacher tea = (Teacher)session.get("teacher");
			exps = expService.listMyExps(tea.getId(), page);
		}
		return "list" + role + "Exps";
	}
	
	
	/*
	 * 获取实验详细信息
	 */
	public String get() {
		String role = 
			ActionContext.getContext().getSession().get("ROLE").toString();
		exp = expService.getExp(exp.getExpId());
		return "get" + role + "Exp";
	}
	
	public String getUploadFileFileName() {
		return uploadFileFileName;
	}

	public void setUploadFileFileName(String uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public File getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getUploadFileContentType() {
		return uploadFileContentType;
	}

	public void setUploadFileContentType(String uploadFileContentType) {
		this.uploadFileContentType = uploadFileContentType;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public List<Exp> getExps() {
		return exps;
	}

	public void setExps(List<Exp> exps) {
		this.exps = exps;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	public Exp getExp() {
		return exp;
	}

	public void setExp(Exp exp) {
		this.exp = exp;
	}

	public int getPackageId() {
		return packageId;
	}

	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	
}
