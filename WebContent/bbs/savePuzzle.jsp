<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>新建问题</title>
	<script type="text/javascript">
		$(document).ready(function (){
			$("#submitBtn").click(
				function () {
					var description = $("#description").val();
					$.ajax({
						type: "POST",  
						url: "<%=request.getContextPath()%>/puzzle/savePuzzle.action", 
						data: {description:description}, 
						dataType:"json", 
						success: function (data){
							alert(data.result);
							if(result != null)
								alert(obj.result);
							alert(1);
						}, 
						error: function (){
							alert(1);
						}
					});
				})});
	</script>
</head>
<body>
	<!-- <form action="<%=request.getContextPath()%>/puzzle/savePuzzle.action" method="post"> -->
		<span>问题简介：</span>
		<textarea cols="20" rows="5" id="description" name="description" placeholder="请输入问题简介"></textarea>
		<button class="btn btn-success" type="submit" id="submitBtn">提交</button>
</body>
</html>