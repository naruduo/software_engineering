package com.se.action;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.se.dao.HomeworkAnswerDao;
import com.se.dao.HomeworkDao;
import com.se.pojo.Homework;
import com.se.pojo.HomeworkAnswer;
import com.se.pojo.Student;
import com.se.service.FileService;
import com.se.service.HomeworkAnswerService;
import com.se.service.HomeworkService;
import com.se.util.FileUtils;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class HomeworkAnswerAction extends ActionSupport {
	private int homeworkId;
	private String packFileName;
	private File uploadFile;
	private String uploadFileFileName;
	private String uploadFileContentType;
	private HomeworkAnswerService has = new HomeworkAnswerService();
	private int score;
	private int studentId;
	private Map<Integer, Integer> scores = new HashMap<Integer, Integer>();

	public String score() {
		for (int id : scores.keySet())
			has.updateScore(homeworkId, id, scores.get(id));
		return "scoreSuccess";
	}

	public String add() {
		System.out.println(uploadFile + "," + uploadFileFileName + "," + uploadFileContentType);
		FileService fs = new FileService();

		HomeworkAnswer ha = has.getDetail(homeworkId, SessionUtils.getUserId());
		if (ha != null) {
			fs.delete(SessionUtils.getUserId(), ha.getAddress());
		} else {
			ha = new HomeworkAnswer();
			ha.setStudentId(SessionUtils.getUserId());
			ha.setHomeworkId(homeworkId);
			ha.setScore(-1);
		}

		ha.setAddress(uploadFileFileName);
		ha.setSubmitTime(new Date());

		System.out.println(ha);

		has.addOrUpdate(ha);
		fs.upload(SessionUtils.getUserId(), uploadFileFileName, uploadFile);
		return "addSuccess";
	}

	public String getDetail() {
		HomeworkService hs = new HomeworkService();
		HomeworkAnswer ha = has.getDetail(homeworkId, SessionUtils.getUserId());
		Homework homework = hs.get(homeworkId);
		ActionContext.getContext().put("homework", homework);
		ActionContext.getContext().put("homeworkAnswer", ha);
		return "getDetailSuccess";
	}

	public String submit() {
		FileService fs = new FileService();
		HomeworkAnswerService has = new HomeworkAnswerService();
		HomeworkAnswer ha = has.getDetail(homeworkId, SessionUtils.getUserId());
		if (ha == null) {
			ha = new HomeworkAnswer();
			ha.setHomeworkId(homeworkId);
			ha.setStudentId(SessionUtils.getUserId());
		} else {
			fs.delete(SessionUtils.getUserId(), ha.getAddress());
		}
		ha.setAddress(uploadFileFileName);
		ha.setSubmitTime(new Date());
		fs.upload(SessionUtils.getUserId(), uploadFileFileName, uploadFile);
		has.addOrUpdate(ha);
		return "submitSuccess";
	}

	public String pack() {
		String realPath = SessionUtils.getRealPath("download");
		HomeworkAnswerService has = new HomeworkAnswerService();
		HomeworkService hs = new HomeworkService();
		List<HomeworkAnswer> hwas = has.list(homeworkId);
		List<File> sourceFiles = new LinkedList<File>();
		for (HomeworkAnswer ha : hwas)
			sourceFiles.add(new File(realPath + File.separator + ha.getStudentId(), ha.getAddress()));
		FileUtils.filesToZip(sourceFiles, realPath + File.separator + SessionUtils.getUserId(),
				hs.get(homeworkId).getName() + "Answers");
		packFileName = hs.get(homeworkId).getName() + "Answers.zip";
		return "packSuccess";
	}

	public String getHomeworkAnswers() {

		return "getHomeworkAnswers";
	}

	public int getHomeworkId() {
		return homeworkId;
	}

	public void setHomeworkId(int homeworkId) {
		this.homeworkId = homeworkId;
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

	public HomeworkAnswerService getHas() {
		return has;
	}

	public void setHas(HomeworkAnswerService has) {
		this.has = has;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getPackFileName() {
		return packFileName;
	}

	public void setPackFileName(String packFileName) {
		this.packFileName = packFileName;
	}

	public Map<Integer, Integer> getScores() {
		return scores;
	}

	public void setScores(Map<Integer, Integer> scores) {
		this.scores = scores;
	}

}
