<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Profile</title>
  <!--  jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="main.css">
</head>
<body>
  <div class="container ">
    <div class="row">
      
<div class="col-md-12">
<div class="detail">
  <div><h2><center>Profile</center></h2></div>
  <div>
    <form action="#" method="get">
      <table>
        <tr>
         <td> <label for="name">Enter your name: </label></td>
         <td>  <input type="text" name="First Name" id="f.name"autofocus placeholder ="First  Name" required></td>
         <td>  <input type="text"name="Middle Name"id="m.name" placeholder ="Middle Name"></td>
         <td>  <input type="text" name="Last Name"id="l.name"autofocus placeholder ="Last Name" required ></td>
  </tr>
  
  <tr>
    <td><label for="email id">Enter your email id : </label></td>
    <td> <input type="email"  email id="id" placeholder ="Email Id" autofocus required></td>
  </tr>
  <tr><td><label for="marks">Your marks : </label></td>
  <td><input type="text" marks= "10th" placeholder="marks 10th" autofocus ></td>
  <td><input type="text" marks= "12th" placeholder="marks 12th" autofocus ></td>
  </tr>
  <tr><td><label for="programme">Programme : </label></td>
    <td><input type="text" marks= "programme" placeholder="programme" autofocus ></td>
  </tr>
  <tr><td><label for="semester  marks"><h5>semester  Marks <h5> </label></td><tr></tr>
   <tr> <td><label for="First year">First year : </label></td>
    <td><input type="text" marks= "1st" placeholder="1st semester " autofocus ></td>
    <td><input type="text" marks= "2nd" placeholder="2nd semester " autofocus ></td>
    </tr>
    <td><label for="Second year">Second year : </label></td> 
    <td><input type="text" marks= "3rd" placeholder="3rd semester " autofocus ></td>
    <td><input type="text" marks= "4th" placeholder="4th semester " autofocus ></td>
  </tr>
  <td><label for="Third year">Third year : </label></td> 
  
    <td><input type="text" marks= "5th" placeholder="5th semester " autofocus ></td>
    <td><input type="text" marks= "6th" placeholder="6th semester " autofocus ></td>
    <tr><td><label for= "Fourth year">Fourth year : </label></td> 
    <td><input type="text" marks= "7th" placeholder="7th semester " autofocus ></td>
    <td><input type="text" marks= "8th" placeholder="8th semester " autofocus ></td>
    </tr>

    <tr>
      <td><label for="Interest">interest : </label></td>
      <td> <input type="text"  interest="interest" placeholder ="interest" autofocus ></td>
    </tr>

    <tr>
      <td><label for="About">About : </label></td>
      <td> <input type="text"  about="about" placeholder ="About" autofocus ></td>
    
    </tr>

    <tr>
      <td><label for="Interest">interest : </label></td>
      <td> <input type="text"  interest="interest" placeholder ="interest" autofocus ></td>
    </tr>

    <tr>
      <td><label for="Recommend">Recommend : </label></td>
      <td> <input type="text"  Recommend="Recommend" placeholder ="Recommend" autofocus ></td>
    </tr>

     <td colspan="2"><input class="submit_button"type="image" src="image\submit.png"  value="submit"></td>
   </tr>
  </table>
  </form>
<div class=link>
  <div class="form-field-container  labeled form-section border-top" id="form-item-website_url"> 
    <label class="control-label " for="id_website_url">Links:</label> 
    <div id="tooltip-reference-website_url" class="tooltip-reference pos-r "> 
      <input class="urlinput form-control" id="id_website_url" name="website_url" placeholder="Website (http(s)://..)" type="url" /> </div>
    </div> 
    <div class="form-field-container  non-labeled form-section "id="form-item-google_profile "> 
    <div id="tooltip-reference-google_profile"class="tooltip-reference pos-r "> 
      <div class="controls "> 
        <div class="input-group"> 
          <span class="input-group-addon">https://plus.google.com/</span> 
          <input class="textinput textInput form-control" id="id_google_profile" maxlength="128" name="google_profile" placeholder="Google+ Link" type="text" /> </div> </div> <div class="help-block">Add your Google+ profile name (e.g. +JohnSmith or 33338888789996)</div> </div>
        </div> 
      <div class="form-field-container  non-labeled form-section"id="form-item-twitter_profile">
        <div id="tooltip-reference-twitter_profile" class="tooltip-reference pos-r "> 
          <div class="controls ">
             <div class="input-group"> 
               <span class="input-group-addon">http://twitter.com/</span> 
               <input class="textinput textInput form-control" id="id_twitter_profile" maxlength="128" name="twitter_profile" placeholder="Twitter Profile" type="text" />
               </div>
               </div> 
               <div class="help-block">Add your Twitter username (e.g. johnsmith).</div> </div>
             </div> 
             <div class="form-field-container  non-labeled form-section" id="form-item-facebook_profile"> 
             <div id="tooltip-reference-facebook_profile" class="tooltip-reference pos-r "> 
          <div class="controls "> 
             <div class="input-group">
               <span class="input-group-addon">http://www.facebook.com/</span> 
               <input class="textinput textInput form-control" id="id_facebook_profile" maxlength="128" name="facebook_profile" placeholder="Facebook Profile" type="text" /> 
              </div> 
            </div> 
            <div class="help-block">Input your Facebook username (e.g. johnsmith).</div> </div>
              </div>
              <div class="form-field-container  non-labeled form-section" id="form-item-linkedin_profile">
              <div id="tooltip-reference-linkedin_profile" class="tooltip-reference pos-r "> 
          <div class="controls "> 
            <div class="input-group">
               <span class="input-group-addon">http://www.linkedin.com/</span> 
               <input class="textinput textInput form-control" id="id_linkedin_profile" maxlength="128" name="linkedin_profile" placeholder="LinkedIn Profile" type="text" />
               </div> 
              </div> 
              <div class="help-block">Input your LinkedIn resource id (e.g. in/johnsmith).</div> </div>
            </div> 
            <div class="form-field-container  non-labeled form-section" id="form-item-youtube_profile">
              <div id="tooltip-reference-youtube_profile" class="tooltip-reference pos-r "> 
            <div class="controls "> 
              <div class="input-group">
                 <span class="input-group-addon">http://www.youtube.com/</span> 
                 <input class="textinput textInput form-control" id="id_youtube_profile" maxlength="128" name="youtube_profile" placeholder="Youtube Profile" type="text" />
                 </div> </div> <div class="help-block">Input your Youtube username (e.g. johnsmith).</div> </div>
             </div>
</div>
</body>
</html>
