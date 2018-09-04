<%@ page import = "interns.com.dao.RegistrationDAO" %>
<html>
	<head>
		<title>Interns</title>
	</head>
	<body>
		<jsp:useBean id="user" class="interns.com.model.UserModel"></jsp:useBean>
		<jsp:setProperty property="*" name="user"></jsp:setProperty>
		 
		<%
			int i = RegistrationDAO.register(user);
			if(i>0)
			{
				session.setAttribute("id",user.getId());
				session.setAttribute("type", "user");
				response.sendRedirect("reg2.jsp");
			}
			else
			{
				session.setAttribute("error", "ID already registered!");
				response.sendRedirect("index2.jsp");
			}
		%>
	</body>
</html>