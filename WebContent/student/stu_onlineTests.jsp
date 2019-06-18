<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%
	List<OnlineTest> onlineTests = (List<OnlineTest>) request.getAttribute("onlineTests");
	Map<Integer, Boolean> marks = (Map<Integer, Boolean>) request.getAttribute("marks");
	Map<Integer, String> answers = (Map<Integer, String>) request.getAttribute("answers");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试</title>
</head>
<body>
	<div>
		<form action="../onlineTest/stuScoreOnlineTest.action" method="post">
			<%
				int c = 1;
				for (OnlineTest ot : onlineTests) {
			%>
			<div>
				<p><%=c++ + "、" + ot.getQuestion()%></p>
				<p>
					<input type="radio" name="answers[<%=ot.getId()%>]" value="A"
						<%=answers != null && "A".equals(answers.get(ot.getId())) ? "checked" : ""%> /><%=ot.getChoiceA()%></p>
				<p>
					<input type="radio" name="answers[<%=ot.getId()%>]" value="B"
						<%=answers != null && "B".equals(answers.get(ot.getId())) ? "checked" : ""%> /><%=ot.getChoiceB()%></p>
				<p>
					<input type="radio" name="answers[<%=ot.getId()%>]" value="C"
						<%=answers != null && "C".equals(answers.get(ot.getId())) ? "checked" : ""%> /><%=ot.getChoiceC()%></p>
				<p>
					<input type="radio" name="answers[<%=ot.getId()%>]" value="D"
						<%=answers != null && "D".equals(answers.get(ot.getId())) ? "checked" : ""%> /><%=ot.getChoiceD()%></p>
				<p>
					<%="准确率：" + String.format("%.2f", ot.getTrueFreq() * 100.0 / ot.getAnsFreq()) + "%"%>
				</p>
				<p><%=marks == null ? "" : (marks.get(ot.getId()) ? "正确" : "错误,正确答案：" + ot.getAnswer())%></p>
			</div>
			<%
				}
			%>
			<input type="submit" value="提交" />
		</form>
	</div>
</body>
</html>