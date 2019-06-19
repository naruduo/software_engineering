<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="com.se.pojo.*"%>
<%
	List<CourseChapter> courseChapters = (List<CourseChapter>) request.getAttribute("courseChapters");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>练习章节列表</title>
<link type="text/css" rel="stylesheet" href="../css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<body>
<div class="container-fluid">	
<div class="row">

    <div class="span12">
		 <p class="bg-primary">欢迎您：${USER}，${student.name}同学
		 	<a href="<%=request.getContextPath()%>/logoutUser.action" class="pull-right bg-primary">登出</a>
		 </p>
		 
		
			<h1>
				软件工程精品课
			</h1>
			<ul class="nav nav-tabs"  bgcolor="#3f51b6">
				<li >
					<a href="<%=request.getContextPath()%>/student/StudentIndex.jsp" style="font-size:20px">课程主页</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/student/listMyHomeworksStudent.action" style="font-size:20px">习题作业</a>
				</li>
				<li >
					<a href="<%=request.getContextPath()%>/exp/listExp.action" style="font-size:20px">实验教学</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/student/stu_resource.jsp" style="font-size:20px">资源下载</a>
				</li>
				<li class="active">
					<a href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action" style="font-size:20px">在线练习</a>
				</li>
				<li>
					<a href="#" style="font-size:20px">学习社区</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle" style="font-size:20px">个人中心<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							<a href="student/listMyOperationLogsStudent.action">操作日志</a>
						</li>
						<li>
							<a href="../contact_us.jsp">联系我们</a>
						</li>
						<li>
							<a href="#">更多设置</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/user/logoutUser.action">退出登录</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
			
			
			
			<h3>
				在线练习章节列表
			</h3>


	<table class="table table-bordered">
		<thead>
		 <tr>
			<th>章节名</th>
			<th>章节描述</th>
			<th>练习</th>
		 </tr>
		</thead>
		<tbody>
			<%
				for (CourseChapter cc : courseChapters) {
			%>
			<tr class="success">
				<td><%=cc.getUnitName()%></td>
				<td><%=cc.getUnitDesc()%></td>
				<td>
				    <button>
						<a class="btn  btn-primary" href="../onlineTest/stuGetOnlineTest.action?chapterId=<%=cc.getId()%>">练习</a>
					</button>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	
</div>
</div>
</body>
</html>