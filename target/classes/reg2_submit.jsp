<%@ page import = "interns.com.dao.RegistrationDAO" %>
<html>
	<head>
		<title>Interns</title>
	</head>
	<body>
		<jsp:useBean id="user" class="interns.com.model.UserDetailsModel"></jsp:useBean>
		<jsp:setProperty property="*" name="user"></jsp:setProperty>
		 
		<%
			String id = (String)session.getAttribute("id");
			user.setId(id);
			int i = RegistrationDAO.reg2_submit(user);
			response.sendRedirect("dashboard.jsp");
		%>
	</body>
</html>