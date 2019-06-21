<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/teacherHeader.jsp"%>
<%
	List<CourseChapter> chapters = (List<CourseChapter>) request.getAttribute("courseChapters");
	OnlineTest onlineTest = (OnlineTest) request.getAttribute("onlineTest");
	if (onlineTest == null)
		onlineTest = new OnlineTest();
	Map<String, String> errors = (Map) request.getAttribute("errors");
	System.out.println(onlineTest);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理习题</title>
<%@include file="../include/navigator.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="span12">
				<p class="bg-primary">
					欢迎您：${USER}，${teacher.name}老师 <a
						href="<%=request.getContextPath()%>/logout.action"
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




			<h3>管理习题</h3>
			<form role="form"
				action="../onlineTest/addAndUpdateOnlineTest.action" method="post">
				<input name='onlineTest.id' value='<%=onlineTest.getId()%>'
					type='hidden' /> 请选择该题属于的章节： <select class="form-control"
					name="onlineTest.courseChapterId">
					<%
						for (CourseChapter cc : chapters) {
					%>
					<option value="<%=cc.getId()%>"
						<%=cc.getId() == onlineTest.getCourseChapterId() ? "selected" : ""%>><%=cc.getUnitName()%>-<%=cc.getUnitDesc()%>
					</option>
					<%
						}
					%>
				</select><br />
				<%=errors != null && errors.get("question") != null
					? "<span style=\"color:red\">" + errors.get("question") + "</span><br/>"
					: ""%>问题描述：<br />
				<textarea class="form-control" rows="5" cols="50"
					name="onlineTest.question"><%=onlineTest.getQuestion()%></textarea>
				<br />
				<%=errors != null && errors.get("choice") != null
					? "<span style=\"color:red\">" + errors.get("choice") + "</span><br/>"
					: ""%>
				<input type="radio" name="onlineTest.answer" value="A" checked />选项A：<input
					type="text" class="form-control" name="onlineTest.choiceA"
					value="<%=onlineTest.getChoiceA()%>" size="40" /> <br /> <input
					type="radio" name="onlineTest.answer" value="B"
					<%="B".equals(onlineTest.getAnswer()) ? "checked" : ""%> />选项B：<input
					type="text" class="form-control" name="onlineTest.choiceB"
					value="<%=onlineTest.getChoiceB()%>" size="40" /> <br /> <input
					type="radio" name="onlineTest.answer" value="C"
					<%="C".equals(onlineTest.getAnswer()) ? "checked" : ""%> />选项C：<input
					type="text" class="form-control" name="onlineTest.choiceC"
					value="<%=onlineTest.getChoiceC()%>" size="40"> <br /> <input
					type="radio" name="onlineTest.answer" value="D"
					<%="D".equals(onlineTest.getAnswer()) ? "checked" : ""%> />选项D：<input
					type="text" class="form-control" name="onlineTest.choiceD"
					value="<%=onlineTest.getChoiceD()%>" size="40" /> <br />
				<p class="lead">请选中正确答案</p>
				<input type="submit" class="btn btn-primary" value="保存" />
			</form>
		</div>
	</div>
</body>
</html>