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
	<title>我收到的通知</title>
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
				<th></th>
				<th>通知内容</th>
				<th>通知时间</th>
				<th>是否读过</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${notificationViews}" var="notificationView">
				<tr>
					<td><input type="checkbox" name="notificationIds" value="${notification.notificationId}" /></td>
					<td>${notificationView.notification.notiContent}</td>
					<td>${notificationView.notification.releaseTime}</td>
					<c:if test="${notificationView.status==true}">
						<td>是</td>
					</c:if>
					<c:if test="${notificationView.status==false}">
						<td>否</td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button class="btn btn-default">标记为已读</button>
	</div>
	
</body>
</html>