<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.*" %>
<html>
	<head>
		<title>Interns</title>
	</head>
	<body>
		<jsp:useBean id="user" class="interns.com.model.Mailbox"></jsp:useBean>
		<jsp:setProperty property="*" name="user"></jsp:setProperty>
		 
		<%
			user.setFrom((String)session.getAttribute("id"));
			user.setDate(new SimpleDateFormat("dd-MM-yyyy").format(new Date()));
			user.setTime(new SimpleDateFormat("hh:mm a").format(new Date()));
			LoginDAO.send(user);
			out.println("<h1>Sent successfully</h1>");
			response.sendRedirect("dashboard.jsp");
		%>
	</body>
</html>