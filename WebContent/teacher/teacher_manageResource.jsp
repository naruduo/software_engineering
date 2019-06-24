<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/navigator.jsp"%>
<%@ include file="../include/teacherHeader.jsp"%>
<%
	List<CommonFile> commonFiles = (List<CommonFile>) request.getAttribute("commonFiles");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>资源操作</title>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap.min.css.map" />
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstarp.js"></script>
<script type="text/javascript" src="../js/npm.js"></script>
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
					<li><a href="<%=request.getContextPath()%>/exp/listExp.action"
						style="font-size: 20px">实验教学</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/teacher/teacher_resource.jsp"
						style="font-size: 20px">资源管理</a></li>
					<li><a
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
		<br />&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="btn btn-primary">
			<a style="text-decoration: none; color: white"
				href="<%=request.getContextPath()%>/teacher/teacher_uploadCommonFile.jsp">上传资源</a>
		</button>
		<br /> <br />
		<table class="table table-bordered" border="1">
			<thead>
				<th>文件ID</th>
				<th>文件名</th>
				<th>发布时间</th>
				<th>下载次数</th>
				<th>操作</th>
			</thead>
			<%
				for (CommonFile cf : commonFiles) {
			%>
			<tr>
				<td><%=cf.getId()%></td>
				<td><%=cf.getFileName()%></td>
				<td><%=cf.getReleaseTime()%></td>
				<td><%=cf.getDownloadTimes()%></td>
				<td><button class="btn btn-primary">
						<a style="text-decoration: none; color: white"
							href="<%=request.getContextPath()%>/commonFile/commonFile_download.action?fileId=<%=cf.getId()%>">下载</a>
					</button>
					<button class="btn btn-primary">
						<a style="text-decoration: none; color: white"
							href="<%=request.getContextPath()%>/commonFile/TcommonFile_delete.action?fileId=<%=cf.getId()%>&fileType=<%=cf.getFileType()%>">删除</a>
					</button></td>
			</tr>
			<%
				}
			%>

		</table>
		<div class="text-center">
			<%@include file="../include/adminPage.jsp"%>
		</div>
	</div>
</body>
</html>