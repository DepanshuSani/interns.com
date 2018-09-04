<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "interns.com.model.Mailbox" %>
<%@ page import = "interns.com.model.SelectedApplicants" %>
<%@ page import = "java.util.List" %>
<%

	String id = null;
	int no = Integer.parseInt(request.getParameter("no"));
	List<Mailbox> results = LoginDAO.inbox((String)session.getAttribute("id"));
	SelectedApplicants app = new SelectedApplicants();
	app.setCompany((String)session.getAttribute("id"));
	app.setJobno(no);
	for(Mailbox mail : results)
	{
		if(mail.getNo() == no)
		{
			app.setId(mail.getFrom());
			break;
		}
	}
	LoginDAO.selectApplicant(app);
   		
%>