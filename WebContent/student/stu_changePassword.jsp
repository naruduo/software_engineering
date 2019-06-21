<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/studentHeader.jsp"%>
<%
	String oldPasswordError = (String) request.getAttribute("oldPasswordError");
	String newPasswordError = (String) request.getAttribute("newPasswordError");
	String confirmPasswordError = (String) request.getAttribute("confirmPasswordError");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>软件工程精品课</title>
<%@include file="../include/navigator.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="span12">
				<p class="bg-primary">
					欢迎您：${USER},${student.name} 同学 <a
						href="<%=request.getContextPath()%>/user/logoutUser.action"
						class="pull-right bg-primary">登出</a>
				</p>

				<h1>软件工程精品课</h1>
				<ul class="nav nav-tabs" bgcolor="#3f51b6">
					<li><a
						href="<%=request.getContextPath()%>/student/StudentIndex.jsp"
						style="font-size: 20px">课程主页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/notificationView/browseMyNotificationView.action"
						style="font-size: 20px">通知公告</a></li>
					<li><a
						href="<%=request.getContextPath()%>/student/listMyHomeworksStudent.action"
						style="font-size: 20px">习题作业</a></li>
					<li class=""><a
						href="<%=request.getContextPath()%>/exp/listExp.action"
						style="font-size: 20px">实验教学</a></li>
					<li><a
						href="<%=request.getContextPath()%>/student/stu_resource.jsp"
						style="font-size: 20px">资源下载</a></li>
					<li><a
						href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action"
						style="font-size: 20px">在线练习</a></li>
					<li><a href="#" style="font-size: 20px">学习社区</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"
						style="font-size: 20px">个人中心<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a
								href="<%=request.getContextPath()%>/student/listMyOperationLogsStudent.action">操作日志</a>
							</li>
							<li><a href="../contact_us.jsp">联系我们</a></li>
							<li><a
								href="<%=request.getContextPath()%>/student/stu_changePassword.jsp">修改密码</a></li>
							<li class="divider"></li>
							<li><a
								href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a>
							</li>
						</ul></li>
				</ul>
			</div>
		</div>

		<div style="padding: 60px 400px 10px;">
			<form class="bs-example bs-example-form" role="form"
				action="user/changePasswordUser.action" method="post">
				<div class="input-group">
					<span class="input-group-addon">&nbsp;&nbsp;旧密码&nbsp;&nbsp;</span>
					<input type="password" class="form-control" name="oldPassword">
				</div><%=oldPasswordError != null ? "<p style='color:red'>" + oldPasswordError + "</s>" : ""%>
				<br> <br>
				<div class="input-group">
					<span class="input-group-addon">&nbsp;&nbsp;新密码&nbsp;&nbsp;</span>
					<input type="password" class="form-control" name="newPassword">
				</div><%=newPasswordError != null ? "<p style='color:red'>" + newPasswordError + "</p>" : ""%>
				<br /> <br />
				<div class="input-group">
					<span class="input-group-addon">确认密码</span> <input type="password"
						class="form-control" name="confirmPassword">
				</div><%=confirmPasswordError != null ? "<p style='color:red'>" + confirmPasswordError + "</p>" : ""%>
				<br> <br>
				<center>
					<button type="submit" class="btn btn-primary">提交</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-primary">重置</button>
				</center>
			</form>
		</div>
	</div>
</body>
</html>