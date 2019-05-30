<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8080/software_engineering/" />
<meta charset="UTF-8">
<title>Operations</title>
</head>
<body>
	<a href="teacher/teacher_listMyOperationLogs.action">list</a>
	<%
		List<OperationLog> operations = (List<OperationLog>) request.getAttribute("operations");
	%>
	<%
		if (operations != null)
			for (OperationLog ol : operations) {
	%>
	<h3><%=ol%></h3>
	<%
		}
	%>
</body>
</html>