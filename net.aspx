<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="net.aspx.cs" Inherits="Projectkz.net" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Networking books</title>
    <link href="net.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 21%;
            height: 156px; 
            border-radius:50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="maindiv">
	  <nav class="navbar">
       <ul>
	     <li><a href="homeaft.aspx">Home</a></li>
           <li><a href="quizhpg.aspx">Quiz</a></li>
		 <li><a href="MindGames.aspx" >Mind-games</a></li>
            <li><a href="fun.aspx" >Fun-Facts</a></li>
	     <li><a href="bookhpg.aspxs">Books</a></li>
		 <li><a href="contact.aspx">Feedback</a></li>
		 <li><a href="#">LogOut</a></li>

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1" />
<div class="card">
    <img src="imgs/n3.jpg" width="100%"/>
  <p class="price"><b>Introduction to Networking</b></p>
    <p class="price"><b>Charles L</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/Introduction-to-Networking-How-the-Internet-Works.html"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/n2.jpg" width="100%"/>
  <p class="price"><b>An introduction to Networking </b></p>
    <p class="price"><b>Peter L</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/An-Introduction-to-Computer-Networks-by-Peter-Dordal.html"style="color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/net.jpg" width="100%" />
  <p class="price"><b>Networks from Scratch</b></p>
    <p class="price"><b>Seth Archer</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/Computer-Networks-From-Scratch.html"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

