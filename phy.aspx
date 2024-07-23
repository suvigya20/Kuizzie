<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="phy.aspx.cs" Inherits="Projectkz.phy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Physics books</title>
    <link href="phy.css" rel="stylesheet" />
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
    <img src="imgs/ph1.jpg" width="100%"/>
  <p class="price"><b>Modern Physics</b></p>
    <p class="price"><b>KIP Thorne</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/735902/modern-classical-physics-optics-fluids-plasmas-elasticity-relativity-and-statistical-physics-pdf?queryID=b6befe5de523e7d42e7297b542c48a13&index=prod_BOOKS&gridPosition=20"style="color:white;">Get a Path</a></button></p>
</div>

<div class="card2">
    <img src="imgs/ph2.jpg" width="100%"/>
  <p class="price"><b>Fundamentals of Physics</b></p>
    <p class="price"><b>Jearl Walker</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/1088934/fundamentals-of-physics-mechanics-relativity-and-thermodynamics-pdf?queryID=882ea241a69770481e945a5e11664765&index=prod_BOOKS&gridPosition=6"style="color:white;">Get a Path</a></button></p>
</div>
<div class="card3">
    <img src="imgs/ph3.jpg" width="100%" />
  <p class="price"><b>Problem in Physics</b></p>
    <p class="price"><b>IE Irodov</b></p>
  <p><button class="b"><a href="https://www.perlego.com/book/1572643/computational-problems-for-physics-with-guided-solutions-using-python-pdf?queryID=b3d4b0ec3e131a816bb9aba548d33290&index=prod_BOOKS&gridPosition=33"style="color:white;">Get a Path</a></button></p>
</div>
    </form>
</body>
</html>

