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
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css.map" />
<title>上传文件</title>
</head>
<body>
<div style="padding: 20px 400px 10px;">
    <h3>上传教学大纲</h3>
	<form role="form" action="../file/uploadFile.action" method="post"
		enctype="multipart/form-data">
		<input type="file" name="uploadFile" /><br />
		<input class="btn btn-primary" type="submit" value="上传" />
	</form>
</div>
</body>
</html>