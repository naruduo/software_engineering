<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教师实验编辑</title>
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
					<li>
						<a data-toggle="tab" href="#panel-661850">第二部分</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-503035">
					</div>
					<div class="tab-pane" id="panel-661850">
						<p>
							第二部分内容.
						</p>
					</div>
				</div>
			</div>
			<div class="carousel slide" id="carousel-752462">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-752462">
					</li>
					<li data-slide-to="1" data-target="#carousel-752462">
					</li>
					<li data-slide-to="2" data-target="#carousel-752462">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="img/1.jpg" />
						<div class="carousel-caption">
							<h4>
								棒球
							</h4>
							<p>
								棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/2.jpg" />
						<div class="carousel-caption">
							<h4>
								冲浪
							</h4>
							<p>
								冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/3.jpg" />
						<div class="carousel-caption">
							<h4>
								自行车
							</h4>
							<p>
								以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。
							</p>
						</div>
					</div>
				</div> <a data-slide="prev" href="#carousel-752462" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-752462" class="right carousel-control">›</a>
			</div>
			<h3>
				编辑实验
			</h3>
			<form>
					<fieldset>
					<legend contenteditable="true">实验信息</legend>
					<label contenteditable="true">实验名</label>
					<input type="text" placeholder="Type something…">
					<label class="checkbox" contenteditable="true">
					</label>
                    <label contenteditable="true">截止时间</label>
					<input type="text" placeholder="Type something…">
					<label class="checkbox" contenteditable="true">
					</label>
					</fieldset>
			</form>
			<div id="summernote"><p>输入实验描述</p></div>
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