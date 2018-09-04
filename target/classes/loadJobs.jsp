<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "interns.com.model.JobDetails" %>
<%@ page import = "java.util.List" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	List<JobDetails> results = LoginDAO.load_jobs();
	JobDetails job = null;
	for(JobDetails j : results)
	{
		if(j.getNo() == no)
		{
			job = j;
			break;
		}
	}
	
%>

<table class="tabular-form">
	<tr>
	<td><h6>Company Name</h6></td>
	<td> <%=job.getCompany_name() %></td>
	</tr>
	
	<tr>
	<td><h6>Job Title</h6></td>
	<td> <%=job.getTitle() %></td>
	</tr>
	
	<tr>
	<td><h6> Job Location </h6></td>
	<td> <%=job.getLocation() %></td>
	</tr>
	
	<tr>
	<td><h6> Start Date </h6></td>
	<td> <%=job.getStart_date() %></td>
	</tr>
	
	<tr>
	<td><h6> Duration</h6></td>
	<td> <%=job.getDuration() %></td>
	</tr>
	
	<tr>
	<td><h6> Salary </h6></td>
	<td> <%=job.getSalary() %></td>
	</tr>
	
	<tr>
	<td><h6> Area of Interest </h6></td>
	<td> <%=job.getInterest() %></td>
	</tr>
	
	<tr>
	<td><h6> Qualification </h6></td>
	<td> <%=job.getQualification() %></td>
	</tr>
	
	<tr>
	<td><h6> Number Of Vacancies </h6></td>
	<td> <%=job.getVacancies() %></td>
	</tr>
	
	<tr>
	<td><h6> Last Date Of Submission </h6></td>
	<td> <%=job.getDos() %></td>
	</tr>
	
	<tr>
	<td><h6>They need</h6></td>
	<td>
		<%=job.getExperience() %>
	</td>
	</tr>
	
	<tr>
	<td><h6> Other Details </h6></td>
	<td> -- <%=job.getOther() %> --</td>
	</tr>
</table>