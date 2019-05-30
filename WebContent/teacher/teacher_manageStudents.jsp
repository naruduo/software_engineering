<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%
	List<Student> students = (List<Student>) request.getAttribute("students");
%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8080/software_engineering/" />
<meta charset="UTF-8">
<title>管理学生</title>
</head>
<body>
	<form action="teacher/teacher_searchMyStudents.action">
		<input type="text" name="nameKey" /> <input type="submit" value="搜索" />
	</form>
	<button>
		<a href="teacher/teacher_getMyRoster.action">下载花名册</a>
	</button>
	<button>
		<a href="teacher/teacher_addStudent.jsp">添加学生</a>
	</button>
	<table>
		<thead>
			<th>学号</th>
			<th>名字</th>
			<th>操作</th>
		</thead>
		<%
			for (Student s : students) {
		%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getName()%></td>
			<td><button>
					<a href="student/deleteStudent.action?id=<%=s.getId()%>">删除</a>
				</button></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>