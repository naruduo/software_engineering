<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<div class="row">
	<div class="span12">
		<p class="bg-primary">
			欢迎您：${USER}，${teacher.name}老师 <a
				href="<%=request.getContextPath()%>/logout.action"
				class="pull-right bg-primary">登出</a>
		</p>

		<h1>软件工程精品课</h1>
		<ul class="nav nav-tabs" bgcolor="#3f51b6">
			<li class="active"><a
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
				style="font-size: 20px">资源下载</a></li>
			<li><a
				href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action"
				style="font-size: 20px">练习管理</a></li>
			<li><a href="teacher/teacher_listMyStudents.action"
				style="font-size: 20px">课程论坛</a></li>
			<li class="dropdown pull-right"><a href="#"
				data-toggle="dropdown" class="dropdown-toggle"
				style="font-size: 20px">个人中心<strong class="caret"></strong></a>
				<ul class="dropdown-menu">
					<li><a href="teacher/teacher_listMyOperationLogs.action">操作日志</a>
					</li>
					<li><a href="contact_us.jsp">联系我们</a></li>
					<li><a href="#">更多设置</a></li>
					<li class="divider"></li>
					<li><a
						href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a>
					</li>
				</ul></li>
		</ul>
	</div>
</div>