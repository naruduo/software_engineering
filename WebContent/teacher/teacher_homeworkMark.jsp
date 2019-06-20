<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/teacherHeader.jsp"%>
<%
	Homework hw = (Homework) request.getAttribute("homework");
	Map<Integer, HomeworkAnswer> has = (Map<Integer, HomeworkAnswer>) request.getAttribute("homeworkAnswers");
	List<Student> students = (List<Student>) request.getAttribute("students");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<title>批阅</title>
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
					<li><a
						href="<%=request.getContextPath()%>/teacher/TeacherIndex.jsp"
						style="font-size: 20px">课程主页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/notification/browseMyNotification.action"
						style="font-size: 20px">通知公告</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/teacher/teacher_listMyHomeworks.action?id=${USER}"
						style="font-size: 20px">习题作业</a></li>
					<li><a href="<%=request.getContextPath()%>/exp/listExp.action"
						style="font-size: 20px">实验教学</a></li>
					<li><a
						href="<%=request.getContextPath()%>/teacher/teacher_resource.jsp"
						style="font-size: 20px">资源管理</a></li>
					<li><a
						href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action"
						style="font-size: 20px">练习管理</a></li>
					<li><a href="<%=request.getContextPath()%>/teacher/teacher_listMyStudents.action"
						style="font-size: 20px">学生管理</a></li>
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
		<p class="bg-primary">
			欢迎您：${USER}，${teacher.name}老师 <a
				href="<%=request.getContextPath()%>/logout.action"
				class="pull-right bg-primary">登出</a>
		</p>
		<h1><%=hw.getName()%></h1>
		<form action="../homeworkAnswer/scoreHomeworkAnswer.action?"
			method="post">
			<input type="hidden" name="homeworkId" value="<%=hw.getId()%>" />
			<button>
				<a
					href="../homeworkAnswer/packHomeworkAnswer.action?homeworkId=<%=hw.getId()%>">打包下载</a>
			</button>
			<inputtype ="submit" value="保存评分" />
			<table class="table table=bordered" style="font-size: 20px">
				<thead>
					<th>学号</th>
					<th>名字</th>
					<th>提交时间</th>
					<th>下载</th>
					<th>评分</th>
				</thead>
				<%
					for (Student stu : students) {
				%>
				<tr>
					<td><%=stu.getId()%></td>
					<td><%=stu.getName()%></td>
					<%
						if (has.get(stu.getId()) != null) {
								HomeworkAnswer ha = has.get(stu.getId());
					%>
					<td><%=ha.getSubmitTime()%></td>
					<td><button>
							<a
								href="../file/downloadFile.action?filename=<%=ha.getAddress()%>&packageId=<%=ha.getStudentId()%>">下载</a>
						</button></td>
					<td>评分：<input name="scores[<%=ha.getStudentId()%>]"
						type="text" onkeyup="value=value.replace(/[^\d]/g,'')"
						value="<%=ha.getScore()%>" /></td>
					<%
						} else {
					%>
					<td colspan="3">未提交</td>
				</tr>
				<%
					}
					}
				%>
			</table>
		</form>
	</div>
</body>
</html>