<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加章节</title>
</head>
<body>
	<form action="../courseChapter/addCourseChapter.action" method="post">
		章节名：<input type="text" name="courseChapter.unitName" /><br /> <br />
		章节描述：<input type="text" name="courseChapter.unitDesc" /><br /> <br />
		<input type="submit" value="保存" />
	</form>
</body>
</html>