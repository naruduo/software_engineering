<%@page import="com.se.pojo.HomeworkAnswer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HomeworkAnswer ha = (HomeworkAnswer) request.getAttribute("homeworkAnswer");
%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8080/software_engineering/" />
<meta charset="UTF-8">
<title>回答作业</title>
</head>
<body>
	<h1><%=ha%></h1>
	<form action="homeworkAnswer/addHomeworkAnswer.action" method="post"
		enctype="multipart/form-data">
		<input type="hidden" value="<%=ha.getHomeworkId()%>" name="homeworkId" /><br />
		<br /> <input type="file" name="uploadFile" /><br /> <br />
		<button type="submit">提交</button>
	</form>
</body>
</html>