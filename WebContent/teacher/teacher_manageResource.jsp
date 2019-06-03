<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.se.pojo.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/navigator.jsp"%>

<%
	List<CommonFile> commonFiles = (List<CommonFile>) request.getAttribute("commonFiles");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>资源操作</title>
</head>
<body>
	<button><a href="<%=request.getContextPath()%>/teacher/teacher_uploadCommonFile.jsp">上传资源</a></button>
	<table border="1">
		<thead>
			<th>文件ID</th>
			<th>文件名</th>
			<th>发布时间</th>
			<th>下载次数</th>
			<th>操作</th>
		</thead>
		<%
			for (CommonFile cf : commonFiles) {
		%>
		<tr>
			<td><%=cf.getId()%></td>
			<td><%=cf.getFileName()%></td>
			<td><%=cf.getReleaseTime()%></td>
			<td><%=cf.getDownloadTimes()%></td>
			<td><button>
					<a
						href="<%=request.getContextPath()%>/commonFile/commonFile_download.action?fileId=<%=cf.getId()%>">下载</a>
				</button>
				<button>
					<a
						href="<%=request.getContextPath()%>/commonFile/TcommonFile_delete.action?fileId=<%=cf.getId()%>&fileType=<%=cf.getFileType()%>">删除</a>
				</button></td>
		</tr>
		<%
			}
		%>

	</table>
	<div class="pageDiv">
		<%@include file="../include/adminPage.jsp"%>
	</div>
</body>
</html>