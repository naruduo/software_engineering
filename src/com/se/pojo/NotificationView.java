package com.se.pojo;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="notification_view")
public class NotificationView implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@ManyToOne(fetch=FetchType.LAZY, 
		targetEntity=Notification.class)
	@JoinColumn(name="notification_id", 
		referencedColumnName="notification_id")
	private Notification notification;
	
	@Id
	@ManyToOne(fetch=FetchType.LAZY,
		targetEntity=Student.class)
	@JoinColumn(name="stu_id", 
			referencedColumnName="id")
	private Student stu;
	
	@Column(name="status")
	private Boolean status;
	
	public NotificationView() {}

	public Notification getNotification() {
		return notification;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public void setNotification(Notification notification) {
		this.notification = notification;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}
	
	
}
