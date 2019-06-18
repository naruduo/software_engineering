<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新建通知</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/notification/editNotification.action" method="post">
		<input type="hidden" name="notification.notificationId" value="${notification.notificationId}" />
		<label>通知内容：</label>
		<textarea rows="30" cols="50" name="notification.notiContent" placeholder="请输入通知内容">${notification.notiContent}</textarea>
		<button type="submit">发布通知</button>
	</form>
</body>
</html>