<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/teacherHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教学管理</title>

<link href='http://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css' />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet" type="text/css"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css" />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css" href="../css/teacher_m_style.css" />

<link rel="stylesheet" type="text/css"
	href="../css/font-awesome.min.css" />

<link rel="stylesheet/less" type="text/css" href="../css/style.less" />

<script src="../js/jquery.min.js"></script>

<script src="../js/bootstrap.min.js" type="text/javascript"></script>

<script src="../js/jquery.smint.js" type="text/javascript"></script>

<script type="text/javascript" src="../js/jquery.easing.min.js"></script>
<script type="text/javascript" src="../js/jquery.easy-ticker.js"></script>

<script src="../less.js" type="text/javascript"></script>

<script src="../js/isotop.js"></script>

<script src="../js/jquery.colorbox.js"></script>

<script>
	$('.collapse').collapse();

	$(function() {
		$('a[href*=#]:not([href=#])').click(
				function() {
					if (location.pathname.replace(/^\//, '') == this.pathname
							.replace(/^\//, '')
							&& location.hostname == this.hostname) {

						var target = $(this.hash);
						target = target.length ? target : $('[name='
								+ this.hash.slice(1) + ']');
						if (target.length) {
							$('html,body').animate({
								scrollTop : target.offset().top
							}, 1000);
							return false;
						}
					}
				});
	});

	$(document).ready(function() {
		$('.subMenu').smint({
			'scrollSpeed' : 1000
		});

		var dd = $('.vticker').easyTicker({
			direction : 'up',
			easing : 'easeInOutBack',
			speed : 'slow',
			interval : 4000,
			height : 'auto',
			visible : 1,
			mousePause : 0,
			controls : {
				up : '.up',
				down : '.down',
				toggle : '.toggle',
				stopText : 'Stop !!!'
			}
		}).data('easyTicker');

	});

	$(function() {
		$('.tooltip-hide').tooltip('hide');
	});

	$(document).ready(function() {
		// Portfolio

		var $container = $('.portfolioContainer');
		$container.isotope({
			filter : '*',
			animationOptions : {
				duration : 750,
				easing : 'linear',
				queue : false
			}
		});

		$('.portfolioFilter a').click(function() {
			$('.portfolioFilter .current').removeClass('current');
			$(this).addClass('current');

			var selector = $(this).attr('data-filter');
			$container.isotope({
				filter : selector,
				animationOptions : {
					duration : 750,
					easing : 'linear',
					queue : false
				}
			});
			return false;

		});

		$(".group2").colorbox({
			rel : 'group2',
			transition : "fade"
		});

	});

	$('.carousel').carousel();
</script>

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
					<li class="active"><a
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
		</div>
		<div class="wrap ">
			<div class="section sTop">
				<div class="top-container">

					<div class="container">

						<div class="large-logo">
							<a href="#"><img src="../img/teacher_logo.jpg" alt="logo"
								width="100" height="100" /></a>
						</div>

						<div class="vticker"
							style="position: relative; height: 62px; overflow: hidden;">
							<ul style="margin: 0px; position: absolute; top: 0px;">
								<li style="margin: 0px; display: list-item;">WE ARE APEX</li>
								<li style="margin: 0px; display: list-item;">INVENT THE
									FUTURE</li>
								<li style="margin: 0px; display: list-item;">TOUCH TOMORROW</li>
							</ul>
						</div>

						<!--<a href="#sTop" class="click-down"><i class="fa fa-chevron-circle-down"></i></a>-->
						<div class="">
							<ul class="nav nav-pills nav-justified">
								<li class="active"><a href="#sTop"><i class="fa fa-cog"></i>作业</a></li>
								<li><a href="#s1"><i class="fa fa-users"></i>学生</a></li>
								<li><a href="#s2"><i class="fa fa-cogs"></i>实验</a></li>
								<li><a href="#s3"><i class="fa fa-picture-o"></i>资源</a></li>
								<li><a href="#s6"><i class="fa fa-pencil-square-o"></i>练习</a></li>
								<li><a href="#s7"><i class="fa fa-comment"></i>论坛</a></li>
							</ul>
						</div>

					</div>

				</div>
				<!-- /top-container -->
			</div>
		</div>
	</div>

</body>
</html>
