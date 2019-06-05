<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<!-- 弹窗显示实验结果信息 -->
	<script type="text/javascript">
		function inform() {
			var res = "${result}";
			if(typeof res != "undefined" && res != null && res != "") 
				alert(res);
		}
	</script>	
</head>
<body onload="inform()">
	<!-- 实验报告信息 -->
	<p>1</p>
	<table>
		<c:forEach items="${expDocs}" var="expDoc">
			<tr>
				<td>${expDoc.expDocName}</td>
				<td>${expDoc.exp.expName}</td>
				<td>${expDoc.subTime}</td>
				<td>
					<!-- 暂无评分 -->
					<c:if test="${expDoc.score == null}">
						暂无评分
					</c:if>
					<!-- 显示评分 -->
					<c:if test="${expDoc.score != null}">
						${expDoc.score}
					</c:if>
				</td>
				<td>
					<a href="<%=request.getContextPath()%>/expdoc/markExpDoc.action?expDoc.expDocId=${expDoc.expDocId}&expDoc.score=99">
						<span>评分</span>
					</a>
				</td>			
			</tr>
		</c:forEach>
	</table>
	<!-- 分页 -->
	<div class="text-center">
		<%@include file="../include/adminPage.jsp"%>
	</div>
</body>
</html>