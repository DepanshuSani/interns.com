<%@ page import = "interns.com.dao.RegistrationDAO" %>
<html>
	<head>
		<title>Interns</title>
	</head>
	<body>
		<jsp:useBean id="user" class="interns.com.model.CompanyDetailsModel"></jsp:useBean>
		<jsp:setProperty property="*" name="user"></jsp:setProperty>
		 
		<%
			String id = (String)session.getAttribute("id");
			user.setId(id);
			int i = RegistrationDAO.creg_submit(user);
			response.sendRedirect("home.jsp");
		%>
	</body>
</html>