<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生实验编辑</title>
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
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
						<a data-toggle="tab" href="#panel-503035">编辑实验内容</a>
					</li>					
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-503035">
					</div>				
				</div>
			</div>

			<h3>
				编辑实验
			</h3>
			<form>
					<fieldset>
					<legend contenteditable="true">实验信息</legend>
					<label contenteditable="true">实验名</label>
					<input type="text" placeholder="TODO：jsp">
					<label class="checkbox" contenteditable="true">
					</label>
                    <label contenteditable="true">截止时间</label>
					<input type="text" placeholder="TODO：jsp">
					<label class="checkbox" contenteditable="true">
					</label>
					</fieldset>
			</form>
			<div id="summernote"><p>请上传实验报告或在此处编辑实验报告</p></div>
            <script>
              $(document).ready(function() {
                  $('#summernote').summernote();
              });
            </script>
            <button class="btn" type="button">提交</button>
			<h3>
				这是页脚
			</h3>
		</div>
	</div>
</div>
</body>
</html>