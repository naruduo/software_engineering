<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@ include file="../include/studentHeader.jsp"%>
<%
	List<OnlineTest> onlineTests = (List<OnlineTest>) request.getAttribute("onlineTests");
	Map<Integer, Boolean> marks = (Map<Integer, Boolean>) request.getAttribute("marks");
	Map<Integer, String> answers = (Map<Integer, String>) request.getAttribute("answers");
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
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<title>学生在线测试</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="span12">
				<p class="bg-primary">
					欢迎您：${USER},${student.name}同学 <a
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
					<li><a
						href="<%=request.getContextPath()%>/student/stu_resource.jsp"
						style="font-size: 20px">资源下载</a></li>
					<li class="active"><a
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

		<div class="container-fluid">
			<div class="row-fluid">
				<h1>欢迎进入软件工程在线练习系统</h1>
				<p class="text-danger" style="font-size: 32px">单红老师提醒您：练习不规范
					考试两行泪</p>
				<br />
				<div>
					<form role="form" action="../onlineTest/stuScoreOnlineTest.action"
						method="post">
						<%
							int c = 1;
							for (OnlineTest ot : onlineTests) {
						%>
						<div>
							<p class="lead"><%=c++ + "、" + ot.getQuestion()%></p>
							<p>
								<input type="radio" name="answers[<%=ot.getId()%>]" value="A"
									<%=answers != null && "A".equals(answers.get(ot.getId())) ? "checked" : ""%> /><%=ot.getChoiceA()%></p>
							<p>
								<input type="radio" name="answers[<%=ot.getId()%>]" value="B"
									<%=answers != null && "B".equals(answers.get(ot.getId())) ? "checked" : ""%> /><%=ot.getChoiceB()%></p>
							<p>
								<input type="radio" name="answers[<%=ot.getId()%>]" value="C"
									<%=answers != null && "C".equals(answers.get(ot.getId())) ? "checked" : ""%> /><%=ot.getChoiceC()%></p>
							<p>
								<input type="radio" name="answers[<%=ot.getId()%>]" value="D"
									<%=answers != null && "D".equals(answers.get(ot.getId())) ? "checked" : ""%> /><%=ot.getChoiceD()%></p>
							<p class="text-warning">
								<%="本题正确率：" + String.format("%.2f", ot.getTrueFreq() * 100.0 / ot.getAnsFreq()) + "%"%>
							</p>
							<p><%="<span style='color:red'>"
						+ (marks == null ? "" : (marks.get(ot.getId()) ? "正确" : "错误,正确答案：" + ot.getAnswer()))
						+ "</span>"%></p>
						</div>
						<%
							}
						%>
						<%=marks == null ? "<input class='btn btn-success' type='submit' value='提交' />" : ""%>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>