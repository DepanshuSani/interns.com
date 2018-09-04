<%
	if(session.getAttribute("id") != null) 
	{
		session.removeAttribute("id");
	}
	response.sendRedirect("index.jsp");
%>