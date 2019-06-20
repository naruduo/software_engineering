<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@ include file="../include/teacherHeader.jsp"%>
<%
	List<Student> students = (List<Student>) request.getAttribute("students");
%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8081/software_engineering/" />
<meta charset="UTF-8">
 <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
  <link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css" />
  <link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css.map" />
  <link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css" />
  <link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css.map" />
  <link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
  <link type="text/css" rel="stylesheet" href="../css/bootstrap.css.map" />
  <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
  <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css.map" />
  <script type="text/javascript" src="../js/bootstrap.min.js"></script>
  <script type="text/javascript" src="../js/bootstarp.js"></script>
  <script type="text/javascript" src="../js/npm.js"></script>
<title>学生列表</title>
</head>



<body>

<h1>学生列表</h1>

<form action="teacher/teacher_searchMyStudents.action">
  <div class="form-group">
    <input type="text" name="nameKey" class="form-control"  placeholder="姓名">
  </div>
  <button type="submit" class="btn btn-lg btn-primary">搜索</button>
  		<a class="btn btn-lg btn-primary" role="botton" href="teacher/teacher_getMyRoster.action">导出名单</a>
	    <a class="btn btn-lg btn-primary" role="botton" href="teacher/teacher_addStudent.jsp">添加学生</a>
	<br/>
</form>

	<br/>
	
	<table class="table table=bordered">
		<thead>
			<th> <font size="5">学号</font> </th>
			<th> <font size="5">姓名</font> </th>
			<th> <font size="5">操作</font> </th>
		</thead>
	<tbody>
		<%
			for (Student s : students) {
		%>
		<tr class="success">
			<td><font size="4"><%=s.getId()%></font></td>
			<td><font size="4"><%=s.getName()%></font></td>
			<td>  
					<a class="btn btn-lg btn-warning" role="botton" href="student/deleteStudent.action?id=<%=s.getId()%>">删除</a>
			</td>
		</tr>
		<%
			}
		%>
	</tbody>	
	</table>

</body>
</html>