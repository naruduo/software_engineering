
<%
	if (session.getAttribute("USER") == null || !"Student".equals(session.getAttribute("Role"))) {
		response.sendRedirect("../user/indexUser.action");
	}
%>