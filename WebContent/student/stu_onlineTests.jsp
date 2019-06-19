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
<link type="text/css" rel="stylesheet" href="../css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<title>学生在线测试</title>
</head>
<body>
<div class="container-fluid">	
<div class="row-fluid">
<h1>欢迎进入软件工程在线练习系统</h1>
<p class="text-danger" style="font-size:32px"> 单红老师提醒您：练习不规范 考试两行泪</p>
<br/>
	<div>
		<form role="form" action="../onlineTest/stuScoreOnlineTest.action" method="post">
			<%
				int c = 1;
				for (OnlineTest ot : onlineTests) {
			%>
			<div>
				<p class="lead"><%=c++ + "、" + ot.getQuestion()%></p>
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
				<p class="text-warning">
					<%="本题正确率：" + String.format("%.2f", ot.getTrueFreq() * 100.0 / ot.getAnsFreq()) + "%"%>
				</p>
				<p><%=marks == null ? "" : (marks.get(ot.getId()) ? "正确" : "错误,正确答案：" + ot.getAnswer())%></p>
			</div>
			<%
				}
			%>
			<input class="btn btn-success" type="submit" value="提交" />
		</form>
	</div>
</div>
</div>
</body>
</html>