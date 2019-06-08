<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>问题</title>
<script type="text/javascript">
function like(solutionId) {
	$.ajax({
		type: "POST",  
		url: "<%=request.getContextPath()%>/solution/likeSolution.action", 
		data: {solutionId:solutionId}, 
		dataType:"json", 
		success: function (data){
			if(data.likeFreq != null)
				$("#like"+solutionId).text(data.likeFreq);
			else
				alert("点赞出错-.-");
		}, 
		error: function (){
			alert("服务器出现了一些问题-.-");
		}
	});
}
</script>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid">
		<h2 class="text-warning bg-warning">展示问题及回答</h2>
	</div>
	<div class="container">
		<h3>${puzzle.description}</h3>
		<p>${puzzle.student.name}</p>
	</div>
	<hr />
	<c:forEach items="${solutions}" var="solution" varStatus="idxStatus">
		<div class="container">
			<br />
			<p>${solution.content}</p>
			<p>${soluersName[idxStatus.index]}</p>
			<p>${solution.time}</p>
			<a onclick="like(${solution.solutionId})">
				<span class="glyphicon glyphicon-thumbs-up" id="like${solution.solutionId}">${solution.likeFreq}</span>
			</a>
			<c:if test="${solution.soluerId == USER}" >
				<a href="<%=request.getContextPath()%>/solution/deleteSolution.action?solutionId=${solution.solutionId}&puzzleId=${puzzle.puzzleId}">
					<span class="glyphicon glyphicon-trash"></span>
				</a>
			</c:if>
		</div>
	</c:forEach>
	<div class="text-center">
		<%@include file="../include/adminPage2.jsp" %>
	</div>
	<div class="container">
		<hr />
		<form action="<%=request.getContextPath()%>/solution/saveSolution.action" method="post">
			<div class="form-group">
				<input type="hidden" name="puzzleId" id="puzzleId" value="${puzzle.puzzleId}">
				<label>回答：</label>
				<textarea name="content" rows="10" cols="40" id="content"  placeholder="请输入回答"></textarea>
				<br />
				<br />
				&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-default" id="answerBtn">回答</button>
		</div>
		</form>
	</div>
</body>
</html>