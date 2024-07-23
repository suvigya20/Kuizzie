<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="op.aspx.cs" Inherits="Projectkz.op" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> OS books</title>
    <link href="op.css" rel="stylesheet" />
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
    <img src="imgs/o1.jpg" width="100%"/>
  <p class="price"><b>Modern Operating Systems</b></p>
    <p class="price"><b>Andrew S</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/3866216/operating-systems-in-depth-design-and-programming-pdf?queryID=1ffcc07e3a1a2347ffc0551bdb169b34&index=prod_BOOKS&gridPosition=37"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/o2.jpg" width="100%"/>
  <p class="price"><b>Linux Command Line</b></p>
    <p class="price"><b>Ray Yas</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/3783306/linux-the-ultimate-guide-pdf?queryID=268f3071ba5d47d3ecf2f607e0d7fad4&index=prod_BOOKS&gridPosition=2"style="color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/net.jpg" width="100%" />
  <p class="price"><b>Robot OS</b></p>
    <p class="price"><b>Lentin Joseph</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/3008214/introduction-to-operating-systems-behind-the-desktop-pdf?queryID=0bb9778e759f2cf5699cb5d824db5963&index=prod_BOOKS&gridPosition=1"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

