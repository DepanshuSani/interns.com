<%@ page import = "interns.com.dao.LoginDAO" %>
	<jsp:useBean id="job" class="interns.com.model.AppliedJobs"></jsp:useBean>
	<jsp:setProperty property="*" name="job"></jsp:setProperty>
		
<%
	job.setId((String)session.getAttribute("id"));
	LoginDAO.applyJob(job);
%>