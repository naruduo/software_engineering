package com.se.Test;

import java.util.List;

import org.junit.Test;

import com.se.dao.OperationLogDao;
import com.se.pojo.OperationLog;
import com.se.service.OperationLogService;
import com.se.util.Page;

public class OperationLogServiceTest {
	private OperationLogDao old = new OperationLogDao();
	private OperationLogService ols = new OperationLogService();

	@Test
	public void get() {
		List<OperationLog> list = ols.get(1001, new Page(0, 3));
		for (OperationLog ol : list) {
			System.out.println(ol);
		}
	}
}
