<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%
	Homework homework = (Homework) request.getAttribute("homework");
	HomeworkAnswer ha = (HomeworkAnswer) request.getAttribute("homeworkAnswer");
	Student stu = (Student) session.getAttribute("Student");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生作业编辑</title>
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
	<h1><%=homework.getName()%></h1>
	<form action="../homeworkAnswer/submitHomeworkAnswer.action"
		method="post" enctype="multipart/form-data">
		<input type="hidden" name="homeworkId" value="<%=homework.getId()%>" />
		<table border="1">
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
					style="display: inline-block" /> <%
 	} else {
 %>已经截止！ <%
 	}
 %>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>