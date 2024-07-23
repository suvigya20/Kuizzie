<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acc.aspx.cs" Inherits="Projectkz.acc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accounts books</title>
    <link href="bio.css" rel="stylesheet" />
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
    <img src="imgs/a1.jpg" width="100%"/>
  <p class="price"><b>Accounting Book</b></p>
    <p class="price"><b>Wayne A</b></p>
  <p><button class="b"><a href="https://www.freebookcentre.net/business-books-download/Theory-of-Accounting-and-Control.html"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/a2.jpg" width="100%"/>
  <p class="price"><b>Accounting for Managers</b></p>
    <p class="price"><b>Paul M</b></p>
  <p><button class="b"><a href="https://www.freebookcentre.net/business-books-download/Accounting-for-Managers-by-Vardhaman-Mahaveer-Open-University.html"style="color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/a3.jpg" width="100%" />
  <p class="price"><b>Management Accounting</b></p>
    <p class="price"><b>N S Malik</b></p>
  <p><button class="b"><a href="https://www.freebookcentre.net/business-books-download/Management-Accounting-by-Institute-Of-Cost-and-Works-Accountants-Of-India.html"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

