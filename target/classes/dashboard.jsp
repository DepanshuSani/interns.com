<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!--  jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="style.css">
    <script>
             $(function () {
             $('[data-toggle="popover"]').popover()
            })
    </script>
</head>
<body>
	<%
		if(session.getAttribute("id") == null) 
		{
			response.sendRedirect("index.jsp");
		}
	%>
             
  
        <div id="dashboard">
            <header id="dashboardheader">
                    Interns.com
                    <sub>find the best job here...</sub>
            </header>
        </div> 
        <div id="dashboardnav">
             <div class="row">
                 <div class="col-4"> <div class="name">Name </div> </div>
                 <div class="col-5"> <div class="date"> date n time </div></div>
                 <div class="col-3"> <a href="logout.jsp" class="SignOut">Sign Out</a> </div>
             </div>    
         </div>
         
           <div id="container">
        <div class="row">
            <div class="col-md-2">
                <div id="main-navigation" class="left">
                       
                    <ul>
                        <li style="cursor:pointer;" onclick="query('home.jsp', 0)" class="nav active">Home</li>
                        
                        <%
                        	if(session.getAttribute("type").toString().equals("company"))
                        	{
                        %>
                        	<li style="cursor:pointer;" onclick="query('jobpost.jsp', 1)" class="nav">Job Post</li>
                        <%
                        	}
                        	else
                        	{
                        %>
                        <li style="cursor:pointer;" onclick="query('jobsearch.jsp', 1)" class="nav">Job search</li>
                        <%
                        	}
                        %>
                        <li class="nav">Profile</li>
                        <li style="cursor:pointer;" onclick="query('mailbox.jsp', 3)" class="nav">Mail Box</li>
                       
                        <li style="cursor:pointer;" onclick="query('settings.jsp', 4)"  class="nav">Settings</li>
                    </ul>
                </div>
            </div>                    
            
            <div class="col-md-10" id="content">
            </div>
        </div>
    </div> 

	<script>
		
		$("document").ready(function(){
			$("#content").html("<center><img src=\"loading.gif\"></center>");
			$.ajax({url: "home.jsp", success: function(result){
            	$("#content").fadeIn(1000);
                $("#content").html(result);
            }});
		});
		function query(link, item)
		{
			$("#content").html("<center><img src=\"loading.gif\"></center>");
			var nav = document.getElementsByClassName("nav");
		    for (var i=0 ; i < nav.length; i++) {
		        nav[i].className = "nav";
		    }
		    nav[item].className = "nav active";
            $.ajax({url: link, success: function(result){
                $("#content").html(result);
            }});
		}
	</script>


</body>
</html>