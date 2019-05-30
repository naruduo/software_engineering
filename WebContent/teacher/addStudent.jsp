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
<title>添加学生</title>
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

	

<div style="padding: 60px 400px 10px;">
    <form class="bs-example bs-example-form" role="form" action="addStudent.action" method="post" enctype="multipart/form-data">
        <div class="input-group">
            <span class="input-group-addon">学号</span>
            <input type="text" class="form-control" placeholder="请输入学号" name="stu.id">
        </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon">密码</span>
            <input type="text" class="form-control" placeholder="请输入密码" name="stu.password">        
        </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon">姓名</span>
            <input type="text" class="form-control" placeholder="请输入姓名" name="stu.name">
        </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon">班级</span>
            <input type="text" class="form-control" placeholder="请输入班级" name="stu.classId">
        </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon">头像</span>
            <input type="file" class="form-control" placeholder="请选择图片" name="avatar">
        </div>
        <br>
        <button type="submit" class="btn btn-primary">添加</button>
    </form>
</div>


</body>
</html>