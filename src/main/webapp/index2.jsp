<html>
	<head>
		<title>Interns</title>
        <link href="css.css" type="text/css" rel="stylesheet" />
        <!--  jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

	</head>
	<body>
		<header>
			Interns.com
            <sub>find the best job here...</sub>
		</header>
        <nav>
        	<ul>
            	<a href="index.jsp" class="active"><li>Home</li></a>
                <a href="#"><li>Companies</li></a>
            </ul>
        </nav>
        <%
			if(session.getAttribute("id") != null) 
			{
				response.sendRedirect("dashboard.jsp");
			}
        	if(session.getAttribute("error") != null)
        	{
        		String error = (String)session.getAttribute("error");
        		out.println("<script>alert(\"" + error + "\"); </script>");
        		session.removeAttribute("error");
        	}
		%>
        <div id="form">
            <div class="login active" id="signup">
                Register
            </div>
            <div class="login" id="signin">
                Login
            </div>
            <div id="load">
            </div>
        </div>
      
		<script>
			$("document").ready(function(){
                $.ajax({url: "signup.html", success: function(result){
                	document.getElementById("signup").className = "login active";
                	document.getElementById("signin").className = "login";
                    $("#load").html(result);
                }});
				
			});
            $("#signup").click(function(){
                $("#load").hide();
                $.ajax({url: "signup.html", success: function(result){
                	document.getElementById("signup").className = "login active";
                	document.getElementById("signin").className = "login";
                    $("#load").fadeIn(1000);
                    $("#load").html(result);
                }});
            });

            $("#signin").click(function(){
                $("#load").hide();
                $.ajax({url: "signin.html", success: function(result){
                	document.getElementById("signup").className = "login";
                	document.getElementById("signin").className = "login active";
                    $("#load").fadeIn(1000);
                    $("#load").html(result);
                }});
            });
        </script>	
      
      
	</body>
</html>