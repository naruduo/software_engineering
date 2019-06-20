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
<link type="text/css" rel="stylesheet" href="../css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<title>管理在线练习</title>
</head>
<body>
	<h3><%=chapter.getUnitName()%>-<%=chapter.getUnitDesc()%>习题
	</h3>
	
	<table class="table table-bordered">
		<thead>
		 <tr>
			<th>题目ID</th>
			<th>题目名</th>
			<th>做题次数</th>
			<th>正确率</th>
			<th>删除</th>
			<th>修改</th>
		 </tr>
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
					<a href="../onlineTest/deleteOnlineTest.action?onlineTest.id=<%=ot.getId()%>">删除</a>
				</button></td>
			<td><button>
					<a href="../onlineTest/teacherAddOnlineTest.action?onlineTest.id=<%=ot.getId()%>">修改</a>
				</button></td>
		</tr>
		<%
			}
		%>

	</table>
	
	<button>
		<a	href="<%=request.getContextPath()%>/onlineTest/teacherAddOnlineTest.action?">添加题目</a>
	</button>
	
	
	
	<div class="text-center">
		<%@include file="../include/adminPage.jsp"%>
	</div>
</body>
</html>