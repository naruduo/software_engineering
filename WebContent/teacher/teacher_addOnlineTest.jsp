<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.se.pojo.*"%>
<%@ page import="java.util.*"%>
<%
	List<CourseChapter> chapters = (List<CourseChapter>) request.getAttribute("courseChapters");
	OnlineTest onlineTest = (OnlineTest) request.getAttribute("onlineTest");
	if (onlineTest == null)
		onlineTest = new OnlineTest();
	Map<String, String> errors = (Map) request.getAttribute("errors");
	System.out.println(onlineTest);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="../css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet"
	href="../css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<title>管理习题</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<h3>管理习题</h3>
			<form role="form"
				action="../onlineTest/addAndUpdateOnlineTest.action" method="post">
				<input name='onlineTest.id' value='<%=onlineTest.getId()%>'
					type='hidden' /> 请选择该题属于的章节： <select class="form-control"
					name="onlineTest.courseChapterId">
					<%
						for (CourseChapter cc : chapters) {
					%>
					<option value="<%=cc.getId()%>"
						<%=cc.getId() == onlineTest.getCourseChapterId() ? "selected" : ""%>><%=cc.getUnitName()%>-<%=cc.getUnitDesc()%>
					</option>
					<%
						}
					%>
				</select><br />
				<%=errors != null && errors.get("question") != null
					? "<span style=\"color:red\">" + errors.get("question") + "</span><br/>"
					: ""%>问题描述：<br />
				<textarea class="form-control" rows="5" cols="50"
					name="onlineTest.question"><%=onlineTest.getQuestion()%></textarea>
				<br />
				<%=errors != null && errors.get("choice") != null
					? "<span style=\"color:red\">" + errors.get("choice") + "</span><br/>"
					: ""%>
				<input type="radio" name="onlineTest.answer" value="A" checked />选项A：<input
					type="text" class="form-control" name="onlineTest.choiceA"
					value="<%=onlineTest.getChoiceA()%>" size="40" /> <br /> <input
					type="radio" name="onlineTest.answer" value="B"
					<%="B".equals(onlineTest.getAnswer()) ? "checked" : ""%> />选项B：<input
					type="text" class="form-control" name="onlineTest.choiceB"
					value="<%=onlineTest.getChoiceB()%>" size="40" /> <br /> <input
					type="radio" name="onlineTest.answer" value="C"
					<%="C".equals(onlineTest.getAnswer()) ? "checked" : ""%> />选项C：<input
					type="text" class="form-control" name="onlineTest.choiceC"
					value="<%=onlineTest.getChoiceC()%>" size="40"> <br /> <input
					type="radio" name="onlineTest.answer" value="D"
					<%="D".equals(onlineTest.getAnswer()) ? "checked" : ""%> />选项D：<input
					type="text" class="form-control" name="onlineTest.choiceD"
					value="<%=onlineTest.getChoiceD()%>" size="40" /> <br />
				<p class="lead">请选中正确答案</p>
				<input type="submit" class="btn btn-primary" value="保存" />
			</form>
		</div>
	</div>
</body>
</html>