<%@ page import = "interns.com.dao.LoginDAO" %>
<%@ page import = "interns.com.model.Mailbox" %>
<%@ page import = "java.util.List" %>
<html>
<head>
 	<link rel="stylesheet" href="mailcss.css">
 	<!--  jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    
</head>
<body>
<div class="row">
<div class="col-2 nopadding">
 <div class="tab">
  <button  class="tablinks" onclick="openCity(event, 'London')"id="defaultOpen">Compose</button>
  <button  class="tablinks" onclick="openCity(event, 'Paris')">Inbox</button>
  <button  class="tablinks" onclick="openCity(event, 'Tokyo')">Sent</button>
  </div>
</div>
<div class="col-10 nopadding">
  <div  id="London" class="tabcontent">
	<form action="send.jsp" method="post">
		<table class="table table-dark">
			<tr>
				<td ><input type="email" name="to" placeholder="To" class="in" autofocus required /></td>
			</tr>
			<tr>
				<td ><input type="text" name="subject" placeholder="Subject" class="in" required/></td>
			</tr>
			<tr>
				<td ><textarea name="message" placeholder="Type your message here..." class="in" id="message" required/></textarea></td>
			</tr>
			<tr>
			 <td> <input type="submit" value="SEND" class="send"/></td>
			</tr>
		</table>
		
	</form>
 
</div>

<div id="Paris" class="tabcontent">
  <table  class="table">
  <thead class="thead1" >
    <tr >
      <th style="width: 24%;"  scope="col">From</th>
      <th style="width: 24%;"  scope="col">Subject</th>
      <th style="width: 24%;" scope="col">Date</th>
      <th style="width: 24%;"  scope="col">Time</th>    
      <th style="width: 5%;"  scope="col"></th>    

    </tr>
  </thead>
  <tbody>
    
    <%
    	List<Mailbox> results = LoginDAO.inbox((String)session.getAttribute("id"));
    	for(Mailbox mail : results)
    	{
    		out.println("<tr class=trr data-toggle=modal data-target= #viewdetail2 onclick=\"loadMails("+ mail.getNo()+", 0)\">"+
	    			      "<th style=\"text-align: center;\" scope=\"row\">" + mail.getFrom() + "</th>"+
	    			      "<th style=\"text-align: center;\" scope=\"row\">" + mail.getSubject() + "</th>"+
	    			      "<th style=\"text-align: center;\" scope=\"row\">" + mail.getDate() + "</th>"+
	    			      "<th style=\"text-align: center;\" scope=\"row\">" + mail.getTime() + "</th>"+
	    			      "<th><a href=#><img src=del.png class=delimg style=\"margin-left:-100%;\"></a>" + "</th>"+
	    			    "</tr>");
    	}
    %>
    
     
  </tbody>
</table>
</div>

<div  id="Tokyo" class="tabcontent">
  <table class="table">
  <thead class="thead1">
    <tr>
      
      <th style="width: 24%;"  scope="col">To</th>
      <th style="width: 24%;"  scope="col">Subject</th>
      <th style="width: 24%;" scope="col">Date</th>
      <th style="width: 24%;"  scope="col">Time</th>    
       <th style="width: 5%;"  scope="col"></th>   
    
    </tr>
  </thead>
  <tbody>
    <%
    	List<Mailbox> sentResults = LoginDAO.sent((String)session.getAttribute("id"));
    	for(Mailbox sent_mail : sentResults)
    	{
    		out.println("<tr class=trr data-toggle=modal data-target= #viewdetail2 onclick=\"loadMails("+ sent_mail.getNo()+", 1)\">"+
	    			      "<th style=\"text-align: center;\" scope=\"row\">" + sent_mail.getTo() + "</th>"+
	    			      "<th style=\"text-align: center;\" scope=\"row\">" + sent_mail.getSubject() + "</th>"+
	    			      "<th style=\"text-align: center;\" scope=\"row\">" + sent_mail.getDate() + "</th>"+
	    			      "<th style=\"text-align: center;\" scope=\"row\">" + sent_mail.getTime() + "</th>"+
	    			      "<th><a href=#><img src=del.png class=delimg style=\"margin-left:-100%;\"></a>" + "</th>"+
	    			    "</tr>");
    	}
    %>
    
         
  </tbody>
</table>
  </div>
</div>
</div>		
<!-- Modal -->
                                <div class="modal fade" id="viewdetail2" tabindex="-1" role="dialog" aria-labelledby="Label2" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="Label2">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                         ...
                                </div>
                                <div class="modal-footer">
                                 <button type="button" class="btn btn-danger" >Delete</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                                </div>
                                </div>
                                </div>
<!-- Modal -->
                                <div class="modal fade" id="viewdetailProfile" tabindex="-1" role="dialog" aria-labelledby="Label2" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="LabelProfile">Applicant's Profile</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                         ...
                                </div>
                                <div class="modal-footer">
                                 <button type="button" class="btn btn-primary" onclick="select()">Select</button>
                                 <button type="button" class="btn btn-danger" >Reject</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                                </div>
                                </div>
                                </div>

	<script>
	var tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    
    
	function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
	}
	<%
		if(session.getAttribute("type").equals("company"))
		{
	%>
	function loadMails(no, mode)
	{
		document.getElementsByClassName("modal-body")[0].innerHTML = "<center><img src=\"loading2.gif\" width=\"50%\"></center>";
		document.getElementById("Label2").innerHTML = "Interns.com";
		$.ajax({url: "loadMails.jsp?no=" + no + "&mode=" + mode, success: function(result){
			document.getElementsByClassName("modal-body")[0].innerHTML = result;
        }});
		document.getElementsByClassName("modal-footer")[0].innerHTML = "<button type=\"button\" class=\"btn btn-danger\" onclick=\"deleteMail(" + no + ")\" >Delete</button> <button type=\"button\" data-toggle=modal data-target= #viewdetailProfile class=\"btn btn-primary\" onclick=\"viewProfile(" + no + ")\" >View Profile</button> <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>";
		
	}
	function viewProfile(no)
	{
		document.getElementsByClassName("modal-body")[1].innerHTML = "<center><img src=\"loading2.gif\" width=\"50%\"></center>";
		$.ajax({url: "viewProfile.jsp?no=" + no, success: function(result){
			document.getElementsByClassName("modal-body")[1].innerHTML = result;
        }});
		document.getElementsByClassName("modal-footer")[1].innerHTML = "<button type=\"button\" class=\"btn btn-primary\" onclick=\"selectApplicant(" + no + ")\" >Select</button> <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>";
		
	}
	function selectApplicant(no)
	{
		$.ajax({url: "selectApplicant.jsp?no=" + no, success: function(result){
			location.reload();
        }});
	}
	<%
		}
		else
		{
	%>
	function loadMails(no, mode)
	{
		document.getElementsByClassName("modal-body")[0].innerHTML = "<center><img src=\"loading2.gif\" width=\"50%\"></center>";
		document.getElementById("Label2").innerHTML = "Interns.com";
		$.ajax({url: "loadMails.jsp?no=" + no + "&mode=" + mode, success: function(result){
			document.getElementsByClassName("modal-body")[0].innerHTML = result;
        }});
		document.getElementsByClassName("modal-footer")[0].innerHTML = "<button type=\"button\" class=\"btn btn-danger\" onclick=\"deleteMail(" + no + ")\" >Delete</button> <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>";
		
	}
	<%
		}
	%>
	function deleteMail(no)
	{
		document.getElementsByClassName("modal-footer")[0].innerHTML = "<button type=\"button\" class=\"btn btn-danger disabled\" onclick=\"deleteJob(" + no + ")\">Deleting</button> <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>";
		$.ajax({url: "deleteMail.jsp?no=" + no, success: function(result){
			location.reload();
        }});
	}
</script>	

</body>
</html>