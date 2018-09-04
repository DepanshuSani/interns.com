<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "interns.com.model.JobDetails" %>
<%@ page import = "java.util.List" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    
        
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css.css">
	<title>Interns.com</title>
</head>
<body>
<div class="container">
        <div class="row">
                <div class="col1">
                		<div class="job">
                            <h1 class="right" data-toggle="modal" data-target="#viewdetail1" style="cursor:pointer;" onclick="loadModal()">+</h1>
                            <h2 id="post1">Post a new job</h2>  
      
                        </div>
                        <div id="load_job">
                        </div>
                        <%
					    	List<JobDetails> results = LoginDAO.load_jobs();
					    	for(JobDetails job : results)
					    	{
					    		if(!job.getCompany().equals((String)session.getAttribute("id")))
					    			continue;
					    %>
					    	<div class="job">
							    <h1 class="right">Interns.com</h1>
							    <h2 id="post1"><%=job.getTitle() %></h2>
							    <h5 id="company1"><%=job.getCompany_name()%></h5>
							    <h6><%=job.getLocation() %><span id="loc1"></span></h6>
							    <table class="table1">
		                            <tr class="heading">
		                               <td><h6>Start Date</h6></td>
		                                <td><h6>Duration</h6></td>
		                                <td><h6>Stipend</h6></td>
		                                <td><h6>Posted On</h6></td>
		                                <td><h6>Apply By</h6></td>
		                            </tr>
		                          
		                        
		                            <tr class="values">
		                               <td id="sd1"><h6><%=job.getStart_date() %></h6></td>
		                                <td id="duration1"><h6><%=job.getDuration() %></h6></td>
		                                <td id="stipend1"><h6><%=job.getSalary() %></h6></td>
		                                <td id="posted1"><h6><%=job.getDate_time() %></h6></td>
		                                <td id="apply1"><h6><%=job.getDos() %></h6></td>
		                            </tr>
                             </table>

							    <div class="bar">
							    <!-- Button trigger modal -->
							        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#viewdetail1" onclick="loadJobs(<%=job.getNo() %>)">
							                View Details 
							        </button>
							
							    
							    </div>
							</div>
					    <%
					    		
					    	}
					    %>
                        
                        
                </div>
        </div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="viewdetail1" tabindex="-1" role="dialog" aria-labelledby="Label1" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
	<div class="modal-content">
	<div class="modal-header">
	<h5 class="modal-title" id="Label1"></h5>
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	<span aria-hidden="true">&times;</span>
	</button>
	</div>
	<div class="modal-body">
	         ...
	</div>
	<div class="modal-footer">
	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	</div>
	</div>
	</div>
	</div>

<script>
	function loadModal()
	{
		document.getElementById("Label1").innerHTML = "Post a new job";
		document.getElementsByClassName("modal-body")[0].innerHTML = "<center><img src=\"loading2.gif\" width=\"50%\"></center>";
		$.ajax({url: "post.html", success: function(result){
			document.getElementsByClassName("modal-body")[0].innerHTML = result;
        }});
		document.getElementsByClassName("modal-footer")[0].innerHTML = "<button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>";
	}
	function loadJobs(no)
	{
		document.getElementById("Label1").innerHTML = "Post a new job";
		document.getElementsByClassName("modal-body")[0].innerHTML = "<center><img src=\"loading2.gif\" width=\"50%\"></center>";
		$.ajax({url: "loadJobs.jsp?no=" + no, success: function(result){
			document.getElementsByClassName("modal-body")[0].innerHTML = result;
        }});
		document.getElementsByClassName("modal-footer")[0].innerHTML = "<button type=\"button\" class=\"btn btn-danger\" onclick=\"deleteJob(" + no + ")\">Delete</button> <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>";
		
	}
	function deleteJob(no)
	{
		document.getElementsByClassName("modal-footer")[0].innerHTML = "<button type=\"button\" class=\"btn btn-danger disabled\" onclick=\"deleteJob(" + no + ")\">Deleting</button> <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>";
		$.ajax({url: "deleteJob.jsp?no=" + no, success: function(result){
			location.reload();
        }});
	}
</script>
</body>
</html>