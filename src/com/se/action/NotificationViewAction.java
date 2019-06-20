package com.se.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.NotificationView;
import com.se.service.NotificationViewService;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class NotificationViewAction extends ActionSupport {

	private NotificationView notificationView;
	private Page page = new Page(0, 8);
	private List<NotificationView> notificationViews;
	private List<Integer> keys;
	private NotificationViewService nvService = new NotificationViewService();
	
	/*
	 * 教师
	 */
	
	/**
	 * 浏览某通知的浏览记录
	 */
	public String browseNotis() {
		notificationViews = nvService.listNotisView(notificationView, page);
		return "browseNotisNotificationView";
	}
	
	/**
	 * 某学生浏览自己的通知浏览记录
	 */
	public String browseMy() {
		notificationViews = nvService.listStusView(SessionUtils.getUserId(), page);
		return "browseMyNotificationView";
	}
	
	/**
	 * 标记通知为已读
	 */
	public String mark() {
		nvService.editNotiView(keys, SessionUtils.getUserId());
		return "listMyNotificationView";
	}

	/*
	 * setter & getter
	 */

	public List<NotificationView> getNotificationViews() {
		return notificationViews;
	}

	public void setNotificationViews(List<NotificationView> notificationViews) {
		this.notificationViews = notificationViews;
	}

	public NotificationView getNotificationView() {
		return notificationView;
	}

	public void setNotificationView(NotificationView notificationView) {
		this.notificationView = notificationView;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Integer> getKeys() {
		return keys;
	}

	public void setKeys(List<Integer> keys) {
		this.keys = keys;
	}
	
}
