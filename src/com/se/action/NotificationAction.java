package com.se.action;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.Notification;
import com.se.pojo.Teacher;
import com.se.service.NotificationService;
import com.se.service.TeacherService;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class NotificationAction extends ActionSupport {
	
	private NotificationService nService = new NotificationService();
	
	private Notification notification;
	private List<Notification> notifications;
	private Page page = new Page(0, 8);
	
	
	/* 教师  */

	/**
	 * 浏览自己发布或系统发布的所有通知
	 * @return 转发路径
	 */
	public String browseMy() {
		notifications = nService.list(SessionUtils.getUserId(), page);
		return "browseMyNotification";
	}
	
	/**
	 * 获取通知
	 */
	public String getThe() {
		notification = nService.get(notification);
		return "showNotification";
	}
	
	/**
	 * 删除某通知
	 */
	public String delete() {
		nService.delete(notification);
		return "listMyNotification";
	}
	
	/**
	 * 新建通知
	 */
	public String create() {
		nService.create(notiFactory());
		return "listMyNotification";
	}
	
	/**
	 * 编辑通知
	 */
	public String edit() {
		nService.edit(notification);
		return "listMyNotification";
	}
	
	/*
	 * setter & getter
	 */
	
	public List<Notification> getNotifications() {
		return notifications;
	}

	public Notification getNotification() {
		return notification;
	}

	public void setNotification(Notification notification) {
		this.notification = notification;
	}

	public void setNotifications(List<Notification> notifications) {
		this.notifications = notifications;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	/*
	 * 一些工具类 包含一些设计模式
	 */
	
	/**
	 * 根据当前登录教师id获取教师信息
	 */
	private Teacher getTeacher() {
		return new TeacherService().get(SessionUtils.getUserId());
	}
	
	/**
	 * 消息工厂：用于新建一个通知实例
	 */
	private Notification notiFactory() {
		if(notification == null)
			return null;
		notification.setReleaseTime(new Date());
		notification.setTeacher(getTeacher());
		return notification;
	}
	
}
