<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "interns.com.model.Mailbox" %>
<%@ page import = "interns.com.model.UserModel" %>
<%@ page import = "java.util.List" %>
<%

	String id = null;
	if(request.getParameter("no") != null)
	{
		int no = Integer.parseInt(request.getParameter("no"));
		List<Mailbox> results = LoginDAO.inbox((String)session.getAttribute("id"));
		for(Mailbox mail : results)
	   	{
	   		if(mail.getNo() == no)
	   		{
	   			id = mail.getFrom();
	   		}
	   	}
	}
	else
	{
		id = (String)session.getAttribute("id");
	}
	UserModel user = LoginDAO.userDetails(id);
	out.println(user.getCity());
	out.println(user.getMobile());
	out.println(user.getName());
   		
%>