<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookhpg.aspx.cs" Inherits="Projectkz.bookhpg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Books Explore</title>
    <link href="b1.css" rel="stylesheet" />
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
	     <li><a href="quizhpg.aspx">Quiz</a></li>
            <li><a href="Game.aspx">Games</a></li>
		 <li><a href="feedback.aspx">Feedback</a></li>

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1" />
<div class="card">
    <img src="imgs/cp.jpg" width="100%"/>
  <p class="price"><b>C++</b></p>
  <p><button class="b"><a href="cpp.aspx"style="color:white;">Get a Book</a></button></p>
</div>

<div class="card2">
    <img src="imgs/j.jpg" width="100%"/>
  <p class="price"><b>Java</b></p>
  <p><button class="b"><a href="java.aspx"style="color:white;">Get a Book</a></button></p>
</div>
<div class="card3">
    <img src="imgs/ati.jpg" width="100%" />
  <p class="price"><b>Artificial Intelligence</b></p>
  <p><button class="b"><a href="ai.aspx"style="color:white;">Get a Book</a></button></p>
</div>
<div class="card4">
    <img src="imgs/bio.jpg" width="100%"/>
  <p class="price"><b>Biology</b></p>
  <p><button class="b"><a href="bio.aspx"style="color:white;">Get a Book</a></button></p>
</div>
<div class="card5">
    <img src="imgs/chem.jpg" width="100%"/>
  <p class="price"><b>Chemistry</b></p>
  <p><button class="b"><a href="chem.aspx"style="color:white;">Get a Book</a></button></p>
</div>
<div class="card6">
    <img src="imgs/eco.jpg" width="100%"/>
  <p class="price"><b>Economics</b></p>
  <p><button class="b"><a href="eco.aspx"style="color:white;">Get a Book</a></button></p>
</div>
  <div class="card7">
      <img src="imgs/acc.jpg" width="100%"/>
  <p class="price"><b>Accounts</b></p>
  <p><button class="b"><a href="acc.aspx"style="color:white;">Get a Book</a></button></p>
</div>
<div class="card8">
    <img src="imgs/net.jpg" width="100%"/>
  <p class="price"><b>Networking</b></p>
  <p><button class="b"><a href="net.aspx"style="color:white;">Get a Book</a></button></p>
</div>
<div class="card9">
    <img src="imgs/op.jpg" width="100%"/>
  <p class="price"><b>Operating System</b></p>
  <p><button class="b"><a href="op.aspx"style="color:white;">Get a Book</a></button></p>
</div>
<div class="card10">
    <img src="imgs/phy.jpg" width="100%"/>
  <p class="price"><b>Physics</b></p>
  <p><button class="b"><a href="phy.aspx"style="color:white;">Get a Book</a></button></p>
</div> 
            
</header>
    </form>
</body>
</html>

