<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>软件工程精品课</title>

<link type="text/css" rel="stylesheet" href="../css/footer_base.css" />
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
  <!-- CSS
  ================================================== -->
  <!-- RS5.0 Main Stylesheet -->
  <link rel="stylesheet" type="text/css" href="../plugins/revo-slider/css/settings.css">
  <!-- RS5.0 Layers and Navigation Styles -->
  <link rel="stylesheet" type="text/css" href="../plugins/revo-slider/css/layers.css">
  <link rel="stylesheet" type="text/css" href="../plugins/revo-slider/css/navigation.css">
  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="../plugins/revo-slider/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" type="text/css" href="../plugins/revo-slider/fonts/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../plugins/revo-slider/css/settings.css">
  <link rel="stylesheet" type="text/css" href="../plugins/revo-slider/css/layers.css">
  <link rel="stylesheet" type="text/css" href="../plugins/revo-slider/css/navigation.css"> 
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="../plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
  <!-- Lightbox.min css -->
  <link rel="stylesheet" href="../plugins/lightbox2/dist/css/lightbox.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="../plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="../plugins/slick-carousel/slick/slick-theme.css">
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="../css/style.css">


  <!-- Colors -->
  <link rel="stylesheet" type="text/css" href="../css/colors/green.css" title="green">
  <link rel="stylesheet" type="text/css" href="../css/colors/red.css" title="light-red">
  <link rel="stylesheet" type="text/css" href="../css/colors/blue.css" title="blue">
  <link rel="stylesheet" type="text/css" href="../css/colors/light-blue.css" title="light-blue">
  <link rel="stylesheet" type="text/css" href="../css/colors/yellow.css" title="yellow">
  <link rel="stylesheet" type="text/css" href="../css/colors/light-green.css" title="light-green">


</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="span12">
		 <p class="bg-primary">欢迎您：${USER}，${stu.name}同学
		 	<a href="<%=request.getContextPath()%>/user/logoutUser.action" class="pull-right bg-primary">登出</a>
		 </p>
		
			<h3>
				软件工程精品课
			</h3>
			<ul class="nav nav-tabs"  bgcolor="#3f51b6">
				<li class="active" >
					<a href="<%=request.getContextPath()%>/student/StudentIndex.jsp" style="font-size:20px">课程主页</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/student/listMyHomeworksStudent.action" style="font-size:20px">习题作业</a>
				</li>
				<li class="">
					<a href="<%=request.getContextPath()%>/exp/listExp.action" style="font-size:20px">实验教学</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/student/stu_resource.jsp" style="font-size:20px">资源下载</a>
				</li>
				<li>
					<a href="#" style="font-size:20px">在线练习</a>
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
							<a href="#">联系我们</a>
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
	</div>
	

   <div class="row">
      <div class="jumbotron">
        <h1>Hello! Software Engineering! </h1>
        <p>软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。</p>
        <p>
          <a class="btn btn-lg btn-primary" href="../document/course_outline.docx" role="button">查看大纲! &raquo;</a>
        </p>
      </div> 
      </div>
	</div>
	
		
	<section class="testimonial section" id="testimonial">
		<div class="container">
			<div class="row">				
				<div class="col-lg-12">
					<!-- testimonial wrapper -->
					<div class="testimonial-slider">
						<!-- testimonial single -->
						<div class="item text-center">
							<i class="tf-ion-chatbubbles"></i>
							<!-- client info -->
							<div class="client-details">
								<p>单红，男，1972年出生，工学硕士，讲师。2003年4月毕业于昆明理工大学，获计算机应用技术硕士学位，同年7月来福州大学。</p>
							</div>
							<!-- /client info -->
							<!-- client photo -->
							<div class="client-thumb">
								<img src="../images/client-logo/clients-1.jpg" class="img-responsive" alt="">
							</div>
							<div class="client-meta">
								<h3>单红</h3>
								<span>Teacher , Fuzhou University</span>
							</div>
							<!-- /client photo -->
						</div>
						<!-- /testimonial single -->
				
						<!-- testimonial single -->
						<div class="item text-center">
							<i class="tf-ion-chatbubbles"></i>
							<!-- client info -->
							<div class="client-details">
								<p>汪璟玢，女，1973年生，硕士，副教授，硕士生导师。1994年7月毕业于福州大学计算机系，获学士学位。2003年1月毕业于福州大学计算机系，获硕士学位。主要从事在云计算环境下的海量数据及空间数据管理技术与方法研究</p>
							</div>
							<!-- /client info -->
							<!-- client photo -->
							<div class="client-thumb">
								<img src="../images/client-logo/teacher02.PNG" class="img-responsive" alt="">
							</div>
							<div class="client-meta">
								<h3>汪璟玢</h3>
								<span>Teacher , Fuzhou University</span>
							</div>
							<!-- /client photo -->
						</div>
						<!-- /testimonial single -->
					
						<!-- testimonial single -->
						<div class="item text-center">
							<i class="tf-ion-chatbubbles"></i>
							<!-- client info -->
							<div class="client-details">
								<p>王灿辉，男，福州大学数学与计算机科学学院副教授，主讲课程：高级语言程序设计、面向对象程序设计、软件工程；研究方向：数据库、分布式系统、管理信息系统（MIS）</p>
							</div>
							<!-- /client info -->
							<!-- client photo -->
							<div class="client-thumb">
								<img src="../images/client-logo/teacher_logo1.jpg" class="img-responsive" alt="">
							</div>
							<div class="client-meta">
								<h3>王灿辉</h3>
								<span>Teacher Fuzhou Univesity</span>
							</div>
							<!-- /client photo -->
						</div>
						<!-- /testimonial single -->
					</div>
				</div> 		<!-- end col lg 12 -->
			</div>	    <!-- End row -->
		</div>       <!-- End container -->
	</section>    <!-- End Section -->
	
	
  
 <div class="fd-f-link">
    <div class="container">
        <div class="fd-fl-title">
            <span class="fd-flt-span1">友情链接</span>
            <span class="fd-flt-span2">Friendship Link</span>
        </div>
        <div>
            
                <a href="http://www.fzu.edu.cn/" target="view_window" style="margin-left: 40px">
                    <img style="width: 20%; height: 10%" src="../picture/footer01.PNG">
                </a>
            
                <a href="http://jwch.fzu.edu.cn/" target="view_window" style="margin-left: 40px">
                    <img style="width: 20%; height: 10%" src="../picture/footer02.PNG">
                </a>
            
                <a href="http://zsb.fzu.edu.cn/" target="view_window" style="margin-left: 40px">
                    <img style="width: 20%; height: 10%" src="../picture/footer03.PNG">
                </a>
            
                <a href="http://yjsy.fzu.edu.cn/" target="view_window" style="margin-left: 40px">
                    <img style="width: 20%; height: 10%" src="../picture/footer04.PNG">
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

</body>
    
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
    <script type="text/javascript" src="../plugins/revo-slider/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="../plugins/revo-slider/js/jquery.themepunch.revolution.min.js"></script>
    <!-- Custom js -->
    <script src="../js/script.js"></script>

      <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
    (Load Extensions only on Local File Systems ! 
    The following part can be removed on Server for On Demand Loading) --> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.actions.min.js"></script> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.carousel.min.js"></script> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.kenburn.min.js"></script> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.layeranimation.min.js"></script> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.migration.min.js"></script> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.navigation.min.js"></script> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.parallax.min.js"></script> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.slideanims.min.js"></script> 
    <script type="text/javascript" src="../plugins/revo-slider/js/extensions/revolution.extension.video.min.js"></script> 
   
<script>
  
    /* https://learn.jquery.com/using-jquery-core/document-ready/ */
    jQuery(document).ready(function() {
 
        /* initialize the slider based on the Slider's ID attribute */
        jQuery('#rev_slider_1').show().revolution({
 
            /* options are 'auto', 'fullwidth' or 'fullscreen' */
            sliderLayout: 'fullscreen',
 
            /* basic navigation arrows and bullets */
            navigation: {
 
                arrows: {
                    style:"zeus",
                    enable:true,
                    hide_onmobile:true,
                    hide_under:600,
                    hide_onleave:true,
                    hide_delay:200,
                    hide_delay_mobile:1200,
                    tmp:'<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
                    left: {
                      h_align:"left",
                      v_align:"center",
                      h_offset:30,
                      v_offset:0
                    },
                    right: {
                      h_align:"right",
                      v_align:"center",
                      h_offset:30,
                      v_offset:0
                    }
                  }
                  ,
                  bullets: {
                    enable:false,
                    hide_onmobile:true,
                    hide_under:600,
                    style:"metis",
                    hide_onleave:true,
                    hide_delay:200,
                    hide_delay_mobile:1200,
                    direction:"horizontal",
                    h_align:"center",
                    v_align:"bottom",
                    h_offset:0,
                    v_offset:30,
                    space:5,
                    tmp:'<span class="tp-bullet-img-wrap">  <span class="tp-bullet-image"></span></span><span class="tp-bullet-title">{{title}}</span>'
                  }
            }
        });
    });
</script>          		
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