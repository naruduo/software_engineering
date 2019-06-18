package com.se.service;

import java.util.List;

import org.hibernate.Transaction;

import com.se.dao.NotificationViewDAO;
import com.se.pojo.Notification;
import com.se.pojo.NotificationView;
import com.se.util.HibernateUtil;
import com.se.util.Page;

public class NotificationViewService {
	
	private NotificationViewDAO nvDao = new NotificationViewDAO();
	
	/**
	 * 某条通知的学生浏览记录
	 */
	public List<NotificationView> listNotisView(NotificationView nView, Page p) {
		return nvDao.listByPageAndFKey(NotificationView.class, "notification.notificationId",
			nView.getNotification().getNotificationId(), p);
	}
	
	/**
	 * 某学生的通知
	 */
	public List<NotificationView> listStusView(Integer sno, Page p) {
		return nvDao.listByPageAndFKey(NotificationView.class, "stu.id", sno, p);
	}
	
	/**
	 * 标记一些通知为已读
	 * @param notiIds 通知id列表
	 */
	public Boolean editNotiView(List<Integer> notiIds, Integer sno) {
		try {
			nvDao.editNotificationView(notiIds, sno);
			HibernateUtil.getSession().getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			HibernateUtil.getSession().getTransaction().rollback();
			return false;
		}
		return true;
	}

	/**
	 * 为该教师每个学生新建该通知的浏览记录
	 */
	public Boolean createNotiView(Notification notification) {	
		try {
			nvDao.addNotificationView(notification);
			HibernateUtil.getSession().getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			HibernateUtil.getSession().getTransaction().rollback();
			return false;
		}
		return true;
	}
	
	/**
	 * 删除某通知下的浏览记录
	 */
	public Boolean deleteNotiView(Notification notification) {
		try {
			nvDao.deleteNotificationView(notification);
			HibernateUtil.getSession().getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			HibernateUtil.getSession().getTransaction().rollback();
			return false;
		}
		return true;
	}
	
}
