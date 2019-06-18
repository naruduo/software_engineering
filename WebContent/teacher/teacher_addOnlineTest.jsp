<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%
	List<CourseChapter> chapters = (List<CourseChapter>) request.getAttribute("courseChapters");
	OnlineTest onlineTest = (OnlineTest) request.getAttribute("onlineTest");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加习题</title>
</head>
<body>
	<form action="../onlineTest/addAndUpdateOnlineTest.action"
		method="post">
		<input name="onlineTest.id" value="<%=onlineTest.getId()%>"
			type="hidden" /> 章节： <select name="onlineTest.courseChapterId">
			<%
				for (CourseChapter cc : chapters) {
			%>
			<option value="<%=cc.getId()%>"
				<%=cc.getId() == onlineTest.getCourseChapterId() ? "selected" : ""%>><%=cc.getUnitName()%>-<%=cc.getUnitDesc()%>
			</option>
			<%
				}
			%>
		</select><br /> 问题描述：<br />
		<textarea rows="5" cols="50" name="onlineTest.question"><%=onlineTest.getQuestion()%></textarea>
		<br /> <input type="radio" name="onlineTest.answer" value="A" checked />A：<input
			type="text" name="onlineTest.choiceA"
			value="<%=onlineTest.getChoiceA()%>" size="40" /> <br /> <input
			type="radio" name="onlineTest.answer" value="B"
			<%="B".equals(onlineTest.getAnswer()) ? "checked" : ""%> />B：<input
			type="text" name="onlineTest.choiceB"
			value="<%=onlineTest.getChoiceB()%>" size="40" /> <br /> <input
			type="radio" name="onlineTest.answer" value="C"
			<%="C".equals(onlineTest.getAnswer()) ? "checked" : ""%> />C：<input
			type="text" name="onlineTest.choiceC"
			value="<%=onlineTest.getChoiceC()%>" size="40"> <br /> <input
			type="radio" name="onlineTest.answer" value="D"
			<%="D".equals(onlineTest.getAnswer()) ? "checked" : ""%> />D：<input
			type="text" name="onlineTest.choiceD"
			value="<%=onlineTest.getChoiceD()%>" size="40" /> <br /> <span>请选中正确答案</span>
		<br /> <input type="submit" value="保存" />
	</form>
</body>
</html>