<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%
	Homework hw = (Homework) request.getAttribute("homework");
	Map<Integer, HomeworkAnswer> has = (Map<Integer, HomeworkAnswer>) request.getAttribute("homeworkAnswers");
	List<Student> students = (List<Student>) request.getAttribute("students");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>批阅</title>
</head>
<body>
	<h1><%=hw.getName()%></h1>
	<button>
		<a
			href="../homeworkAnswer/packHomeworkAnswer.action?homeworkId=<%=hw.getId()%>">打包下载</a>
	</button>
	<form
		action="../homeworkAnswer/scoreHomeworkAnswer.action?"
		method="post">
		<input type="hidden" name="homeworkId" value="<%=hw.getId()%>" /> <input
			type="submit" value="保存评分" />
		<table border="1px">
			<thead>
				<th>学号</th>
				<th>名字</th>
				<th>提交时间</th>
				<th>下载</th>
				<th>评分</th>
			</thead>
			<%
				for (Student stu : students) {
			%>
			<tr>
				<td><%=stu.getId()%></td>
				<td><%=stu.getName()%></td>
				<%
					if (has.get(stu.getId()) != null) {
							HomeworkAnswer ha = has.get(stu.getId());
				%>
				<td><%=ha.getSubmitTime()%></td>
				<td><button>
						<a
							href="../file/downloadFile.action?filename=<%=ha.getAddress()%>&packageId=<%=ha.getStudentId()%>">下载</a>
					</button></td>
				<td>评分：<input name="scores[<%=ha.getStudentId()%>]" type="text"
					onkeyup="value=value.replace(/[^\d]/g,'')"
					value="<%=ha.getScore()%>" /></td>
				<%
					} else {
				%>
				<td colspan="3">未提交</td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</form>
</body>
</html>