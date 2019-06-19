<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>添加章节</title>
</head>
<body>
<div style="padding: 60px 400px 10px;">
 <h3>添加章节</h3>
	<form action="../courseChapter/addCourseChapter.action" method="post">
		章节名：<input type="text" class="form-control" name="courseChapter.unitName" />
		章节描述：<input type="text" class="form-control" name="courseChapter.unitDesc" />
		<br/>
		<input type="submit" class="btn btn-primary" value="保存" />
	</form>
</div>
</body>
</html>