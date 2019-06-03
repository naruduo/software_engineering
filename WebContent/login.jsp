<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8081/software_engineering/" />
<meta name="viewport"
	content="width=device-width, initial-scale=0.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<meta name="description">
<title>软件工程精品课网站</title>
<link href="" rel="shortcut icon">
<link href="css/base.css" rel="stylesheet" type="text/css">
<link href="css/wall.css" rel="stylesheet" type="text/css">
<script src="css/jquery.min.js.下载" type="text/javascript"></script>
<script src="css/three.min.js.下载" type="text/javascript"></script>
<script src="css/layer.js.下载" type="text/javascript"></script>
<link rel="stylesheet" href="css/layer.css" id="layuicss-skinlayercss">
<script type="text/javascript" src="css/sign_up.js.下载"></script>
<script type="text/javascript" src="css/find_pwd.js.下载"></script>
</head>
<%
	if (session.getAttribute("USER") != null) {
		response.sendRedirect("user/indexUser.action");
	}
%>
<body>
	<form name="form1" action="user/loginUser.action" method="post">
		<div class="login_logo" align="center">
			<img
				src="http://cmcs.fzu.edu.cn/website/static/fzsjgw/image/shuji.png"
				alt="福州大学数计学院" />
		</div>
		<br /> <br />
		<div class="login_logo_1" align="center">
			<img src="<%=request.getContextPath()%>/picture/login_logo_1.PNG"  alt="软件工程" />
		</div>
		<br /> <br />
		<div class="wall-warp">
			<div class="wall-main">

				<!--登录-->
				<div class="switch-wrap switch-wrap-signin active">
					<ul class="wall-form-ipt-list">
						<li><input type="text" placeholder="请输入账号" value="" name="id"
							onfocus="hideErrorInfo(&#39;form-ipt-error-l-username&#39;);"
							id="lUsername" /><span>${iderror}</span></li>
						<li><input type="password" placeholder="密码" value=""
							name="password"
							onfocus="hideErrorInfo(&#39;form-ipt-error-l-password&#39;);"
							id="lPassword" /> <span>${passworderror}</span></li>
						<h1>${loginerror}</h1>
					</ul>

					<input type="submit" class="wall-sub-btn" value="登录" />
				</div>
			</div>


			<script src="css/wallbgcanvas.js.下载" type="text/javascript"></script>
			<div id="wall-bg">
				<span></span>
				<canvas width="1362" height="909"
					style="width: 1362px; height: 909px;"></canvas>
			</div>
		</div>
	</form>
</body>
</html>