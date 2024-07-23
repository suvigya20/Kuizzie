<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chem.aspx.cs" Inherits="Projectkz.chem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chemistry books</title>
    <link href="chem.css" rel="stylesheet" />
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
	     <li><a href="bookhpg.aspxs">Books</a></li>
		 <li><a href="contact.aspx">Feedback</a></li>
		 <li><a href="#">LogOut</a></li>

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1" />
<div class="card">
    <img src="imgs/chem1.jpg" width="100%"/>
  <p class="price"><b>Organic Medicinal Chemistry</b></p>
    <p class="price"><b>John H Block</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/1242811/organic-chemistry-concepts-and-applications-pdf?queryID=f77183dd218dddf7d9e43ad93cb3b104&index=prod_BOOKS&gridPosition=2"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/chem2.jpg" width="100%"/>
  <p class="price"><b>Physical Inorganic Chemistry</b></p>
    <p class="price"><b>SFA Kettle</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/1353571/bioinorganic-chemistry-a-short-course-pdf?queryID=e1604bbb6ec2b6837cf254b4b765894e&index=prod_BOOKS&gridPosition=68"color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/chem3.jpg" width="100%" />
  <p class="price"><b>Green Chemistry</b></p>
    <p class="price"><b>Reiner Roldhan</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/1319761/green-chemistry-principles-and-case-studies-pdf?queryID=4fdae921018cb0e15cf0ef60fb645353&index=prod_BOOKS&gridPosition=19"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

