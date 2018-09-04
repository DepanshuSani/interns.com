<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.*" %>
<html>
	<head>
		<title>Interns</title>
	</head>
	<body>
		<jsp:useBean id="details" class="interns.com.model.JobDetails"></jsp:useBean>
		<jsp:setProperty property="*" name="details"></jsp:setProperty>
		 
		<%
			details.setCompany((String)session.getAttribute("id"));
			details.setDate_time(new SimpleDateFormat("dd-MM-yyyy 'at' hh:mm a").format(new Date()));
			LoginDAO.post_jobs(details);
			
			response.sendRedirect("dashboard.jsp");
		%>
	</body>
</html>