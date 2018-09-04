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
            </ul>
        </nav>
        <%
			if(session.getAttribute("id") == null) 
			{
				response.sendRedirect("home.jsp");
			}
		%>
		<div id="form">
			<div class="active" style="padding:30px 100px 30px 100px;">
			    <h3>Registration</h3>
			</div>
			<form action="creg_submit.jsp" method="post">
			
				<table class="tabular-form">
				<tr>
					<td>
				    <b>Name of the company</b>
				    </td>
				    <td>
				    	<input type="text" placeholder="Enter Name" name="name" autofocus required />
				    </td>
			    </tr>
			
				<tr>
					<td>
				    	<b>Data of establishment</b>
				    </td>
				    <td>
				    	<input type="date" placeholder="Enter the Date" name="date" required>
					</td>
				</tr>
				
				<tr>
					<td>
						<b>ISO Code</b>
				    </td>
				    <td>
				    	<input type="text" placeholder="Enter the Code" name="iso" required>
					</td>
				</tr>
				
				<tr>
					<td>
				   		<b>Location of Headquarters</b>
				    </td>
				    <td>
				    	<input type="text" placeholder="Enter Locations" name="hq" required>
				    </td>
			    </tr>
			    
			    <tr>
				    <td>
				    	<b>Name of CEO</b>
				    </td>
				    <td>
				    	<input type="text" placeholder="Enter Name" name="ceo" required>
				    </td>
			    </tr>
			    
			    <tr>
				    <td>
				    	<b>Location of other branches</b>
				    </td>
				    <td>
				    	<input type="text" placeholder="Enter Locations" name="branches" required>
				    </td>
			    </tr>
			    
			    </table>
			
			    <p>By creating an account you agree to our <a href="#">Terms &amp; Privacy</a>.</p>
			    <button type="submit" class="registerbtn">Register</button>
			
			  
			</form>
		</div>
	</body>
</html>