<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>上传文件</title>
</head>
<body>
	<form role="form" action="../file/uploadFile.action" method="post"
		enctype="multipart/form-data">
		<input type="file" name="uploadFile" /><br /> <input type="submit"
			value="上传" />
	</form>
</body>
</html>