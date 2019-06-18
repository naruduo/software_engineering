<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师通知公告</title>
<script type="text/javascript">
	function displayLooking() {
		$(".true").hide();
		$(".false").show();
	}
	function displayLooked() {
		$(".true").show();
		$(".false").hide();
	}
	function displayAll() {
		$(".true").show();
		$(".false").show();
	}
</script>
</head>
<body>
<div class ="tableContainer">
<form action="<%=request.getContextPath()%>/notificationView/markNotificationView.action" method="post">
    <input id ="currentPage" type ="hidden" value =" @ViewData[ "currentPage"] "/>
    <input id ="totalPages" type ="hidden" value =" @ViewData["totalPages" ] " />
    <button type="button" onclick="displayLooking()">未查看</button>
    <button type="button" onclick="displayLooked()">已查看</button>
    <button type="button" onclick="displayAll()">全部</button>
    <table class ="table table-hover table-striped">
        <thead>
            <tr>
            	<th class ="col-md-1 text-center"></th>
                <th class ="col-md-3 text-center"> 通知内容</th >
                <th class ="col-md-3 text-center"> 发布时间 </th >
                <th class ="col-md-3 text-center"> 是否查看 </th >
            </tr>
        </thead>
        <tbody>
       		<c:forEach items="${notificationViews}" var="notificationView">
                <tr class="${notificationView.status}">
                	<td class ="col-md-1 text-center">
                		<c:if test="${notificationView.status == false}">
                    		<input type="checkbox" name="keys" value="${notificationView.notification.notificationId}" />
                    	</c:if>
                	</td>
                    <td class ="col-md-3 text-center">${notificationView.notification.notiContent}</td>
                    <td class ="col-md-3 text-center"><ftm:formatDate value="${notificationView.notification.releaseTime}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
                    <td class ="col-md-3 text-center">
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
    <button type="submit">标记为已读</button>
</form>  
    <ul id ="example"></ul>
    <%@include file="../../include/adminPage.jsp"%>
</div >	


</body>
</html>