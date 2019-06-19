<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师通知公告</title>
</head>
<body>

<div class="text-center"><h2>教师通知公告</h2></div>

<div class ="tableContainer">
    <input id ="currentPage" type ="hidden" value =" @ViewData[ "currentPage"] "/>
    <input id ="totalPages" type ="hidden" value =" @ViewData["totalPages" ] " />
    <table class ="table table-hover table-striped">
        <thead>
            <tr>
                <th class ="col-md-4 text-center"> 通知标题 </th >
                <th class ="col-md-4 text-center"> 发出教师 </th >
                <th class ="col-md-4 text-center"> 通知时间 </th >
                <th class ="col-md-4 text-center"> 编辑 </th >
                <th class ="col-md-4 text-center"> 删除 </th >
            </tr>
        </thead>
        <tbody>
       		<c:forEach items="${notifications}" var="notification">
                <tr>
                    <td class ="col-md-4 text-center">
                    	<a href="<%=request.getContextPath()%>/notificationView/browseNotisNotificationView.action?notificationView.notification.notificationId=${notification.notificationId}">
                    		${notification.notiContent}
                    	</a>
                    </td>
                    <td class ="col-md-4 text-center">${notification.teacher.name}</td>
                    <td class ="col-md-4 text-center"><ftm:formatDate value="${notification.releaseTime}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
                    <td class ="col-md-4 text-center">
                    	<a class="btn btn-success" href="<%=request.getContextPath()%>/notification/getTheNotification.action?notification.notificationId=${notification.notificationId}">
                    		<span class="glyphicon glyphicon-edit"></span>
                    	</a>
                    </td>
                    <td class ="col-md-4 text-center">
                    	<a class="btn btn-success" 
                    	href="<%=request.getContextPath()%>/notification/deleteNotification.action?notification.notificationId=${notification.notificationId}">
                    		<span class="glyphicon glyphicon-trash"></span>
                    	</a>
                    </td>
                    <td class ="col-md-4 text-center"></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p class="text-center">
    	<a href="<%=request.getContextPath()%>/test/newNotification.jsp"><span class="glyphicon glyphicon-plus"></span>新建通知</a>
    </p>
    <ul id ="example"></ul>
    <div class="text-center">
    <%@include file="../../include/adminPage.jsp"%>
    </div>
</div >	


</body>
</html>