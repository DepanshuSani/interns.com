<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Interns.com</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="style.css">
</head>
<body>

 <div id="Navbar">
    <header>
        Interns.com
        <sub>find the best job here...</sub>
    </header>
    <nav>
        <ul>
            <a href="index.jsp" class="active"><li>Home</li></a>
            <a href="#"><li>Companies</li></a>
            <%
	           	if(session.getAttribute("id") != null)
	           	{
	       	%>
	           	<a href="index2.jsp" class="right"><li><%=session.getAttribute("id").toString() %></li></a>
	        <%
	           	}
	           	else
	        	{
	        %>
	           <a href="index2.jsp" class="right"><li>Sign In</li></a>
	        <%
	           	}
	        %>
            
        </ul>
    </nav>
 </div>

 <div id="container">
 	<div id="banner">
		<div class="row">
                        <div class="slider_container">
                            <div id="slider">
                                <div class="slide">
                                    <img src="1.jpg" alt="" class="slideimg">
                                </div>
                                <div class="slide">
                                    <img src="2.jpg" alt="" class="slideimg">
                                </div>
                                <div class="slide">
                                    <img src="3.jpg" alt="" class="slideimg">
                                </div>
                                <div class="slide">
                                    <img src="4.jpg" alt="" class="slideimg">
                                </div>
                                <div class="slide">
                                    <img src="1.jpg" alt="" class="slideimg">
                                </div>
                            </div>
                        </div>
    	</div>
	</div>

      <div class="aboutus">
           <h1> About Us </h1>
           <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse rutrum leo in ultricies blandit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum non sodales nibh, eu ultrices elit. Nunc facilisis venenatis turpis non bibendum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non ligula ac urna vestibulum ultrices vitae sit amet ex. Proin vel sollicitudin arcu. Sed faucibus porta ante at aliquet. Integer tempus ex a turpis mattis pellentesque. Vestibulum vitae nulla ultrices, suscipit lorem nec, convallis nunc.

            
                Pellentesque non quam eros. Aenean tincidunt pharetra nisi, id fermentum elit cursus id. Aenean laoreet purus non arcu fermentum, et bibendum lectus mattis. Sed elementum fermentum ultricies. Sed mauris lorem, semper vitae dui non, ornare euismod massa. In arcu sapien, varius in est sit amet, fringilla sollicitudin ipsum. Curabitur ultricies sem odio, ac ultrices neque feugiat eget. Nam elit nibh, tempor nec ante nec, maximus efficitur massa. Quisque nec aliquet risus. Donec tristique ligula ut sapien suscipit consectetur. Fusce rhoncus libero non bibendum facilisis. Sed tincidunt, elit ac rutrum fringilla, diam nibh tristique velit, id sollicitudin nisi massa id urna. Suspendisse sapien felis, congue vel ornare nec, euismod ac est. Duis ultrices velit in dui imperdiet fermentum. Curabitur vulputate sem justo, vitae dapibus mi tristique aliquet.

           </p>
      </div>
 </div>
 </div>
</body>
</html>