package com.se.service;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.se.dao.OperationLogDao;
import com.se.pojo.OperationLog;
import com.se.util.HibernateUtil;
import com.se.util.Page;

public class OperationLogService {
	public void add(String op, String filename, int userId) {
		OperationLogDao old = new OperationLogDao();
		OperationLog ol = new OperationLog();
		ol.setOperation(op);
		ol.setFilename(filename);
		ol.setOperationTime(new Date());
		ol.setUserId(userId);
		old.add(ol);
	}

	public List<OperationLog> get(int userId, Page page) {
		OperationLogDao old = new OperationLogDao();
		page.setTotal(old.total(userId));
		return old.get(userId, page.getStart(), page.getCount());
	}

	public Long total(int userId) {
		OperationLogDao old = new OperationLogDao();
		return old.total(userId);
	}
}
