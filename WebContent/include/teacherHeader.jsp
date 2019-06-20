
<%
	if (session.getAttribute("USER") == null || !"Teacher".equals(session.getAttribute("ROLE"))) {
		response.sendRedirect("../user/indexUser.action");
	}
%>