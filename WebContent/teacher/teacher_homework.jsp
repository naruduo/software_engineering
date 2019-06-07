<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生实验教学</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script type="text/javascript">
	function inform() {
		var res = "${result}";
		if (typeof res != "undefined" && res != null && res != "")
			alert(res);
	}
</script>
</head>
<body onload="inform()">
	<div class="container-fluid">
		<div class="row">
			<div class="span12">
				<p class="bg-primary">
					欢迎您：${USER}，${teacher.name}老师 <a
						href="<%=request.getContextPath()%>/logoutUser.action"
						class="pull-right bg-primary">登出</a>
				</p>

				<h1>软件工程精品课</h1>
				<ul class="nav nav-tabs" bgcolor="#3f51b6">
					<li><a
						href="<%=request.getContextPath()%>/teacher/TeacherIndex.jsp"
						style="font-size: 20px">课程主页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/student/stu_homework.jsp"
						style="font-size: 20px">习题作业</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/exp/listExp.action"
						style="font-size: 20px">实验教学</a></li>
					<li><a
						href="<%=request.getContextPath()%>/student/stu_resource.jsp"
						style="font-size: 20px">资源下载</a></li>
					<li><a href="#" style="font-size: 20px">练习管理</a></li>
					<li><a href="teacher/teacher_listMyStudents.action"
						style="font-size: 20px">学生管理</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"
						style="font-size: 20px">个人中心<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">操作日志</a></li>
							<li><a href="contact_us.jsp">联系我们</a></li>
							<li><a href="#">退出登录</a></li>
							<li class="divider"></li>
							<li><a href="#">分割线</a></li>
						</ul></li>
				</ul>
			</div>
			<h3>作业列表</h3>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>作业编号</th>
						<th>作业名称</th>
						<th>发布时间</th>
						<th>截止时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${homeworks}" var="homework">
						<tr class="success">
							<td>${homework.id}</td>
							<td><a
								href="<%=request.getContextPath()%>/file/downloadFile.action?filename=${homework.address}&packageId=${homework.teacher.id}">${homework.name}</a></td>
							<td>${homework.releaseTime}</td>
							<td>${homework.deadline}</td>
							<td class="text-center">
								<button>
									<a
										href="../homework/deleteHomework.action?homeworkId=${homework.id}">删除</a>
								</button>
								<button>
									<a
										href="../teacher/teacher_listMyHomeworkAnswers.action?homeworkId=${homework.id}">批阅</a>
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="text-center">
				<a
					href="<%=request.getContextPath()%>/teacher/teacher_homeworkEditor.jsp"><span
					class="glyphicon glyphicon-plus"></span>新建一个作业</a>
				<%@include file="../include/adminPage.jsp"%>
			</div>

			<h3>这是页脚</h3>
		</div>
	</div>
</body>
</html>