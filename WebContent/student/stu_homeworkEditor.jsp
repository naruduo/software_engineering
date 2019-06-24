<%@page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%
	Homework homework = (Homework) request.getAttribute("homework");
	HomeworkAnswer ha = (HomeworkAnswer) request.getAttribute("homeworkAnswer");
	Student stu = (Student) session.getAttribute("Student");
	String fileError = (String) request.getAttribute("fileError");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生作业编辑</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- Owl-carousel-CSS -->
<link href="css/owl.carousel.css" rel="stylesheet">
<link rel="stylesheet" href="css/team.css" type="text/css" media="all" />
<link href="css/tea_style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome-icons -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
<!-- common css -->
<link type="text/css" rel="stylesheet" href="css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet"
	href="css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet"
	href="css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet"
	href="css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css.map" />

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstarp.js"></script>
<script type="text/javascript" src="js/npm.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="span12">
				<p class="bg-primary">
					欢迎您：${USER},${student.name}同学 <a
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
					<li class="active"><a
						href="<%=request.getContextPath()%>/student/listMyHomeworksStudent.action"
						style="font-size: 20px">习题作业</a></li>
					<li><a href="<%=request.getContextPath()%>/exp/listExp.action"
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
							<li><a href="student/listMyOperationLogsStudent.action">操作日志</a>
							</li>
							<li><a href="../contact_us.jsp">联系我们</a></li>
							<li><a href="#">更多设置</a></li>
							<li class="divider"></li>
							<li><a
								href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a>
							</li>
						</ul></li>
				</ul>
			</div>
		</div>


		<h1><%=homework.getName()%></h1>
		<form action="../homeworkAnswer/submitHomeworkAnswer.action"
			method="post" enctype="multipart/form-data">
			<input type="hidden" name="homeworkId" value="<%=homework.getId()%>" />
			<table class="table table-bordered">
				<tr>
					<td>作业名</td>
					<td><%=homework.getName()%></td>
				</tr>
				<tr>
					<td>发布时间</td>
					<td><%=homework.getReleaseTime()%></td>
				</tr>
				<tr>
					<td>截至时间</td>
					<td><%=homework.getDeadline()%></td>
				</tr>
				<tr>
					<td>提交情况</td>
					<%
						if (ha != null) {
					%>
					<td><a
						href="../file/downloadFile.action?filename=<%=ha.getAddress()%>&packageId=<%=session.getAttribute("USER")%>"><%=ha.getAddress()%></a></td>
					<%
						} else {
					%>
					<td>未提交</td>
					<%
						}
					%>
				</tr>
				<tr>
					<td>提交</td>
					<td>
						<%
							if (homework.getDeadline().compareTo(new Date()) > 0) {
						%> <input type="file" name="uploadFile"
						style="display: inline-block" /><input type="submit" value="提交"
						style="display: inline-block" /><span style="color: red"><%=fileError%></span>
						<%
							} else {
						%>已经截止！ <%
							}
						%>
					</td>
				</tr>
				<tr>
					<td>得分</td>
					<td><input type="text"
						value="<%=ha != null ? ha.getScore() : ""%>" disabled="disabled" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>