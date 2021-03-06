<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/studentHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生实验编辑</title>
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
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstarp.js"></script>
<script type="text/javascript" src="../js/npm.js"></script>
<script type="text/javascript">
		function inform() {
			var res = "${result}";
			if(typeof res != "undefined" && res != null && res != "")
		        alert(res);
			if(res == "您已与服务器断开连接")
				window.location.href = "<%=request.getContextPath()%>
	/login.jsp";
	}
</script>
</head>
<body onload="inform()">
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
					<li><a
						href="<%=request.getContextPath()%>/student/listMyHomeworksStudent.action"
						style="font-size: 20px">习题作业</a></li>
					<li class="active"><a
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

			<h3>编辑实验报告内容</h3>

			<form
				action="<%=request.getContextPath()%>/expdoc/uploadExpDoc.action"
				method="post" enctype="multipart/form-data">
				<input type="hidden" name="exp.expId" value="${exp.expId}" />
				<fieldset>
					<legend>实验信息</legend>
					<label>实验名</label>
					<p>${exp.expName}</p>
					<label>发布时间</label>
					<p>${exp.releaseTime}</p>
					<label>截止时间</label>
					<p>${exp.deadline}</p>
				</fieldset>

				<div class="uploader">
					<input name="uploadFile" type="file" /> <br />
				</div>
				<div id="summernote">
					<p>请上传实验报告或在此处编辑实验报告</p>
				</div>
				<script>
				$(document).ready(function() {
					$('#summernote').summernote();
				});
			</script>
				<button class="btn btn-primary" type="submit">提交</button>
			</form>
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