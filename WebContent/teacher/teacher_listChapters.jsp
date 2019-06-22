<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="com.se.pojo.*"%>
<%@ include file="../include/teacherHeader.jsp"%>
<%
	List<CourseChapter> courseChapters = (List<CourseChapter>) request.getAttribute("courseChapters");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="../css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<title>练习章节列表</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="span12">
				<p class="bg-primary">
					欢迎您：${USER}，${teacher.name}老师 <a
						href="<%=request.getContextPath()%>/user/logoutUser.action"
						class="pull-right bg-primary">登出</a>
				</p>

				<h1>软件工程精品课</h1>
				<ul class="nav nav-tabs" bgcolor="#3f51b6">
					<li><a
						href="<%=request.getContextPath()%>/teacher/TeacherIndex.jsp"
						style="font-size: 20px">课程主页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/notification/browseMyNotification.action"
						style="font-size: 20px">通知公告</a></li>
					<li><a
						href="<%=request.getContextPath()%>/teacher/teacher_listMyHomeworks.action?id=${USER}"
						style="font-size: 20px">习题作业</a></li>
					<li><a href="<%=request.getContextPath()%>/exp/listExp.action"
						style="font-size: 20px">实验教学</a></li>
					<li><a
						href="<%=request.getContextPath()%>/teacher/teacher_resource.jsp"
						style="font-size: 20px">资源管理</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action"
						style="font-size: 20px">练习管理</a></li>
					<li><a
						href="<%=request.getContextPath()%>/teacher/teacher_listMyStudents.action"
						style="font-size: 20px">学生管理</a></li>
					<li><a href="teacher/teacher_listMyStudents.action"
						style="font-size: 20px">课程论坛</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"
						style="font-size: 20px">个人中心<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a
								href="<%=request.getContextPath()%>/teacher/teacher_listMyOperationLogs.action">操作日志</a>
							</li>
							<li><a href="contact_us.jsp">联系我们</a></li>
							<li><a
								href="<%=request.getContextPath()%>/teacher/teacher_changePassword.jsp">修改密码</a></li>
							<li class="divider"></li>
							<li><a
								href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a>
							</li>
						</ul></li>
				</ul>
			</div>

			<div class="text-center">
				<h3>在线练习习题管理</h3>
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>章节名</th>
						<th>章节描述</th>
						<th>删除</th>
						<th>管理练习</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (CourseChapter cc : courseChapters) {
					%>
					<tr>
						<td><%=cc.getUnitName()%></td>
						<td><%=cc.getUnitDesc()%></td>
						<td><button class="btn btn-primary">
								<a style="text-decoration: none; color: white"
									href="../courseChapter/deleteCourseChapter.action?courseChapter.id=<%=cc.getId()%>">删除</a>
							</button></td>
						<td><button class="btn btn-primary">
								<a style="text-decoration: none; color: white"
									href="../onlineTest/teacherListOnlineTest.action?chapterId=<%=cc.getId()%>">管理习题</a>
							</button></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>

			<div class="text-center">
				<button type="botton" class="btn btn-success">
					<a href="../teacher/teacher_addCourseChapter.jsp"
						style="text-decoration: none; color: white">添加章节</a>
				</button>

				&nbsp;
				<button type="botton" class="btn btn-success">
					<a href="<%=request.getContextPath()%>/teacher/TeacherIndex.jsp"
						style="text-decoration: none; color: white">返回主页</a>
				</button>
			</div>
			<br /> <br /> <br /> <br /> <br /> <br /> <br />
			<div class="fd-f-link">
				<div class="container">
					<div class="fd-fl-title">
						<span class="fd-flt-span1">友情链接</span> <span class="fd-flt-span2">Friendship
							Link</span>
					</div>
					<div>

						<a href="http://www.fzu.edu.cn/" target="view_window"
							style="margin-left: 40px"> <img
							style="width: 20%; height: 10%" src="../picture/footer01.PNG">
						</a> <a href="http://jwch.fzu.edu.cn/" target="view_window"
							style="margin-left: 40px"> <img
							style="width: 20%; height: 10%" src="../picture/footer02.PNG">
						</a> <a href="http://zsb.fzu.edu.cn/" target="view_window"
							style="margin-left: 40px"> <img
							style="width: 20%; height: 10%" src="../picture/footer03.PNG">
						</a> <a href="http://yjsy.fzu.edu.cn/" target="view_window"
							style="margin-left: 40px"> <img
							style="width: 20%; height: 10%" src="../picture/footer04.PNG">
						</a>

					</div>
				</div>
			</div>
			<div class="fd-f-bottom">
				<div class="container">
					<div class="fd-fb-logo">
						<img src="../picture/footer05.PNG">
					</div>
					<div class="fd-fb-public">
						<span class="fd-fbp-span1"> 学院地址：福州市闽侯县学园路2号福州大学数学与计算机科学学院
						</span> <span class="fd-fbp-span2"> 版权声明：© 2019
							福州大学软件学院19春季软工实践G013. 版权所有. 保留所有权利 </span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>