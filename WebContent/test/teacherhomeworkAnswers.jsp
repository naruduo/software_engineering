<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<HomeworkAnswer> homeworkAnswers = (List<HomeworkAnswer>) request.getAttribute("homeworkAnswers");
%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8080/software_engineering/" />
<meta charset="UTF-8">
<title>list homework answers</title>
</head>
<body>
	<%
		System.out.println(homeworkAnswers);
		for (HomeworkAnswer ha : homeworkAnswers) {
			if (ha != null) {
	%>
	<span><%=ha%></span>&nbsp;&nbsp;&nbsp;
	<a
		href="file/downloadFile.action?filename=<%=ha.getStudentId()%>%2F<%=ha.getAddress()%>">下载</a>
	<form action="homeworkAnswer/scoreHomeworkAnswer.action" method="post">
		<input type="hidden" name="homeworkId" value="<%=ha.getHomeworkId()%>" />
		<input type="hidden" name="studentId" value="<%=ha.getStudentId()%>" />
		<input type="text" name="score"
			value="<%=ha.getScore() == -1 ? "没分数" : ha.getScore()%>" />
		<button type="submit">评分</button>
	</form>
	<%
		}
		}
	%>
</body>
</html>