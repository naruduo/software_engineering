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
<title>章节列表</title>
</head>
<body>
	<button>
		<a href="../teacher/teacher_addCourseChapter.jsp">添加章节</a>
	</button>
	<table>
		<thead>
			<th>章节名</th>
			<th>章节描述</th>
			<th>删除</th>
		</thead>
		<tbody>
			<%
				for (CourseChapter cc : courseChapters) {
			%>
			<tr>
				<td><%=cc.getUnitName()%></td>
				<td><%=cc.getUnitDesc()%></td>
				<td><button>
						<a
							href="../courseChapter/deleteCourseChapter.action?courseChapter.id=<%=cc.getId()%>">删除</a>
					</button></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>