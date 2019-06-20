<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/teacherHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--<base href="http://localhost:8080/software_engineering/" />-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教师作业编辑</title>
<%@include file="../include/navigator.jsp"%>
</head>
<body>
	<div class="container-fluid">
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
						<li class="active"><a
							href="<%=request.getContextPath()%>/teacher/TeacherIndex.jsp"
							style="font-size: 20px">课程主页</a></li>
						<li><a
							href="<%=request.getContextPath()%>/notification/browseMyNotification.action"
							style="font-size: 20px">通知公告</a></li>
						<li><a
							href="<%=request.getContextPath()%>/teacher/teacher_listMyHomeworks.action?id=${USER}"
							style="font-size: 20px">习题作业</a></li>
						<li class=""><a
							href="<%=request.getContextPath()%>/exp/listExp.action"
							style="font-size: 20px">实验教学</a></li>
						<li><a
							href="<%=request.getContextPath()%>/teacher/teacher_resource.jsp"
							style="font-size: 20px">资源管理</a></li>
						<li><a
							href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action"
							style="font-size: 20px">练习管理</a></li>
						<li><a href="<%=request.getContextPath()%>/teacher/teacher_listMyStudents.action"
							style="font-size: 20px">学生管理</a></li>
						<li><a href="teacher/teacher_listMyStudents.action"
							style="font-size: 20px">课程论坛</a></li>
						<li class="dropdown pull-right"><a href="#"
							data-toggle="dropdown" class="dropdown-toggle"
							style="font-size: 20px">个人中心<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="teacher/teacher_listMyOperationLogs.action">操作日志</a>
								</li>
								<li><a href="contact_us.jsp">联系我们</a></li>
								<li><a href="#">更多设置</a></li>
								<li class="divider"></li>
								<li><a
									href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a>
								</li>
							</ul></li>
					</ul>
				</div>


				<h3>编辑作业信息</h3>

				<form action="../homework/addHomework.action" method="post"
					enctype="multipart/form-data">
					<fieldset>
						<legend contenteditable="false">作业信息</legend>
						<label contenteditable="false">作业名：</label> <input type="text"
							placeholder="请输入作业名称" name="hwName"> <span>${hwNameError}</span><br />
						<label contenteditable="false">截止时间：</label> <input type="date"
							name="deadline"> </label><span>${deadlineError}</span> <br /> <label
							contenteditable="false">上传作业要求：</label> <input type="file"
							name="uploadFile" value="文件路径"><span>${uploadFileError}</span><br />
						<input id="submit_form" type="submit" class="btn btn-success save"
							value="上传">
					</fieldset>
				</form>




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
	</div>
</body>
<script></script>
<script src="/website/static/fzsjgw/js/homepage.js"></script>
<script>
	var homeList = "/website/f/api/article/homeList";
	var ctxf = "/website/f";
	$('li.dropdown').mouseover(function() {
		$(this).addClass('open');
	}).mouseout(function() {
		$(this).removeClass('open');
	});
	$(document).ready(function() {

		homepages();
	});
</script>


<%@include file="../include/footer.jsp"%>
</body>
</html>