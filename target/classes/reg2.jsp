<html>
	<head>
		<title>Inerns</title>
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
                <li style="float:right;display:inline-block;padding:15px"><%=session.getAttribute("id") %></li>
            </ul>
        </nav>
        <%
			if(session.getAttribute("id") == null) 
			{
				response.sendRedirect("index.jsp");
			}
		%>
		<div id="form">
			<div class="active" style="padding:30px 100px 30px 100px;">
			    <h3>Registration</h3>
			</div>
			<form action="reg2_submit.jsp" method="post">			    
			    <table class="tabular-form">
			
					<tr>
						<td>
					 	   	<b>Class 10th Marks</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter marks" name="marks10" step="any" min="0" autofocus required>
					    </td>
				    </tr>
					
					<tr>
						<td>
				    		<b>Class 12th Marks</b>
					    </td>
					    <td>
					    <input type="number" placeholder="Enter marks" name="marks12" step="any" min="0" required>
					    </td>
				    </tr>
		
				    <tr>
					    <td>
						    <b>Please choose the programme</b>
						</td>
						<td>
						    <select name="programme" onblur="run()">
						    	<option selected disabled>SELECT</option>
							    <option value="bca">BCA</option>
							    <option value="btech">B.Tech</option>
							    <option value="mtech">M.Tech</option>
						    </select>	    
					    </td>
				    </tr>
				    
				    <tr>
					    <td>
					   		<b>College academic details:</b>
					   	</td>
				   	</tr>
				   	
				   	<tr>
				   		<td>
				   			Enter marks of each semester
				   		</td>
				   	</tr>
							    
				    <tr>
					    <td>
					    	<b>SEMESTER 1</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter CGPA" name="sem1" required>
					    </td>
				    </tr>
				    			    
				    <tr>
					    <td>
					    	<b>SEMESTER 2</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter CGPA" name="sem2" required>
					    </td>
				    </tr>
				    
				    <tr>
					    <td>
					    	<b>SEMESTER 3</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter CGPA" name="sem3" required>
					    </td>
				    </tr>
				    
				    <tr>
					    <td>
					    <b>SEMESTER 4</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter CGPA" name="sem4" required>
					    </td>
				    </tr>
				    
				    <tr class="yr3">
					    <td>
					    	<b>SEMESTER 5</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter CGPA" name="sem5">
					    </td>
				    </tr>
				    
				    <tr class="yr3">
					    <td>
					    	<b>SEMESTER 6</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter CGPA" name="sem6">
					    </td>
				    </tr>
				    
				    <tr class="yr4">
					    <td>
					    	<b>SEMESTER 7</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter CGPA" name="sem7">
					    </td>
				    </tr>
				    
				    <tr class="yr4">
					    <td>
					    	<b>SEMESTER 8</b>
					    </td>
					    <td>
					    	<input type="number" placeholder="Enter CGPA" name="sem8">
					    </td>
				    </tr>
				    
				    <tr>
				    <td>
				    <b>Enter your areas of interest</b>
					</td>
					<td>
					    <select name="interest">
					    	<option selected disabled>SELECT</option>
					    	<option value="ai">Artificial Intelligence</option>
					    	<option value="ml">Machine Learning</option>
					    	<option value="dl">Deep Learning</option>
					    </select>
				    </td>
				    </tr>
				        
				    <tr>
					    <td>
					    	<b>Describe yourself</b>
					    </td>
					    <td>
					    	<textarea name="about">Previously working in tech company</textarea>
					    </td>
				    </tr>
				    			    
				    <tr>
				    	<td> 
				    		<b>Recommendation</b>
				    	</td>
					    <td>
					    	<textarea name="recommend">Mr.Duggal Assistant Professor</textarea>
					    </td>
				    </tr>
			    </table>
			    <br />
			    <input type="submit" value="SUBMIT" />
			    <br />
			    <a href="dashboard.jsp">SKIP</a>
			</form>
			
		</div>
		
		<script>
			function run()
			{
				var prog = $("select[name=programme]").val();
				if(prog == "bca")
				{
					$(".yr3").fadeIn();
					$(".yr4").fadeOut();
				}
				else if(prog == "btech")
				{
					$(".yr3").fadeIn();
					$(".yr4").fadeIn();
				}
				else if(prog == "mtech")
				{
					$(".yr3").fadeOut();
					$(".yr4").fadeOut();
				}
			}
		</script>
	</body>
</html>