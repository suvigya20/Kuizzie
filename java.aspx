<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="java.aspx.cs" Inherits="Projectkz.java" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz Explore</title>
    <link href="java.css" rel="stylesheet" />
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
    <img src="imgs/j1.jpg" width="100%"/>
  <p class="price"><b>Java Teach Yourself </b></p>
    <p class="price"><b>Rogers Coderhead</b></p>
  <p><button class="b"><a href=" https://goalkicker.com/JavaBook/"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/j2.jpg" width="100%"/>
  <p class="price"><b>A Beginner's Guide</b></p>
    <p class="price"><b>James Patterson</b></p>
  <p><button class="b"><a href=" http://www.oreilly.com/programming/free/object-oriented-vs-functional-programming.csp
"style="color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/j3.jpg" width="100%" />
  <p class="price"><b>Java for Beginner's</b></p>
    <p class="price"><b>Scott Sanderson</b></p>
  <p><button class="b"><a href=" http://www.oreilly.com/programming/free/java-the-legend.csp
D"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

