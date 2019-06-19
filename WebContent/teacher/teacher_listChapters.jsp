<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="com.se.pojo.*"%>
<%
	List<CourseChapter> courseChapters = (List<CourseChapter>) request.getAttribute("courseChapters");
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
<title>练习章节列表</title>
</head>
<body>
<h3>
	在线练习习题管理
</h3>

	<table class="table table-bordered">
		<thead>
		 <tr>
			<th>章节名</th>
			<th>章节描述</th>
			<th>删除</th>
			<th>管理练习</th>
		 </tr>
		</thead>
		<tbody>
			<%
				for (CourseChapter cc : courseChapters) {
			%>
			<tr>
				<td><%=cc.getUnitName()%></td>
				<td><%=cc.getUnitDesc()%></td>
				<td><button>
						<a href="../courseChapter/deleteCourseChapter.action?courseChapter.id=<%=cc.getId()%>">删除</a>
					</button>
				</td>
				<td><button>
						<a href="../onlineTest/teacherListOnlineTest.action?chapterId=<%=cc.getId()%>">管理习题</a>
					</button>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	
	<button type="botton" class="btn btn-success">
		<a href="../teacher/teacher_addCourseChapter.jsp">添加章节</a>
	</button>
	
</body>
</html>