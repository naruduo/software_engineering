
<%
	if (session.getAttribute("USER") == null || !"Teacher".equals(session.getAttribute("Role"))) {
		response.sendRedirect("");
	}
%>