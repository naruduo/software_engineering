<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@ include file="../include/studentHeader.jsp"%>
<%
	List<OperationLog> operationLogs = (List<OperationLog>) request.getAttribute("operationLogs");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>操作记录</title>
</head>
<body>

	<h1>操作记录</h1>
	<br />
	<table class="table table=bordered">
		<thead>
		 <tr>
			<th><font size="5">操作时间</font></th>
			<th><font size="5">操作</font></th>
			<th><font size="5">文件名</font></th>
		 </tr>
		</thead>
		<tbody>
			<%
				for (OperationLog ol : operationLogs) {
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
	<div class="pageDiv">
		<%@include file="../include/adminPage.jsp"%>
	</div>
</body>
</html>