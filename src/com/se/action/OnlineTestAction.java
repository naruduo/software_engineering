package com.se.action;

import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.OnlineTest;
import com.se.service.OnlineTestService;

public class OnlineTestAction extends ActionSupport {
	OnlineTest onlineTest = new OnlineTest();
	
	public String add() {
		OnlineTestService ots = new OnlineTestService();
		ots.save(onlineTest);
		return "addSuccess";
	}

//	public String delete() {
//		
//	}
//
//	public String list() {
//
//	}

	public OnlineTest getOnlineTest() {
		return onlineTest;
	}

	public void setOnlineTest(OnlineTest onlineTest) {
		this.onlineTest = onlineTest;
	}

}
