<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.se.pojo.*"%>
<%@include file="../include/header.jsp"%>
<%
	//Student stu = (Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新</title>
</head>
<body>
	<c:choose>
		<c:when test="${student.avatar eq 'default.jpg'}">
			<img alt="${student.id}" src="../download/default.jpg" />
		</c:when>
		<c:otherwise>
			<img alt="${student.id}"
				src="../download/${student.id}/${student.avatar}" />
		</c:otherwise>
	</c:choose>
	<br />
	<form action="../student/updateStudent.action" method="post"
		enctype="multipart/form-data">
		<input type="file" name="avatar" /> <br /> <input type="submit" />
	</form>

</body>
</html>