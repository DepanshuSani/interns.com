<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "interns.com.model.Mailbox" %>
<%@ page import = "java.util.List" %>
<%
	int no = Integer.parseInt((String)request.getParameter("no"));
	int mode = Integer.parseInt((String)request.getParameter("mode"));
   	List<Mailbox> results = LoginDAO.inbox((String)session.getAttribute("id"));
	List<Mailbox> result = LoginDAO.sent((String)session.getAttribute("id"));
	results.addAll(result);
   	for(Mailbox mail : results)
   	{
   		if(mail.getNo() == no)
   		{
   			if(mode == 0)
   				out.println("<b>From : </b> " + mail.getFrom() + "<br />");
   			else
   				out.println("<b>To : </b> " + mail.getTo() + "<br />");
   		
%>

	
	<b>Subject : </b><%=mail.getSubject() %><br />
	<%=mail.getMessage() %>
	
<%
			break;
   		}
   	}
%>