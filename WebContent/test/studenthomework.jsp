<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
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
<base href="http://localhost:8080/software_engineering/" />
<meta charset="UTF-8">
<title>StudentHomeworks</title>
</head>
<body>
	<a href="student/listMyHomeworksStudent.action">list</a>
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
		<a
			href="homeworkAnswer/submitHomeworkAnswer.action?homeworkId=<%=hw.getId()%>">提交作业</a>
	</button>
	<br />
	<%
		}
	%>
</body>
</html>