<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fp.aspx.cs" Inherits="Projectkz.fp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>forgot password</title>
    <link href="fp.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
       <div class="maindiv">
	  <nav class="navbar">
       <ul>
	     <li><a href="homeaft.aspx">Home</a></li>
		 <li><a href="MindGames.aspx" >Mind-games</a></li>
	     <li><a href="quizhpg.aspx">Quiz</a></li>
		   <li><a href="bookhpg.aspx">Books</a></li>
		 <li><a href="Feedback.aspx">Feedback</a></li>
		 <li><a href="#">LogOut</a></li>

	   </ul>
     </nav>
	
    <div class="img2">
        <img src="imgs/logo.jpg" alt="">
		<hr>
		<br>
	    <form class= "a">
	      Registered email-id : <br><br>
          <input style= "font-size:15px;" type ="text" name="email-id">
		  <p style="color:black; font-family:arial black; font-size:15px;">Password link for setting new
		  <br> password will be send to the<br> provided E-mail ID</p>
          <br>
		  <button class="f"><a href="Login.aspx"style="color:black;">Submit</a></button></p>
		  <br>
       </form>
    </div>
    </form>
</body>
</html>
