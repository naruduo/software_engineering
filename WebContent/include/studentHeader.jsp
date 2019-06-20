
<%
	if (session.getAttribute("USER") == null || !"Student".equals(session.getAttribute("ROLE"))) {
		response.sendRedirect("../user/indexUser.action");
	}
%>