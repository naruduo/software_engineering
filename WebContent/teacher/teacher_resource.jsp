<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/studentHeader.jsp"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="">

<title>资源下载</title>

<!-- Mobile Specific Meta
  ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="../include/navigator.jsp"%>
</head>

<body id="body">

	<!--
Start About Section
==================================== -->
	<section class="service-2 section" style="padding: 0px">
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
						<li><a
							href="<%=request.getContextPath()%>/exp/listExp.action"
							style="font-size: 20px">实验教学</a></li>
						<li class="active"><a
							href="<%=request.getContextPath()%>/teacher/teacher_resource.jsp"
							style="font-size: 20px">资源下载</a></li>
						<li><a
							href="<%=request.getContextPath()%>/courseChapter/listCourseChapter.action"
							style="font-size: 20px">练习管理</a></li>
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
				<!-- section title -->
				<div class="title text-center">
					<h1>What You Can Get</h1>
					<p>
						<strong>这里有软件工程的课程资源 </strong>
					</p>
					<div class="border"></div>
				</div>
				<!-- /section title -->
















				<div class="col-md-4 text-center">
					<img src="../images/about/member.jpg" class="inline-block" alt="">
				</div>
				<div class="col-md-8">
					<div class="row text-center">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="service-item">
								<i class="tf-ion-ios-alarm-outline"></i>
								<h4>
									<a href="commonFile/commonFile_list.action?fileType=1">课件</a>
								</h4>
								<p></p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="service-item">
								<i class="tf-ion-ios-briefcase-outline"></i>
								<h4>
									<a href="commonFile/commonFile_list.action?fileType=2">试卷</a>
								</h4>
								<p></p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="service-item">
								<i class="tf-ion-ios-email-outline"></i>
								<h4>习题</h4>
								<p></p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="service-item">
								<i class="tf-ion-ios-locked-outline"></i>
								<h4>其它</h4>
								<p></p>
							</div>
						</div>
						<!-- END COL -->
					</div>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->


	<div class="fd-f-link">
		<div class="container">
			<div class="fd-fl-title">
				<span class="fd-flt-span1">友情链接</span> <span class="fd-flt-span2">Friendship
					Link</span>
			</div>
			<div>

				<a href="http://www.fzu.edu.cn/" target="view_window"
					style="margin-left: 40px"> <img style="width: 20%; height: 10%"
					src="../picture/footer01.PNG">
				</a> <a href="http://jwch.fzu.edu.cn/" target="view_window"
					style="margin-left: 40px"> <img style="width: 20%; height: 10%"
					src="../picture/footer02.PNG">
				</a> <a href="http://zsb.fzu.edu.cn/" target="view_window"
					style="margin-left: 40px"> <img style="width: 20%; height: 10%"
					src="../picture/footer03.PNG">
				</a> <a href="http://yjsy.fzu.edu.cn/" target="view_window"
					style="margin-left: 40px"> <img style="width: 20%; height: 10%"
					src="../picture/footer04.PNG">
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
				<span class="fd-fbp-span1"> 学院地址：福州市闽侯县学园路2号福州大学数学与计算机科学学院 </span> <span
					class="fd-fbp-span2"> 版权声明：© 2019 福州大学软件学院19春季软工实践G013.
					版权所有. 保留所有权利 </span>
			</div>
		</div>
	</div>

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




	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script src="../plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Parallax -->
	<script src="../plugins/parallax/jquery.parallax-1.1.3.js"></script>
	<!-- lightbox -->
	<script src="../plugins/lightbox2/dist/js/lightbox.min.js"></script>
	<!-- slick Carousel -->
	<script src="../plugins/slick-carousel/slick/slick.min.js"></script>
	<!-- Portfolio Filtering -->
	<script src="../plugins/mixitup/dist/mixitup.min.js"></script>
	<!-- Smooth Scroll js -->
	<script src="../plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/jquery.themepunch.revolution.min.js"></script>
	<!-- Custom js -->
	<script src="../js/script.js"></script>

	<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
    (Load Extensions only on Local File Systems ! 
    The following part can be removed on Server for On Demand Loading) -->
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="../plugins/revo-slider/js/extensions/revolution.extension.video.min.js"></script>

	<script>
		/* https://learn.jquery.com/using-jquery-core/document-ready/ */
		jQuery(document)
				.ready(
						function() {

							/* initialize the slider based on the Slider's ID attribute */
							jQuery('#rev_slider_1')
									.show()
									.revolution(
											{

												/* options are 'auto', 'fullwidth' or 'fullscreen' */
												sliderLayout : 'fullscreen',

												/* basic navigation arrows and bullets */
												navigation : {

													arrows : {
														style : "zeus",
														enable : true,
														hide_onmobile : true,
														hide_under : 600,
														hide_onleave : true,
														hide_delay : 200,
														hide_delay_mobile : 1200,
														tmp : '<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
														left : {
															h_align : "left",
															v_align : "center",
															h_offset : 30,
															v_offset : 0
														},
														right : {
															h_align : "right",
															v_align : "center",
															h_offset : 30,
															v_offset : 0
														}
													},
													bullets : {
														enable : false,
														hide_onmobile : true,
														hide_under : 600,
														style : "metis",
														hide_onleave : true,
														hide_delay : 200,
														hide_delay_mobile : 1200,
														direction : "horizontal",
														h_align : "center",
														v_align : "bottom",
														h_offset : 0,
														v_offset : 30,
														space : 5,
														tmp : '<span class="tp-bullet-img-wrap">  <span class="tp-bullet-image"></span></span><span class="tp-bullet-title">{{title}}</span>'
													}
												}
											});
						});
	</script>

</body>
</html>
