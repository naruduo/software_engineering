<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8081/software_engineering/" />
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="../css/footer_base.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css.map" />
<link type="text/css" href="../css/fileinput.min.css" rel="stylesheet" />
<script src="../js/fileinput.min.js"></script>
<script src="../js/zh.js"></script>

<script>
$('#testfile').fileinput({
    language: 'zh',
    uploadUrl: location.pathname + 'upload/',
    showCaption: true,
    showUpload: true,
    showRemove: true,
    showClose: true,
    layoutTemplates:{
        actionDelete: ''
    },
    browseClass: 'btn btn-primary'
});
</script>
<title>上传通用资源</title>
</head>
<body>




<div style="padding: 60px 400px 10px;">
<form role="form" action="commonFile/TcommonFile_upload.action" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="name">选择您要上传的文件类型</label>
    <select class="form-control" name="cf.fileType">
      <option value="1">课件</option>
      <option value="2">试卷</option>
    </select>
    <br/>
    <input type="file" id="inputfile" name="uploadFile">
    <br/>
    <button type="button" class="btn btn-primary">上传</button>
    
    
  </div>
</form>
</div>


<!--  origin version
	<form action="commonFile/TcommonFile_upload.action" method="post"
		enctype="multipart/form-data">
		<input type="file" name="uploadFile" /> 
		<br />
		<select name="cf.fileType">
			<option value="1">课件</option>
			<option value="2">试卷</option>
		</select> 
		<br />
		<button type="submit">上传</button>
	</form>
-->
</body>
</html>