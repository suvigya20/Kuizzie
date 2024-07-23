<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bio.aspx.cs" Inherits="Projectkz.bio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bio books</title>
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
    <img src="imgs/bi1.jpg" width="100%"/>
  <p class="price"><b>Encyclopedia of Biology</b></p>
    <p class="price"><b>Don Rittner</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/1812746/biology-a-selfteaching-guide-pdf?queryID=ff7ccb5dd3a90cd0a5ad07ba5744a999&index=prod_BOOKS&gridPosition=2"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/bi2.jpg" width="100%"/>
  <p class="price"><b>Biology</b></p>
    <p class="price"><b>campbell</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/1584638/molecular-cell-biology-for-dummies-pdf?queryID=a0512e0d65b97a10c7640be1faf949a3&index=prod_BOOKS&gridPosition=1"style="color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/bi3.jpg" width="100%" />
  <p class="price"><b>Essentials of Anatomy and Physiology</b></p>
    <p class="price"><b>Valerie of Scanlon</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/671423/human-biology-pdf?queryID=48930229031e696ffe0b157f7d668ca3&index=prod_BOOKS&gridPosition=9"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

