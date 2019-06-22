<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/navigator.jsp"%>
<%@ include file="../include/teacherHeader.jsp"%>
<%
	List<OnlineTest> onlineTests = (List<OnlineTest>) request.getAttribute("onlineTests");
	CourseChapter chapter = (CourseChapter) request.getAttribute("courseChapter");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理在线练习</title>
<%@include file="../include/navigator.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="span12">
				<p class="bg-primary">
					欢迎您：${USER}，${teacher.name}老师 <a
						href="<%=request.getContextPath()%>/user/logoutUser.action"
						class="pull-right bg-primary">登出</a>
				</p>
				<h1>软件工程精品课</h1>
				<ul class="nav nav-tabs" bgcolor="#3f51b6">
					<li><a
						href="<%=request.getContextPath()%>/teacher/TeacherIndex.jsp"
						style="font-size: 20px">课程主页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/notification/browseMyNotification.action"
						style="font-size: 20px">通知公告</a></li>
					<li><a
						href="<%=request.getContextPath()%>/teacher/teacher_listMyHomeworks.action?id=${USER}"
						style="font-size: 20px">习题作业</a></li>
					<li class=""><a
						href="<%=request.getContextPath()%>/exp/listExp.action"
						style="font-size: 20px">实验教学</a></li>
					<li><a
						href="<%=request.getContextPath()%>/teacher/teacher_resource.jsp"
						style="font-size: 20px">资源管理</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action"
						style="font-size: 20px">练习管理</a></li>
					<li><a
						href="<%=request.getContextPath()%>/teacher/teacher_listMyStudents.action"
						style="font-size: 20px">学生管理</a></li>
					<li><a href="teacher/teacher_listMyStudents.action"
						style="font-size: 20px">课程论坛</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"
						style="font-size: 20px">个人中心<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a
								href="<%=request.getContextPath()%>/teacher/teacher_listMyOperationLogs.action">操作日志</a>
							</li>
							<li><a href="contact_us.jsp">联系我们</a></li>
							<li><a
								href="<%=request.getContextPath()%>/teacher/teacher_changePassword.jsp">修改密码</a></li>
							<li class="divider"></li>
							<li><a
								href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a>
							</li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

	<h3><%=chapter.getUnitName()%>-<%=chapter.getUnitDesc()%>习题
	</h3>
	<table class="table table-bordered" style="font-size: 17px">
		<thead>
			<tr>
				<th>题目ID</th>
				<th>题目名</th>
				<th>做题次数</th>
				<th>正确率</th>
				<th>删除</th>
				<th>修改</th>
			</tr>
		</thead>
		<%
			for (OnlineTest ot : onlineTests) {
		%>
		<tr>
			<td><%=ot.getId()%></td>
			<td
				style="max-width: 300px; white-space: nowrap; overflow: hidden; word-break: keep-all; text-overflow: ellipsis;"><%=ot.getQuestion()%></td>
			<td><%=ot.getAnsFreq()%></td>
			<td><%=ot.getAnsFreq() == 0 ? 0 : ot.getTrueFreq() * 100.0 / ot.getAnsFreq()%>%</td>
			<td><button class="btn btn-primary">
					<a style="text-decoration: none; color: white"
						href="../onlineTest/deleteOnlineTest.action?onlineTest.id=<%=ot.getId()%>">删除</a>
				</button></td>
			<td><button class="btn btn-primary">
					<a style="text-decoration: none; color: white"
						href="../onlineTest/teacherAddOnlineTest.action?onlineTest.id=<%=ot.getId()%>">修改</a>
				</button></td>
		</tr>
		<%
			}
		%>

	</table>

	<button class="btn btn-primary">
		<a style="text-decoration: none; color: white"
			href="<%=request.getContextPath()%>/onlineTest/teacherAddOnlineTest.action?">添加题目</a>
	</button>
	<div class="text-center">
		<%@include file="../include/adminPage.jsp"%>
	</div>
	</div>
	<br />
	<br />
	<br />
	<div class="text-center">
		<span class="fd-fbp-span1"> 学院地址：福州市闽侯县学园路2号福州大学数学与计算机科学学院 </span><br />
		<span class="fd-fbp-span2"> 版权声明：© 2019 福州大学软件学院19春季软工实践G013.
			版权所有. 保留所有权利 </span>
	</div>
</body>
</html>