<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../../include/admin/adminHeader.jsp"%>
<%@include file="../../include/admin/adminNavigator.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>通知列表</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid display">
	<table class="table table-hover">
		<thead>
			<tr class="success">
				<th>通知内容</th>
				<th>发布时间</th>
				<th>设置</th>
				<th>编辑</th>
				<th>删除</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${notifications}" var="notification">
				<tr>
					<td>${notification.notiContent}</td>
					<td>${notification.releaseTime}</td>
					<td><a href="#"><span class="glyphicon glyphicon-list"></span></a></td>						
					<td>
						<a href="#"><span class="glyphicon glyphicon-edit"></span></a>
					</td>
					<td>
						<a href="#"><span class="glyphicon glyphicon-trash"></span></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="#"><span class="glyphicon glyphicon-plus"></span>新建通知</a>
	</div>
	
</body>
</html>