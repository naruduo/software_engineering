
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/studentHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生习题作业</title>
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

		<h3>作业列表</h3>

		<table class="table table-bordered" style="font-size: 17px">
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
					<tr>
						<td>${homework.id}</td>
						<td><a
							href="file/downloadFile.action?filename=${homework.address}&packageId=${homework.teacher.id}">${homework.name}</a></td>
						<td>${homework.releaseTime}</td>
						<td>${homework.deadline}</td>
						<td><button class="btn btn-primary">
								<a style="text-decoration: none; color: white"
									href="../file/downloadFile.action?filename=${homework.address}&packageId=${homework.teacher.id}">作业要求</a>
							</button>
							<button class="btn btn-primary">
								<a style="text-decoration: none; color: white"
									href="../homeworkAnswer/getDetailHomeworkAnswer.action?homeworkId=${homework.id}"
									role="button">提交</a>
							</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="text-center">
			<%@include file="../include/adminPage.jsp"%>
		</div>
		<br /> <br /> <br />

		<div class="text-center">
			<div class="container">
				<div class="fd-fb-public">
					<span class="fd-fbp-span1"> 学院地址：福州市闽侯县学园路2号福州大学数学与计算机科学学院 </span><br />
					<span class="fd-fbp-span2"> 版权声明：© 2019
						福州大学软件学院19春季软工实践G013. 版权所有. 保留所有权利 </span>
				</div>
			</div>
		</div>
	</div>

	<script>
		var homeList = "/website/f/api/article/homeList";
		var ctxf = "/website/f";
		$('li.dropdown').mouseover(function() {
			$(this).addClass('open');
		}).mouseout(function() {
			$(this).removeClass('open');
		});
		$(document).ready(function() {

			homepages();
		});
	</script>
</body>
</html>