<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生通知公告</title>
<%@include file="../include/navigator.jsp"%>
<script type="text/javascript">
	function displayLooking() {
		$(".true").hide();
		$(".false").show();
	}
	function displayLooked() {
		$(".true").show();
		$(".false").hide();
	}
	function displayAll() {
		$(".true").show();
		$(".false").show();
	}
</script>
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
					<li class="active"><a
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


		<div class="tableContainer">
			<form
				action="<%=request.getContextPath()%>/notificationView/markNotificationView.action"
				method="post">
				<input id="currentPage" type="hidden" value=" @ViewData[ " currentPage"] "/>
				<input id="totalPages" type="hidden" value=" @ViewData[" totalPages" ] " />
				<br /> <br />
				<button type="button" onclick="displayLooking()"
					class="btn btn-primary">未查看</button>
				&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="displayLooked()"
					class="btn btn-primary">已查看</button>
				&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="displayAll()" class="btn btn-primary">全部</button>
				<br /> <br />
				<table class="table table-hover table-striped"
					style="font-size: 17px">
					<thead>
						<tr>
							<th class="col-md-1 text-center"></th>
							<th class="col-md-3 text-center">通知内容</th>
							<th class="col-md-3 text-center">发布时间</th>
							<th class="col-md-3 text-center">是否查看</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${notificationViews}" var="notificationView">
							<tr class="${notificationView.status}">
								<td class="col-md-1 text-center"><c:if
										test="${notificationView.status == false}">
										<input type="checkbox" name="keys"
											value="${notificationView.notification.notificationId}" />
									</c:if></td>
								<td class="col-md-3 text-center">${notificationView.notification.notiContent}</td>
								<td class="col-md-3 text-center"><ftm:formatDate
										value="${notificationView.notification.releaseTime}"
										pattern="yyyy-MM-dd hh:mm:ss" /></td>
								<td class="col-md-3 text-center"><c:if
										test="${notificationView.status == true}">
										<span>已查看</span>
									</c:if> <c:if test="${notificationView.status == false}">
										<span>未查看</span>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<button type="submit" class="btn btn-primary">标记为已读</button>
			</form>
			<ul id="example"></ul>
			<div class="text-center">
				<%@include file="../../include/adminPage.jsp"%></div>
		</div>
	</div>

</body>
</html>