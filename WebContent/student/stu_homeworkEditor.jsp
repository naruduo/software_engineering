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
<%@include file="../include/navigator.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="span12">
				<p class="bg-primary">
					欢迎您：${USER} 同学 <a
						href="<%=request.getContextPath()%>/user/logoutUser.action"
						class="pull-right bg-primary">登出</a>
				</p>

				<h1>软件工程精品课</h1>
				<ul class="nav nav-tabs" bgcolor="#3f51b6">
					<li><a
						href="<%=request.getContextPath()%>/student/StudentIndex.jsp"
						style="font-size: 20px">课程主页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/notificationView/browseMyNotificationView.action"
						style="font-size: 20px">通知公告</a></li>
					<li><a
						href="<%=request.getContextPath()%>/student/listMyHomeworksStudent.action"
						style="font-size: 20px">习题作业</a></li>
					<li><a href="<%=request.getContextPath()%>/exp/listExp.action"
						style="font-size: 20px">实验教学</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/student/stu_resource.jsp"
						style="font-size: 20px">资源下载</a></li>
					<li><a
						href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action"
						style="font-size: 20px">在线练习</a></li>
					<li><a href="#" style="font-size: 20px">学习社区</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"
						style="font-size: 20px">个人中心<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="student/listMyOperationLogsStudent.action">操作日志</a>
							</li>
							<li><a href="../contact_us.jsp">联系我们</a></li>
							<li><a href="#">更多设置</a></li>
							<li class="divider"></li>
							<li><a
								href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a>
							</li>
						</ul></li>
				</ul>
			</div>
		</div>


		<h1><%=homework.getName()%></h1>
		<form action="../homeworkAnswer/submitHomeworkAnswer.action"
			method="post" enctype="multipart/form-data">
			<input type="hidden" name="homeworkId" value="<%=homework.getId()%>" />
			<table  class="table table-bordered">
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
	</div>
</body>
</html>