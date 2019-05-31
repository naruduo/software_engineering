<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp" %>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>软件工程精品课</title>
<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
</script>
<style>
.bg {
       background-image:url("images/medile") no-repeat center;
       background-size:contain;
}
</style>
<base href="http://localhost:8080/software_engineering/"/>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Owl-carousel-CSS -->
<link href="css/owl.carousel.css" rel="stylesheet">
<link rel="stylesheet" href="css/team.css" type="text/css" media="all" />
<link href="css/tea_style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome-icons -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
<!-- common css -->
<link type="text/css" rel="stylesheet" href="css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css.map" />

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstarp.js"></script>
<script type="text/javascript" src="js/npm.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="span12">
		 <p class="bg-primary">欢迎您：${USER}，${teacher.name}老师
		 	<a href="<%=request.getContextPath()%>/logout.action" class="pull-right bg-primary">登出</a>
		 </p>
		
			<h3>
				软件工程精品课
			</h3>
			<ul class="nav nav-tabs"  bgcolor="#3f51b6">
				<li class="active">
					<a href="<%=request.getContextPath()%>/student/StudentIndex.jsp" style="font-size:20px">课程主页</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/student/stu_homework.jsp" style="font-size:20px">习题作业</a>
				</li>
				<li class="">
					<a href="<%=request.getContextPath()%>/teacher/teacher_listMyExperiences.action" style="font-size:20px">实验教学</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/student/stu_resource.jsp" style="font-size:20px">资源下载</a>
				</li>
				<li>
					<a href="#" style="font-size:20px">练习管理</a>
				</li>
				<li>
					<a href="teacher/teacher_listMyStudents.action" style="font-size:20px">学生管理</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle" style="font-size:20px">个人中心<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							<a href="#" >操作日志</a>
						</li>
						<li>
							<a href="contact_us.jsp">联系我们</a>
						</li>
						<li>
							<a href="#">退出登录</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="#">分割线</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
<!--  
	<div class="row">
		<div class="span12">
			<div class="carousel slide" id="carousel-49212">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-49212">
					</li>
					<li data-slide-to="1" data-target="#carousel-49212" class="active">
					</li>
					<li data-slide-to="2" data-target="#carousel-49212">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img alt="" src="picture/roll01.PNG" />
						<div class="carousel-caption">
							<h4>
								福州大学
							</h4>
							<p>
								
							</p>
						</div>
					</div>
					<div class="item active">
						<img alt="" src="picture/roll02.PNG" />
						<div class="carousel-caption">
							<h4>
								软件学院
							</h4>
							<p>
							
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="picture/roll03.PNG" />
						<div class="carousel-caption">
							<h4>
								软件工程学堂在线
							</h4>
							<p>
								
							</p>
						</div>
					</div>
				</div> <a data-slide="prev" href="#carousel-49212" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-49212" class="right carousel-control">›</a>
			</div>
-->			
			
			
<!-- 分页显示课程通知  页内刷新-->

<!-- 分页显示结束 -->




<!-- services -->
<div class="row bg">
	<div class="services" id="services">
		<div class="container">
			<div class="wthree_head_section">
				<h3 class="w3l_header w3_agileits_header two">教师管理模块</h3>
			</div>
			<div class="agile_wthree_inner_grids">
				<div class="col-md-4 agileits_banner_bottom_left">
					<div class="agileinfo_banner_bottom_pos">
						<div class="w3_agileits_banner_bottom_pos_grid two">
							<div class="col-xs-3 wthree_banner_bottom_grid_left">
								<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
									<span class="fa fa-map-o" aria-hidden="true"></span>
								</div>
							</div>
							<div class="col-xs-9 wthree_banner_bottom_grid_right">
								<h4 class="sub_service_agileits">学生名单</h4>
								<p>查看您班级的学生</p>
								<div class="agileits-button two service">
									<a class="btn btn-primary btn-lg hvr-underline-from-left" href="teacher_manage.jsp" role="button">GO ! »</a>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-4 agileits_banner_bottom_left">
					<div class="agileinfo_banner_bottom_pos">
						<div class="w3_agileits_banner_bottom_pos_grid two">
							<div class="col-xs-3 wthree_banner_bottom_grid_left">
								<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
									<span class="fa fa-rocket" aria-hidden="true"></span>
								</div>
							</div>
							<div class="col-xs-9 wthree_banner_bottom_grid_right">
								<h4 class="sub_service_agileits">添加学生</h4>
								<p>为您的班级新增成员</p>
								<div class="agileits-button two service">
									<a class="btn btn-primary btn-lg hvr-underline-from-left" href="addStudent.jsp" role="button">GO ！ »</a>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-4 agileits_banner_bottom_left">
					<div class="agileinfo_banner_bottom_pos">
						<div class="w3_agileits_banner_bottom_pos_grid two">
							<div class="col-xs-3 wthree_banner_bottom_grid_left">
								<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
									<span class="fa fa-paint-brush" aria-hidden="true"></span>
								</div>
							</div>
							<div class="col-xs-9 wthree_banner_bottom_grid_right">
								<h4 class="sub_service_agileits">发布通知</h4>
								<p>新建一条通知公告</p>
								<div class="agileits-button two service">
									<a class="btn btn-primary btn-lg hvr-underline-from-left" href="teacher_notifyEditor.jsp" role="button">GO ！ »</a>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-4 agileits_banner_bottom_left two">
					<div class="agileinfo_banner_bottom_pos">
						<div class="w3_agileits_banner_bottom_pos_grid two">
							<div class="col-xs-3 wthree_banner_bottom_grid_left">
								<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
									<span class="fa fa-pencil" aria-hidden="true"></span>
								</div>
							</div>
							<div class="col-xs-9 wthree_banner_bottom_grid_right">
								<h4 class="sub_service_agileits">上传大纲</h4>
								<p>更新或新建一份教学大纲</p>
								<div class="agileits-button two service">
									<a class="btn btn-primary btn-lg hvr-underline-from-left" href="upload.jsp" role="button">GO ！ »</a>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-4 agileits_banner_bottom_left  two">
					<div class="agileinfo_banner_bottom_pos">
						<div class="w3_agileits_banner_bottom_pos_grid two">
							<div class="col-xs-3 wthree_banner_bottom_grid_left">
								<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
									<span class="fa fa-fire" aria-hidden="true"></span>
								</div>
							</div>
							<div class="col-xs-9 wthree_banner_bottom_grid_right">
								<h4 class="sub_service_agileits">更新习题</h4>
								<p>修改在线练习的题库</p>
								<div class="agileits-button two service">
									<a class="btn btn-primary btn-lg hvr-underline-from-left" href="######" role="button">GO ！ »</a>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-4 agileits_banner_bottom_left  two">
					<div class="agileinfo_banner_bottom_pos">
						<div class="w3_agileits_banner_bottom_pos_grid two">
							<div class="col-xs-3 wthree_banner_bottom_grid_left">
								<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
									<span class="fa fa-video-camera" aria-hidden="true"></span>
								</div>
							</div>
							<div class="col-xs-9 wthree_banner_bottom_grid_right">
								<h4 class="sub_service_agileits">即将上线</h4>
								<p>敬请期待</p>
								<div class="agileits-button two service">
									<a class="btn btn-primary btn-lg hvr-underline-from-left" href="contact_us.jsp" role="button">GO ！ »</a>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
	<!-- //services -->





























	
<div class="row">
 <div class="fd-f-link">
    <div class="container">
        <div class="fd-fl-title">
            <span class="fd-flt-span1">友情链接</span>
            <span class="fd-flt-span2">Friendship Link</span>
        </div>
        <div>
            
                <a href="http://www.fzu.edu.cn/" target="view_window" style="margin-left: 40px">
                    <img style="width: 20%; height: 10%" src="picture/footer01.PNG">
                </a>
            
                <a href="http://jwch.fzu.edu.cn/" target="view_window" style="margin-left: 40px">
                    <img style="width: 20%; height: 10%" src="picture/footer02.PNG">
                </a>
            
                <a href="http://zsb.fzu.edu.cn/" target="view_window" style="margin-left: 40px">
                    <img style="width: 20%; height: 10%" src="picture/footer03.PNG">
                </a>
            
                <a href="http://yjsy.fzu.edu.cn/" target="view_window" style="margin-left: 40px">
                    <img style="width: 20%; height: 10%" src="picture/footer04.PNG">
                </a>
            
        </div>
    </div>
</div>

<div class="fd-f-bottom">
    <div class="container">
        <div class="fd-fb-logo">
            <img src="picture/footer05.PNG">
        </div>
        <div class="fd-fb-public">
          <span class="fd-fbp-span1">
              学院地址：福州市闽侯县学园路2号福州大学数学与计算机科学学院
          </span>
          <span class="fd-fbp-span2">
              版权声明：© 2019
              福州大学软件学院19春季软工实践G013. 版权所有. 保留所有权利
          </span>
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
    $('li.dropdown').mouseover(function () {
        $(this).addClass('open');
    }).mouseout(function () {
        $(this).removeClass('open');
    });
    $(document).ready(function () {
        
        homepages();
    });
</script>
             
</body>
</html>