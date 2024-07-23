<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eco.aspx.cs" Inherits="Projectkz.eco" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Economy books</title>
    <link href="eco.css" rel="stylesheet" />
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
    <img src="imgs/e1.jpg" width="100%"/>
  <p class="price"><b>Economics in One</b></p>
    <p class="price"><b>Henry Hazlill</b></p>
  <p><button class="b"><a href="https://www.freebookcentre.net/business-books-download/The-Principles-of-Economics-With-Applications-to-Practical-Problems.html"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/e2.jpg" width="100%"/>
  <p class="price"><b>Economics for Everyone</b></p>
    <p class="price"><b>Jim Satnford</b></p>
  <p><button class="b"><a href="https://www.freebookcentre.net/business-books-download/Economic-Analysis.html"style="color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/e3.jpg" width="100%" />
  <p class="price"><b>Industrial Economics</b></p>
    <p class="price"><b>Kiran Motwani</b></p>
  <p><button class="b"><a href="https://www.freebookcentre.net/business-books-download/Industrial-Economics-by-University-of-Mumbai.html"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

