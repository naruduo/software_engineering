<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>我的回答</title>
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
				<th>ID</th>
				<th>回答简介</th>
				<th>回答时间</th>
				<th>点赞数</th>
				<th>设置属性</th>
				<th>删除</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${solutions}" var="solution" varStatus="loop">
				<tr>
					<td>${solution.solutionId}</td>
					<td>
						<a href="#">${solution.content}</a>
					</td>
					<td>${solution.time}</td>
					<td>${solution.likeFreq}</td>
					<td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	
</body>
</html>