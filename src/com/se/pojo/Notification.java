package com.se.pojo;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="notice")
public class Notification {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="notification_id")
	private Integer notificationId;
	
	@Transient
	@OneToMany(cascade={CascadeType.PERSIST, CascadeType.MERGE}, 
			targetEntity=NotificationView.class, 
			mappedBy="notification")
	private List notificationViews;
	
	@Column(name="noti_content")
	private String notiContent;
	
	@ManyToOne(fetch=FetchType.LAZY,
			targetEntity=Teacher.class)
	@JoinColumn(name="releaser_id", 
			referencedColumnName="teacher_id")
	private Teacher teacher;
	
	@Column(name="release_time")
	private Date releaseTime;
	
	public Notification() {}

	public Integer getNotificationId() {
		return notificationId;
	}

	public void setNotificationId(Integer notificationId) {
		this.notificationId = notificationId;
	}

	public String getNotiContent() {
		return notiContent;
	}

	public void setNotiContent(String notiContent) {
		this.notiContent = notiContent;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Date getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}		
	
}
