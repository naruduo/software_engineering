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
<div class ="tableContainer">
    <input id ="currentPage" type ="hidden" value =" @ViewData[ "currentPage"] "/>
    <input id ="totalPages" type ="hidden" value =" @ViewData["totalPages" ] " />
    <table class ="table table-hover table-striped">
        <thead>
            <tr>
                <th class ="col-md-4 text-center"> 学生学号</th >
                <th class ="col-md-4 text-center"> 学生姓名 </th >
                <th class ="col-md-4 text-center"> 是否查看 </th >
            </tr>
        </thead>
        <tbody>
       		<c:forEach items="${notificationViews}" var="notificationView">
                <tr>
                    <td class ="col-md-4 text-center">${notificationView.stu.id}</td>
                    <td class ="col-md-4 text-center">${notificationView.stu.name}</td>
                    <td class ="col-md-4 text-center">
                    	<c:if test="${notificationView.status == true}">
                    		<span>已查看</span>
                    	</c:if>
                    	<c:if test="${notificationView.status == false}">
                    		<span>未查看</span>
                    	</c:if>                    	
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <ul id ="example"></ul>
    <%@include file="../../include/adminPage_NV.jsp"%>
</div >	


</body>
</html>