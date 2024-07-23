<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cpp.aspx.cs" Inherits="Projectkz.cpp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz Explore</title>
    <link href="cpp.css" rel="stylesheet" />
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
	     <li><a href="bookhpg.aspx">Books</a></li>
		 <li><a href="contact.aspx">Feedback</a></li>
		 <li><a href="#">LogOut</a></li>

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1" />
<div class="card">
    <img src="imgs/cp1.jpg" width="100%"/>
  <p class="price"><b>C++ Programming Guide</b></p>
    <p class="price"><b>Ulla Krinz-Prinz</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/A-Complete-Guide-to-Programming-in-Cpp.html"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/cp2.jpg" width="100%"/>
  <p class="price"><b>Fundamental of C++ Programming</b></p>
    <p class="price"><b>Richard L Halterman</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/Fundamentals-of-Programming-Cpp.html"style="color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/cp3.jpg" width="100%" />
  <p class="price"><b>C++ Today</b></p>
    <p class="price"><b>John Calb</b></p>
  <p><button class="b"><a href="https://freecomputerbooks.com/Cpp-Today-The-Beast-Is-Back.html"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

