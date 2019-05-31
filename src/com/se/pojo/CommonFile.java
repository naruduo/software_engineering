package com.se.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "common_file")
public class CommonFile {
	public final static int SLIDE = 1, TEST = 2;
	@Id
	@Column(name = "file_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "file_name")
	private String fileName;
	@Column(name = "file_type")
	private int fileType;
	@Column(name = "release_time")
	private Date releaseTime;
	@Column(name = "download_time")
	private int downloadTimes;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getFileType() {
		return fileType;
	}

	public void setFileType(int fileType) {
		this.fileType = fileType;
	}

	public Date getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}

	public int getDownloadTimes() {
		return downloadTimes;
	}

	public void setDownloadTimes(int downloadTimes) {
		this.downloadTimes = downloadTimes;
	}

	public CommonFile(String fileName, int fileType, Date releaseTime, int downloadTimes) {
		super();
		this.fileName = fileName;
		this.fileType = fileType;
		this.releaseTime = releaseTime;
		this.downloadTimes = downloadTimes;
	}

	public CommonFile() {
	}

	@Override
	public String toString() {
		return "CommonFile [id=" + id + ", fileName=" + fileName + ", fileType=" + fileType + ", releaseTime="
				+ releaseTime + ", downloadTimes=" + downloadTimes + "]";
	}

}
