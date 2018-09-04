<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "interns.com.model.Mailbox" %>
<%
	int no = Integer.parseInt((String)request.getParameter("no"));
	LoginDAO.deleteMail(no);
	response.sendRedirect("dashboard.jsp");
%>