<%@page import="com.se.pojo.Homework"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<Homework> homeworks = (List<Homework>) request.getAttribute("homeworks");
	if (homeworks == null)
		homeworks = new LinkedList<Homework>();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="http://localhost:8080/software_engineering/" />
</head>
<body>
	<form action="homework/addHomework.action" method="post"
		enctype="multipart/form-data">
		<input type="text" name="hwName"><br /> <input type="date"
			name="deadline" /><br /> <input type="file" class="file1"
			name="uploadFile" /><br />
		<button type="submit" class="but1">上传</button>
	</form>
	<a href="teacher/teacher_listMyHomeworks.action">list</a>
	<br />
	<%
		for (Homework hw : homeworks) {
			System.out.println(hw);
	%>
	<%=hw.getName()%>
	&nbsp;&nbsp;&nbsp;
	<%=hw.getId()%>
	&nbsp;&nbsp;&nbsp;
	<%=hw.getAddress()%>
	&nbsp;&nbsp;&nbsp;
	<button>
		<a href="homework/deleteHomework.action?homeworkId=<%=hw.getId()%>">删除</a>
	</button>
	<button>
		<a href="file/downloadFile.action?filename=<%=hw.getAddress()%>">下载</a>
	</button>
	<button>
		<a
			href="teacher/teacher_listMyHomeworkAnswers.action?homeworkId=<%=hw.getId()%>">批改</a>
	</button>
	<br />
	<%
		}
	%>

	<button>
		<a href="teacher/teacher_getMyRoster.action">下载花名册</a>
	</button>
</body>
</html>