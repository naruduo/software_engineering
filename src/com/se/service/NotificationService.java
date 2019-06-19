package com.se.service;

import java.util.Date;
import java.util.List;

import com.se.dao.NotificationDAO;
import com.se.pojo.Notification;
import com.se.util.CheckParamUtils;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class NotificationService {
	
	private NotificationDAO nDao = new NotificationDAO();
	private NotificationViewService nvService = new NotificationViewService();
	
	/**
	 * 查询某教师的通知
	 * @param tid 教师id
	 * @param p 页信息
	 * @return 对应教师的通知列表
	 */
	public List<Notification> list(Integer tid, Page p) {
		return nDao.listByPageAndFKey(Notification.class, "teacher.id", tid, p);
	}
	
	/**
	 * 获取通知
	 */
	public Notification get(Notification notification) {
		return nDao.get(Notification.class, notification.getNotificationId());
	}
	
	/**
	 * 删除某通知
	 */
	public Boolean delete(Notification notification) {
		try {
			if(notification != null) 
				return nDao.delete(Notification.class, notification.getNotificationId());
			nvService.deleteNotiView(notification);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}
	
	/**
	 * 新建通知
	 */
	public Boolean create(Notification notification) {
		try {
			if(notification != null) 
				nDao.add(notification);
			nvService.createNotiView(notification);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	/**
	 * 自动创建通知
	 * @param message 通知内容
	 * @return 是否创建成功
	 */
	public Boolean autoCreateNoti(String message) {
		if(CheckParamUtils.isEmpty(message))
			return false;
		Notification nNotification = new Notification();
		nNotification.setNotiContent(message);
		nNotification.setReleaseTime(new Date());
		nNotification.setTeacher(new TeacherService().get(SessionUtils.getUserId()));
		return create(nNotification);
	}	
	
	/**
	 * 编辑通知
	 */
	public Boolean edit(Notification notification) {
		Notification oNotification = 
				nDao.get(Notification.class, notification.getNotificationId());
		if(CheckParamUtils.isEmpty(notification.getNotiContent()))
			return false;
		try {
			oNotification.setNotiContent(notification.getNotiContent());
			nDao.update(oNotification);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
}
