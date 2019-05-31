<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8081/software_engineering/" />
<meta charset="UTF-8">
<title>上传通用资源</title>
</head>
<body>
	<form action="commonFile/TcommonFile_upload.action" method="post"
		enctype="multipart/form-data">
		<input type="file" name="uploadFile" /> <br /> <select
			name="cf.fileType">
			<option value="1">课件</option>
			<option value="2">试卷</option>
		</select> <br />
		<button type="submit">上传</button>
	</form>
</body>
</html>