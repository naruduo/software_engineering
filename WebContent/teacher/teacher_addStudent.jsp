<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp" %>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ include file="../include/teacherHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>软件工程精品课</title>
<base href="http://localhost:8081/software_engineering/"/>
<!-- common css -->
<link type="text/css" rel="stylesheet" href="../css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css.map" />

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstarp.js"></script>
<script type="text/javascript" src="../js/npm.js"></script>
</head>
<body>

<div style="padding: 60px 400px 10px;">
    <form class="bs-example bs-example-form" role="form" action="student/addStudent.action" method="post" enctype="multipart/form-data">
        <div class="input-group">
            <span class="input-group-addon">学号</span>
            <input type="text" class="form-control" placeholder="学号" name="stu.id">
        </div>
        <br>
        <br>
        <div class="input-group">
            <span class="input-group-addon">姓名</span>
            <input type="text" class="form-control" placeholder="姓名" name="stu.name">
        </div>
        <br>
        <br>
        <center>
        <button type="submit" class="btn btn-primary">添加</button>
        &nbsp;&nbsp;
        <button type="reset" class="btn btn-primary">重置</button>
        </center>
    </form>
</div>


</body>
</html>