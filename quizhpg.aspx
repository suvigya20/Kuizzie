<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quizhpg.aspx.cs" Inherits="Projectkz.quizhpg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz Explore</title>
    <link href="q1.css" rel="stylesheet" />
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
            <li><a href="Game.aspx">Games</a></li>
         <li><a href="fun.aspx" >Fun-facts</a></li>
	     <li><a href="bookhpg.aspx">Books</a></li>
		 <li><a href="feedback.aspx">Feedback</a></li>
		 

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1" />
<div class="card">
    <img src="imgs/cp.jpg" width="100%"/>
  <p class="price"><b>C++</b></p>
  <p><button class="b"><a href="cppquiz.aspx"style="color:white;">Attempt</a></button></p>
</div>

<div class="card2">
    <img src="imgs/j.jpg" width="100%"/>
  <p class="price"><b>Java</b></p>
  <p><button class="b"><a href="javaquiz.aspx"style="color:white;">Attempt</a></button></p>
</div>
<div class="card3">
    <img src="imgs/ati.jpg" width="100%" />
  <p class="price"><b>Artificial Intelligence</b></p>
  <p><button class="b"><a href="aiml.aspx"style="color:white;">Attempt</a></button></p>
</div>
<div class="card4">
    <img src="imgs/bio.jpg" width="100%"/>
  <p class="price"><b>Biology</b></p>
  <p><button class="b"><a href="bioquiz.aspx"style="color:white;">Attempt</a></button></p>
</div>
<div class="card5">
    <img src="imgs/chem.jpg" width="100%"/>
  <p class="price"><b>Chemistry</b></p>
  <p><button class="b"><a href="chemquiz.aspx"style="color:white;">Attempt</a></button></p>
</div>
<div class="card6">
    <img src="imgs/eco.jpg" width="100%"/>
  <p class="price"><b>Economics</b></p>
  <p><button class="b"><a href="ecoquiz.aspx"style="color:white;">Attempt</a></button></p>
</div>
  <div class="card7">
      <img src="imgs/acc.jpg" width="100%"/>
  <p class="price"><b>Accounts</b></p>
  <p><button class="b"><a href="accquiz.aspx"style="color:white;">Attempt</a></button></p>
</div>
<div class="card8">
    <img src="imgs/net.jpg" width="100%"/>
  <p class="price"><b>Networking</b></p>
  <p><button class="b"><a href="netquiz.aspx"style="color:white;">Attempt</a></button></p>
</div>
<div class="card9">
    <img src="imgs/op.jpg" width="100%"/>
  <p class="price"><b>Operating System</b></p>
  <p><button class="b"><a href="osquiz.aspx"style="color:white;">Attempt</a></button></p>
</div>
<div class="card10">
    <img src="imgs/phy.jpg" width="100%"/>
  <p class="price"><b>Physics</b></p>
  <p><button class="b"><a href="phyquiz.aspx"style="color:white;">Attempt</a></button></p>
</div> 
    </form>
</body>
</html>

