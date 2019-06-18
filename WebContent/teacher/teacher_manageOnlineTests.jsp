<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/navigator.jsp"%>

<%
	List<OnlineTest> onlineTests = (List<OnlineTest>) request.getAttribute("onlineTests");
	CourseChapter chapter = (CourseChapter) request.getAttribute("courseChapter");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理习题</title>
</head>
<body>
	<h3><%=chapter.getUnitName()%>-<%=chapter.getUnitDesc()%>习题
	</h3>
	<button>
		<a
			href="<%=request.getContextPath()%>/onlineTest/teacherAddOnlineTest.action?">添加题目</a>
	</button>
	<table border="1">
		<thead>
			<th>题目ID</th>
			<th>题目名</th>
			<th>做题次数</th>
			<th>正确率</th>
			<th>删除</th>
			<th>修改</th>
		</thead>
		<%
			for (OnlineTest ot : onlineTests) {
		%>
		<tr>
			<td><%=ot.getId()%></td>
			<td
				style="max-width: 300px; white-space: nowrap; overflow: hidden; word-break: keep-all; text-overflow: ellipsis;"><%=ot.getQuestion()%></td>
			<td><%=ot.getAnsFreq()%></td>
			<td><%=ot.getAnsFreq() == 0 ? 0 : ot.getTrueFreq() * 100.0 / ot.getAnsFreq()%>%</td>
			<td><button>
					<a
						href="../onlineTest/deleteOnlineTest.action?onlineTest.id=<%=ot.getId()%>">删除</a>
				</button></td>
			<td><button>
					<a
						href="../onlineTest/teacherAddOnlineTest.action?onlineTest.id=<%=ot.getId()%>">修改</a>
				</button></td>
		</tr>
		<%
			}
		%>

	</table>
	<div class="pageDiv">
		<%@include file="../include/adminPage.jsp"%>
	</div>
</body>
</html>