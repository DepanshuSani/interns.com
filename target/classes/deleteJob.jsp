<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "interns.com.model.JobDetails" %>
<%
	int no = Integer.parseInt((String)request.getParameter("no"));
	LoginDAO.deleteJob(no);
	response.sendRedirect("dashboard.jsp");
%>