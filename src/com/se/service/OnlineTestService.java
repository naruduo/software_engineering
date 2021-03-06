package com.se.service;

import java.util.Collections;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.se.dao.OnlineTestDao;
import com.se.pojo.OnlineTest;
import com.se.util.HibernateUtil;
import com.se.util.Page;

import freemarker.ext.beans.MapModel;

public class OnlineTestService {
	private OnlineTestDao otd = new OnlineTestDao();

	public OnlineTest get(int id) {
		return otd.get(id);
	}

	public void save(OnlineTest ot) {
		otd.add(ot);
	}

	public void update(OnlineTest ot) {
		otd.update(ot);
	}

	public void delete(OnlineTest ot) {
		otd.delete(ot);
	}

	public void delete(int onlineTestId) {
		otd.delete(OnlineTest.class, onlineTestId);
	}

	public long getTotal(int chapterId) {
		return otd.total("SELECT COUNT(*) FROM OnlineTest WHERE courseChapterId=?0", chapterId);
	}

	public List<OnlineTest> listCourseOnlineTests(Page page, int courseId) {
		Session s = (Session) HibernateUtil.getSession();
		Query query = (Query) s.createQuery("FROM OnlineTest WHERE courseChapterId=?1");
		query.setParameter(1, courseId).setMaxResults(page.getCount()).setFirstResult(page.getStart());
		List<OnlineTest> onlineTests = query.getResultList();
		HibernateUtil.closeSession();
		return onlineTests;
	}

	public List<OnlineTest> getRandomOnlineTests(int courseId, int count) {
		List<OnlineTest> onlineTests = listCourseOnlineTests(new Page(0, Integer.MAX_VALUE), courseId);
		Collections.shuffle(onlineTests);
		onlineTests = onlineTests.subList(0, count - 1);
		return onlineTests;
	}

}
