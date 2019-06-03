<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css.map" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstarp.js"></script>
<script type="text/javascript" src="js/npm.js"></script>

<title>课件下载</title>


</head>
<body>



	<div  class="container">
		<div class="row">
			<div class="span12">

				<p class="bg-primary">
					欢迎您：${USER}，${stu.name}同学 <a
						href="<%=request.getContextPath()%>/logout.action"
						class="pull-right bg-primary">登出</a>
				</p>

				<h3>软件工程精品课</h3>

				<ul class="nav nav-tabs" bgcolor="#3f51b6">
					<li><a
						href="<%=request.getContextPath()%>/student/StudentIndex.jsp"
						style="font-size: 20px">课程主页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/student/listMyHomeworkStudent.action"
						style="font-size: 20px">习题作业</a></li>
					<li><a
						href="<%=request.getContextPath()%>/student/stu_experience.action?id=${USER}"
						style="font-size: 20px">实验教学</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/student/stu_resource.jsp"
						style="font-size: 20px">资源下载</a></li>
					<li><a href="#" style="font-size: 20px">在线练习</a></li>
					<li><a href="#" style="font-size: 20px">学习社区</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"
						style="font-size: 20px">个人中心<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">操作日志</a></li>
							<li><a href="#">联系我们</a></li>
							<li><a href="#">更多设置</a></li>
							<li class="divider"></li>
							<li><a href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a></li>
						</ul></li>
				</ul>


				<h3>课件列表</h3>

				<table class="table table-bordered" contenteditable="false">
					<thead>
						<th>文件ID</th>
						<th>文件名</th>
						<th>发布时间</th>
						<th>下载次数</th>
						<th>操作</th>
					</thead>
					<c:forEach items="${commonFiles}" var="cf">
						<tr class="success">
							<td>${cf.id}</td>
							<td>${cf.fileName}</td>
							<td>${cf.releaseTime}</td>
							<td>${cf.downloadTimes}</td>
							<td><button>
									<a href="commonFile/commonFile_download.action?fileId=${cf.id}">下载</a>
								</button></td>
						</tr>
					</c:forEach>

				</table>
				<div class="pageDiv">
					<%@include file="../include/adminPage.jsp"%>
				</div>
				<!--  在数据库和后端代码弄好之后去掉注释
			<div class="text-center"> -->
				<%--	<%@include file="../include/adminPage.jsp"%>
			 --%>
				<!-- 	</div> -->


				<h3>这是页脚</h3>
			</div>
		</div>
	</div>

<script>
    var homeList = "/website/f/api/article/homeList";
    var ctxf = "/website/f";
    $('li.dropdown').mouseover(function () {
        $(this).addClass('open');
    }).mouseout(function () {
        $(this).removeClass('open');
    });
    $(document).ready(function () {
        
        homepages();
    });
</script>
</body>
</html>