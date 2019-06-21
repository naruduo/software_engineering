<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师通知公告</title>
<%@include file="../include/navigator.jsp"%>
</head>
<body>
	<div class="container-fluid">
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
						style="font-size: 20px">资源管理</a></li>
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

		<div class="tableContainer">
			<input id="currentPage" type="hidden" value=" @ViewData[ " currentPage"] "/>
			<input id="totalPages" type="hidden" value=" @ViewData[" totalPages" ] " />
			<table class="table table-hover table-striped" style="font-size:17px">
				<thead>
					<tr>
						<th class="col-md-4 text-center">学生学号</th>
						<th class="col-md-4 text-center">学生姓名</th>
						<th class="col-md-4 text-center">是否查看</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${notificationViews}" var="notificationView">
						<tr>
							<td class="col-md-4 text-center">${notificationView.stu.id}</td>
							<td class="col-md-4 text-center">${notificationView.stu.name}</td>
							<td class="col-md-4 text-center"><c:if
									test="${notificationView.status == true}">
									<span>已查看</span>
								</c:if> <c:if test="${notificationView.status == false}">
									<span>未查看</span>
								</c:if></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<ul id="example"></ul>
			<%@include file="../../include/adminPage_NV.jsp"%>
		</div>
	</div>

</body>
</html>