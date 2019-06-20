<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@ include file="../include/teacherHeader.jsp"%>
<%
	List<OperationLog> operations = (List<OperationLog>) request.getAttribute("operations");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../include/navigator.jsp"%>
<title>操作记录</title>
</head>
<body>


	<h1>操作记录</h1>
	<br />
	<table class="table table=bordered">
		<thead>
			<th><font size="5">操作时间</font></th>
			<th><font size="5">操作</font></th>
			<th><font size="5">文件名</font></th>
		</thead>
		<tbody>
			<%
				for (OperationLog ol : operations) {
			%>
			<tr class="success">
				<td><font size="4"><%=ol.getOperationTime()%></font></td>
				<td><font size="4"><%=ol.getOperation()%></font></td>
				<td><%=ol.getFilename()%></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<div class="text-center">
		<%@include file="../include/adminPage.jsp"%>
	</div>
	<div class="text-center">
		<button type="botton" class="btn btn-success">
			<a href="<%=request.getContextPath()%>/teacher/TeacherIndex.jsp">返回主页</a>
		</button>
	</div>
</body>
</html>