<%@ page import = "interns.com.dao.LoginDAO" %>
<html>
	<head>
		<title>Interns</title>
	</head>
	<body>
		<jsp:useBean id="user" class="interns.com.model.UserModel"></jsp:useBean>
		<jsp:setProperty property="*" name="user"></jsp:setProperty>
		 
		<%
			int i = LoginDAO.login(user);
			if(i == 5)
			{
				session.setAttribute("id", user.getId());
				session.setAttribute("type", "user");
				response.sendRedirect("reg2.jsp");
			}
			else if(i == 50)
			{
				session.setAttribute("id", user.getId());
				session.setAttribute("type", "user");
				response.sendRedirect("dashboard.jsp");
			}
			else if(i == 6)
			{
				session.setAttribute("id", user.getId());
				session.setAttribute("type", "company");
				response.sendRedirect("creg.jsp");
			}
			else if(i == 60)
			{
				session.setAttribute("id", user.getId());
				session.setAttribute("type", "company");
				response.sendRedirect("dashboard.jsp");
			}
			else
				out.println("INVALID ID OR PASSWORD");
		%>
	</body>
</html>