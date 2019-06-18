package com.se.dao;

import java.util.List;

import org.hibernate.query.Query;

import com.se.pojo.Notification;
import com.se.pojo.NotificationView;
import com.se.pojo.Student;
import com.se.util.HibernateUtil;

public class NotificationViewDAO extends BaseDAO<NotificationView> {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void addNotificationView(Notification notification) {
		Query query = HibernateUtil.getSession().createQuery("FROM Student s WHERE s.teacherId=" + notification.getTeacher().getId());
		List<Student> ss = query.list();
		for(Student s : ss) {
			NotificationView nView = new NotificationView();
			nView.setNotification(notification);
			nView.setStatus(false);
			nView.setStu(s);
			HibernateUtil.getSession().save(nView);
		}
	}
	
	public Integer deleteNotificationView(Notification notification) {
		String hql = "DELETE NotificationView nv WHERE nv.notification.notificationId=" + notification.getNotificationId();
		return HibernateUtil.getSession().createQuery(hql).executeUpdate();
	}
	
	@SuppressWarnings("rawtypes")
	public void editNotificationView(List<Integer> notiIds, Integer sno) {
		for(Integer notiId: notiIds) {
			String hql = "FROM NotificationView nv WHERE nv.stu.id=" + sno + " and nv.notification.notificationId=" + notiId;
			Query query = HibernateUtil.getSession().createQuery(hql);
			NotificationView nv = (NotificationView)query.uniqueResult();
			nv.setStatus(true);
			super.update(nv);
		}
	}
	
}
