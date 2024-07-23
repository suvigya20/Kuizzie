<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ai.aspx.cs" Inherits="Projectkz.ai" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AI books</title>
    <link href="ai.css" rel="stylesheet" />
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
		 <li><a href="MindGames.aspx" >Mind-games</a></li>
	     <li><a href="bookhpg.aspxs">Books</a></li>
		 <li><a href="contact.aspx">Feedback</a></li>
		 <li><a href="#">LogOut</a></li>

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1" />
<div class="card">
    <img src="imgs/ai1.jpg" width="100%"/>
  <p class="price"><b>Artificial Intelligence</b></p>
    <p class="price"><b>David L Poole</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/Artificial-Intelligence-Foundations-of-Computational-Agents-2nd-Edition.html"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/ai2.jpg" width="100%"/>
  <p class="price"><b>AI for big Data</b></p>
    <p class="price"><b>Anand</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/Artificial-Intelligence-for-Big-Data.html"color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/ati.jpg" width="100%" />
  <p class="price"><b>Paradigms of AI</b></p>
    <p class="price"><b>George F</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/Paradigms-of-Artificial-Intelligence-Programming-Case-Studies-in-Common-Lisp.html"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

