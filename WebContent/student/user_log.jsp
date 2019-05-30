<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>操作日志</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css.map" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstarp.js"></script>
<script type="text/javascript" src="js/npm.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="span12">
		<h3>
				软件工程精品课
			</h3>
			<div class="tabbable" id="tabs-879191">
				<ul class="nav nav-tabs">
					<li class="active">
						<a data-toggle="tab" href="#panel-503035">操作日志</a>
					</li>
				</ul>
			</div>	
	
	
			<h3>
				用户操作记录
			</h3>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>
							记录编号
						</th>
						<th>
							文件名
						</th>
						<th>
							更新时间
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class="success">
						<td>
							1
						</td>
						<td>
							<a href="#">第一章课件</a>
						</td>
						<td>
							01/04/2012
						</td>
					</tr>
					<tr class="error">
						<td>
							2
						</td>
						<td>
							<a href="#">点击下载</a>
						</td>
						<td>
							02/04/2012
						</td>
					</tr>
					<tr class="warning">
						<td>
							3
						</td>
						<td>
							<a href="#">第一章课件</a>
						</td>
						<td>
							03/04/2012
						</td>
					</tr>
					<tr class="info">
						<td>
							4
						</td>
						<td>
							<a href="#">第一章课件</a>
						</td>
						<td>
							04/04/2012
						</td>
					</tr>
				</tbody>
			</table>
			<div class="text-center">
				<ul class="pagination">
				<li>
					<a href="#">«</a>
				</li>
				<li>
					<a href="#">1</a>
				</li>
				<li>
					<a href="#">2</a>
				</li>
				<li>
					<a href="#">3</a>
				</li>
				<li>
					<a href="#">4</a>
				</li>
				<li>
					<a href="#">5</a>
				</li>
				<li>
					<a href="#">»</a>
				</li>
			</ul>
			</div>
			<h3>
				这是页脚
			</h3>
		</div>
	</div>
</div>
</body>
</html>