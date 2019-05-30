<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp" %>
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



<div class="container">
	<div class="row">
		<div class="span12">
		
		 <p class="bg-primary">欢迎您：${USER}，${stu.name}同学
		 	<a href="<%=request.getContextPath()%>/logout.action" class="pull-right bg-primary">登出</a>
		 </p>
		
		<h3>
				软件工程精品课
			</h3>
			
			<ul class="nav nav-tabs"  bgcolor="#3f51b6">
				<li >
					<a href="<%=request.getContextPath()%>/student/StudentIndex.jsp" style="font-size:20px">课程主页</a>
				</li>
				<li >
					<a href="<%=request.getContextPath()%>/student/listMyHomeworkStudent.action" style="font-size:20px">习题作业</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/student/stu_experience.action?id=${USER}" style="font-size:20px">实验教学</a>
				</li>
				<li class="active">
					<a href="<%=request.getContextPath()%>/student/stu_resource.jsp" style="font-size:20px">资源下载</a>
				</li>
				<li>
					<a href="#" style="font-size:20px">在线练习</a>
				</li>
				<li>
					<a href="#" style="font-size:20px">学习社区</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle" style="font-size:20px">个人中心<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">操作日志</a>
						</li>
						<li>
							<a href="#">联系我们</a>
						</li>
						<li>
							<a href="#">更多设置</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="#">退出登录</a>
						</li>
					</ul>
				</li>
			</ul>
			
			
			<h3>
				课件列表
			</h3>
			
			<table class="table table-bordered" contenteditable="true">
	<thead>
		<tr>
			<th>课件编号</th>
			<th>课件名称</th>
			<th>发布时间</th>
			<th>发布教师</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${homeworks}" var="homework">
			<tr class="success">
				<td>${homework.id}</td>
				<td><a href="<%=request.getContextPath()%>/sepak/downloadExp.action?filename=${homework.name}">${homework.name}</a></td>
				<td>${homework.releaseTime}</td>
				<td>${homework.deadline}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

			<!--  在数据库和后端代码弄好之后去掉注释
			<div class="text-center"> -->
			<%--	<%@include file="../include/adminPage.jsp"%>
			 --%>			
			 <!-- 	</div> -->	
			 
			
			<h3>
				这是页脚
			</h3>
		</div>
	</div>
</div>











</body>
</html>